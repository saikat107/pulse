module CBOR.Pulse
include CBOR.Spec.Constants
include CBOR.Pulse.Extern
open Pulse.Lib.Pervasives
open Pulse.Lib.Stick

module Cbor = CBOR.Spec
module A = Pulse.Lib.Array
module SZ = FStar.SizeT

assume val elim_stick0
  (_: unit)
  (#hyp #concl: vprop)
: stt_ghost unit emp_inames
    ((hyp @==> concl) ** hyp)
    (fun _ -> concl)

assume val stick_refl0
    (p: vprop)
: stt_ghost unit emp_inames
    (emp)
    (fun _ -> p @==> p)
assume
val stick_consume_l
    (_: unit)
    (#p #q #r: vprop)
: stt_ghost unit emp_inames
    (p ** ((p ** q) @==> r))
    (fun _ -> q @==> r)

assume
val stick_consume_r
    (_: unit)
    (#q #p #r: vprop)
: stt_ghost unit emp_inames
    (p ** ((q ** p) @==> r))
    (fun _ -> q @==> r)

assume
val stick_trans
    (_: unit)
    (#p #q #r: vprop)
: stt_ghost unit emp_inames
    ((p @==> q) ** (q @==> r))
    (fun _ -> p @==> r)

assume
val rewrite_with_implies
    (p q: vprop)
: stt_ghost unit emp_inames
    (p ** pure (p == q))
    (fun _ -> q ** (q @==> p))

assume
val stick_weaken_hyp_r
    (hl hr #hr' #c: vprop)
: stt_ghost unit emp_inames
    ((hr' @==> hr) ** ((hl ** hr) @==> c))
    (fun _ -> (hl ** hr') @==> c)

assume
val stick_weaken_hyp_l
    (hl hr #hl' #c: vprop)
: stt_ghost unit emp_inames
    ((hl' @==> hl) ** ((hl ** hr) @==> c))
    (fun _ -> (hl' ** hr) @==> c)

assume Fits_u64 : squash (SZ.fits_u64)

module U8 = FStar.UInt8
module U64 = FStar.UInt64
module I16 = FStar.Int16

inline_for_extraction noextract [@@noextract_to "krml"]
let impl_compare_u8
    (x1 x2: U8.t)
: Tot I16.t
= if x1 = x2
  then 0s
  else if x1 `U8.lt` x2
  then -1s
  else 1s

let impl_compare_u8_correct
    (x1 x2: U8.t)
: Lemma
    (I16.v (impl_compare_u8 x1 x2) == Cbor.int_compare (U8.v x1) (U8.v x2))
    [SMTPat (impl_compare_u8 x1 x2)]
= ()

inline_for_extraction noextract [@@noextract_to "krml"]
let impl_compare_u64
    (x1 x2: U64.t)
: Tot I16.t
= if x1 = x2
  then 0s
  else if x1 `U64.lt` x2
  then -1s
  else 1s

let impl_compare_u64_correct
    (x1 x2: U64.t)
: Lemma
    (I16.v (impl_compare_u64 x1 x2) == Cbor.int_compare (U64.v x1) (U64.v x2))
    [SMTPat (impl_compare_u64 x1 x2)]
= ()


```pulse
fn byte_array_compare
  (sz: SZ.t)
  (a1: A.larray U8.t (SZ.v sz))
  (a2: A.larray U8.t (SZ.v sz))
  (#p1: perm)
  (#p2: perm)
  (#va1: Ghost.erased (Seq.seq U8.t))
  (#va2: Ghost.erased (Seq.seq U8.t))
requires
    (A.pts_to a1 #p1 va1 ** A.pts_to a2 #p2 va2)
returns res: I16.t
ensures
        A.pts_to a1 #p1 va1 ** A.pts_to a2 #p2 va2 **
        pure (I16.v res == Cbor.bytes_lex_compare va1 va2)
{
    A.pts_to_len a1;
    A.pts_to_len a2;
    let mut pi = 0sz;
    let mut pres = 0s;
    let prf1 : squash (Ghost.reveal va1 `Seq.equal` Seq.slice va1 0 (SZ.v sz)) = ();
    let prf2 : squash (Ghost.reveal va2 `Seq.equal` Seq.slice va2 0 (SZ.v sz)) = ();
    while (let i = !pi; let res = !pres; ((i `SZ.lt` sz) && (res = 0s)))
    invariant cont . exists i res .
        A.pts_to a1 #p1 va1 ** A.pts_to a2 #p2 va2 **
        pts_to pi i ** pts_to pres res **
        pure (
            SZ.v i <= SZ.v sz /\
            Cbor.bytes_lex_compare va1 va2 == (
                if res = 0s
                then Cbor.bytes_lex_compare (Seq.slice va1 (SZ.v i) (SZ.v sz)) (Seq.slice va2 (SZ.v i) (SZ.v sz))
                else I16.v res
            ) /\
            (cont == (SZ.v i < SZ.v sz && res = 0s))
        )
    {
        let i = !pi;
        let x1 = a1.(i);
        let x2 = a2.(i);
        let res = impl_compare_u8 x1 x2;
        pi := i `SZ.add` 1sz;
        pres := res;
    };
    !pres
}
```

inline_for_extraction noextract [@@noextract_to "krml"]
let i16_neq_0 (x: I16.t) : Tot bool = x <> 0s // FIXME: WHY WHY WHY?

```pulse
fn rec cbor_compare
  (a1: cbor)
  (a2: cbor)
  (#p1: perm)
  (#p2: perm)
  (#v1: Ghost.erased Cbor.raw_data_item)
  (#v2: Ghost.erased Cbor.raw_data_item)
requires
    (raw_data_item_match p1 a1 v1 ** raw_data_item_match p2 a2 v2)
returns res: I16.t
ensures
    (raw_data_item_match p1 a1 v1 ** raw_data_item_match p2 a2 v2 ** pure (
      ((I16.v res <: int) == Cbor.cbor_compare v1 v2)
    ))
{
    let test = cbor_compare_aux a1 a2;
    if (test = -1s || test = 0s || test = 1s) {
        test
    } else {
        let ty1 = cbor_get_major_type a1;
        let ty2 = cbor_get_major_type a2;
        let c = impl_compare_u8 ty1 ty2;
        if (i16_neq_0 c)
        {
            c
        } else if (ty1 = major_type_uint64 || ty1 = major_type_neg_int64) {
            let i1 = destr_cbor_int64 a1;
            let i2 = destr_cbor_int64 a2;
            (impl_compare_u64 i1.cbor_int_value i2.cbor_int_value)
        } else if (ty1 = major_type_simple_value) {
            let i1 = destr_cbor_simple_value a1;
            let i2 = destr_cbor_simple_value a2;
            (impl_compare_u8 i1 i2)
        } else if (ty1 = major_type_byte_string || ty1 = major_type_text_string) {
            let s1 = destr_cbor_string a1;
            let s2 = destr_cbor_string a2;
            let c = impl_compare_u64 s1.cbor_string_length s2.cbor_string_length;
            if (i16_neq_0 c) {
                elim_stick0 ();
                elim_stick0 ();
                c
            } else {
                A.pts_to_len s1.cbor_string_payload;
                A.pts_to_len s2.cbor_string_payload;
                let test = byte_array_compare (SZ.uint64_to_sizet s1.cbor_string_length) s1.cbor_string_payload s2.cbor_string_payload;
                elim_stick0 ();
                elim_stick0 ();
                test
            }
        } else if (ty1 = major_type_array) {
            let len1 = cbor_array_length a1;
            let len2 = cbor_array_length a2;
            let c = impl_compare_u64 len1 len2;
            if (i16_neq_0 c) {
                c
            } else {
                let i10 = cbor_array_iterator_init a1;
                let i20 = cbor_array_iterator_init a2;
                let done0 = cbor_array_iterator_is_done i10;
                let mut pi1 = i10;
                let mut pi2 = i20;
                let mut pdone = done0;
                let mut pres = 0s;
                while (
                    let done = !pdone;
                    let res = !pres;
                    (res = 0s && not done)
                )
                invariant cont . exists i1 i2 done res l1 l2 .
                    pts_to pi1 i1 ** pts_to pi2 i2 ** pts_to pdone done ** pts_to pres res **
                    cbor_array_iterator_match p1 i1 l1 **
                    cbor_array_iterator_match p2 i2 l2 **
                    `@(cbor_array_iterator_match p1 i1 l1 @==> raw_data_item_match p1 a1 v1) **
                    `@(cbor_array_iterator_match p2 i2 l2 @==> raw_data_item_match p2 a2 v2) **
                    pure (
                        List.Tot.length l1 == List.Tot.length l2 /\
                        Cbor.cbor_compare v1 v2 == (if res = 0s then Cbor.cbor_compare_array l1 l2 else I16.v res) /\
                        (res == 0s ==> done == Nil? l1) /\
                        cont == (Cons? l1 && res = 0s)
                    )
                {
                    let x1 = cbor_array_iterator_next pi1;
                    with v1' . assert (raw_data_item_match p1 x1 v1');
                    let x2 = cbor_array_iterator_next pi2;
                    with v2' . assert (raw_data_item_match p2 x2 v2');
                    let res = cbor_compare x1 x2;
                    with gi1' l1' . assert (pts_to pi1 gi1' ** cbor_array_iterator_match p1 gi1' l1');
                    with gi2' l2' . assert (pts_to pi2 gi2' ** cbor_array_iterator_match p2 gi2' l2');
                    stick_consume_l ()
                        #(raw_data_item_match p1 x1 v1')
                        #(cbor_array_iterator_match p1 gi1' l1');
                    stick_consume_l ()
                        #(raw_data_item_match p2 x2 v2')
                        #(cbor_array_iterator_match p2 gi2' l2');
                    stick_trans ()
                        #(cbor_array_iterator_match p1 gi1' l1');
                    stick_trans ()
                        #(cbor_array_iterator_match p2 gi2' l2');
                    if (res = 0s) {
                        let i1 = !pi1;
                        rewrite each gi1' as i1;
                        let done = cbor_array_iterator_is_done i1;
                        pdone := done
                    } else {
                        pres := res
                    }
                };
                elim_stick0 ();
                elim_stick0 ();
                !pres
            }
        } else if (ty1 = major_type_tagged) {
            let tg1 = destr_cbor_tagged a1;
            let tg2 = destr_cbor_tagged a2;
            let c = impl_compare_u64 tg1.cbor_tagged_tag tg2.cbor_tagged_tag;
            if (i16_neq_0 c) {
                elim_stick0 ();
                elim_stick0 ();
                c
            } else {
                with v1' . assert (raw_data_item_match p1 tg1.cbor_tagged_payload v1');
                with v2' . assert (raw_data_item_match p2 tg2.cbor_tagged_payload v2');
                let test = cbor_compare tg1.cbor_tagged_payload tg2.cbor_tagged_payload;
                elim_stick0 ();
                elim_stick0 ();
                test
            }
        } else if (ty1 = major_type_map) {
            let len1 = cbor_map_length a1;
            let len2 = cbor_map_length a2;
            let c = impl_compare_u64 len1 len2;
            if (i16_neq_0 c) {
                c
            } else {
                let i10 = cbor_map_iterator_init a1;
                let i20 = cbor_map_iterator_init a2;
                let done0 = cbor_map_iterator_is_done i10;
                let mut pi1 = i10;
                let mut pi2 = i20;
                let mut pdone = done0;
                let mut pres = 0s;
                while (
                    let done = !pdone;
                    let res = !pres;
                    (res = 0s && not done)
                )
                invariant cont . exists i1 i2 done res l1 l2 .
                    pts_to pi1 i1 ** pts_to pi2 i2 ** pts_to pdone done ** pts_to pres res **
                    cbor_map_iterator_match p1 i1 l1 **
                    cbor_map_iterator_match p2 i2 l2 **
                    `@(cbor_map_iterator_match p1 i1 l1 @==> raw_data_item_match p1 a1 v1) **
                    `@(cbor_map_iterator_match p2 i2 l2 @==> raw_data_item_match p2 a2 v2) **
                    pure (
                        List.Tot.length l1 == List.Tot.length l2 /\
                        (Cbor.cbor_compare v1 v2 == (if res = 0s then Cbor.cbor_compare_map l1 l2 else I16.v res)) /\
                        (res == 0s ==> done == Nil? l1) /\
                        cont == (Cons? l1 && res = 0s)
                    )
                {
                    let x1 = cbor_map_iterator_next pi1;
                    with v1' . assert (raw_data_item_map_entry_match p1 x1 v1');
                    with gi1' l1' . assert (pts_to pi1 gi1' ** cbor_map_iterator_match p1 gi1' l1');
                    stick_trans ()
                        #(raw_data_item_map_entry_match p1 x1 v1' ** cbor_map_iterator_match p1 gi1' l1');
                    let x2 = cbor_map_iterator_next pi2;
                    with v2' . assert (raw_data_item_map_entry_match p2 x2 v2');
                    with gi2' l2' . assert (pts_to pi2 gi2' ** cbor_map_iterator_match p2 gi2' l2');
                    stick_trans ()
                        #(raw_data_item_map_entry_match p2 x2 v2' ** cbor_map_iterator_match p2 gi2' l2');
                    unfold (raw_data_item_map_entry_match p1 x1 v1');
                    unfold (raw_data_item_map_entry_match p2 x2 v2');
                    let test = cbor_compare (cbor_map_entry_key x1) (cbor_map_entry_key x2);
                    if (test = 0s) ensures exists res done . // FIXME: HOW HOW HOW can I frame some things out?
                        pts_to pi1 gi1' ** pts_to pi2 gi2' ** pts_to pdone done **
                        raw_data_item_match p1 (cbor_map_entry_key x1) (fstp v1') **
                        raw_data_item_match p2 (cbor_map_entry_key x2) (fstp v2') **
                        raw_data_item_match p1 (cbor_map_entry_value x1) (sndp v1') **
                        raw_data_item_match p2 (cbor_map_entry_value x2) (sndp v2') **
                        cbor_map_iterator_match p1 gi1' l1' **
                        cbor_map_iterator_match p2 gi2' l2' **
                        `@((raw_data_item_map_entry_match p1 x1 v1' ** cbor_map_iterator_match p1 gi1' l1') @==> raw_data_item_match p1 a1 v1) **
                        `@((raw_data_item_map_entry_match p2 x2 v2' ** cbor_map_iterator_match p2 gi2' l2') @==> raw_data_item_match p2 a2 v2) **
                        pts_to pres res ** pure ((I16.v res <: int) == (if Cbor.cbor_compare (fstp v1') (fstp v2') <> 0 then Cbor.cbor_compare (fstp v1') (fstp v2') else Cbor.cbor_compare (sndp v1') (sndp v2')))
                    {
                        let test = cbor_compare (cbor_map_entry_value x1) (cbor_map_entry_value x2);
                        pres := test;
                    } else {
                        pres := test;
                    };
                    fold (raw_data_item_map_entry_match p1 x1 v1');
                    fold (raw_data_item_map_entry_match p2 x2 v2');
                    stick_consume_l ()
                        #(raw_data_item_map_entry_match p1 x1 v1')
                        #(cbor_map_iterator_match p1 gi1' l1');
                    stick_consume_l ()
                        #(raw_data_item_map_entry_match p2 x2 v2')
                        #(cbor_map_iterator_match p2 gi2' l2');
                    let res = !pres;
                    if (res = 0s) {
                        let i1 = !pi1;
                        rewrite each gi1' as i1;
                        let done = cbor_map_iterator_is_done i1;
                        pdone := done
                    }
                };
                elim_stick0 ();
                elim_stick0 ();
                !pres
            }
        } else {
            // unreachable
            let unused : squash False = ();
            2s
        }
    }
}

```

```pulse
fn rec cbor_is_equal
  (a1: cbor)
  (a2: cbor)
  (#p1: perm)
  (#p2: perm)
  (#v1: Ghost.erased Cbor.raw_data_item)
  (#v2: Ghost.erased Cbor.raw_data_item)
requires
    (raw_data_item_match p1 a1 v1 ** raw_data_item_match p2 a2 v2)
returns res: bool
ensures
    (raw_data_item_match p1 a1 v1 ** raw_data_item_match p2 a2 v2 ** pure (
      (res == true <==> v1 == v2)
    ))
{
    Cbor.cbor_compare_equal v1 v2;
    let test = cbor_compare a1 a2;
    (test = 0s)
}
```

noeq
type cbor_map_get_t =
| Found of cbor
| NotFound

let rec list_ghost_assoc
  (#key: Type)
  (#value: Type)
  (k: key)
  (m: list (key & value))
: GTot (option value)
  (decreases m)
= match m with
  | [] -> None
  | (k', v') :: m' ->
    if FStar.StrongExcludedMiddle.strong_excluded_middle (k == k')
    then Some v'
    else list_ghost_assoc k m'

let cbor_map_get_post_not_found
  (p: perm)
  (vkey: Cbor.raw_data_item)
  (vmap: Cbor.raw_data_item)
  (map: cbor)
: Tot vprop
= raw_data_item_match p map vmap ** pure (
    Cbor.Map? vmap /\
    list_ghost_assoc vkey (Cbor.Map?.v vmap) == None
  )

let cbor_map_get_post_found
  (p: perm)
  (vkey: Cbor.raw_data_item)
  (vmap: Cbor.raw_data_item)
  (map: cbor)
  (value: cbor)
: Tot vprop
= exists_ (fun vvalue ->
    raw_data_item_match p value vvalue **
    (raw_data_item_match p value vvalue @==> raw_data_item_match p map vmap) **
    pure (
      Cbor.Map? vmap /\
      list_ghost_assoc vkey (Cbor.Map?.v vmap) == Some vvalue
  ))

let cbor_map_get_post
  (p: perm)
  (vkey: Cbor.raw_data_item)
  (vmap: Cbor.raw_data_item)
  (map: cbor)
  (res: cbor_map_get_t)
: Tot vprop
= match res with
  | NotFound -> cbor_map_get_post_not_found p vkey vmap map
  | Found value -> cbor_map_get_post_found p vkey vmap map value

let cbor_map_get_invariant
  (pmap: perm)
  (vkey: Ghost.erased Cbor.raw_data_item)
  (vmap: Ghost.erased Cbor.raw_data_item)
  (map: cbor)
  (res: cbor_map_get_t)
  (i: cbor_map_iterator_t)
  (l: list (Cbor.raw_data_item & Cbor.raw_data_item))
: Tot vprop
= match res with
  | Found value -> cbor_map_get_post_found pmap vkey vmap map value ** pure (
      Cbor.Map? vmap /\
      Some? (list_ghost_assoc (Ghost.reveal vkey) (Cbor.Map?.v vmap))
    )
  | NotFound ->
    cbor_map_iterator_match pmap i l **
    (cbor_map_iterator_match pmap i l @==> raw_data_item_match pmap map vmap) **
    pure (
        Cbor.Map? vmap /\
        list_ghost_assoc (Ghost.reveal vkey) (Cbor.Map?.v vmap) ==
          list_ghost_assoc (Ghost.reveal vkey) l
    )

```pulse
ghost
fn cbor_map_get_invariant_end
  (pmap: perm)
  (vkey: Ghost.erased Cbor.raw_data_item)
  (vmap: Ghost.erased Cbor.raw_data_item)
  (map: cbor)
  (gres: Ghost.erased cbor_map_get_t)
  (res: cbor_map_get_t)
  (i: Ghost.erased cbor_map_iterator_t)
  (l: Ghost.erased (list (Cbor.raw_data_item & Cbor.raw_data_item)))
requires
    cbor_map_get_invariant pmap vkey vmap map gres i l **
    pure (
        (Nil? l \/ Found? gres) /\
        res == Ghost.reveal gres
    )
ensures
    cbor_map_get_post pmap vkey vmap map res ** pure (
      Cbor.Map? vmap /\
      Found? res == Some? (list_ghost_assoc (Ghost.reveal vkey) (Cbor.Map?.v vmap))
    )
{
    match res
    {
        NotFound ->
        {
            rewrite (cbor_map_get_invariant pmap vkey vmap map gres i l) // FIXME: WHY WHY WHY?
                as (cbor_map_get_invariant pmap vkey vmap map NotFound i l);
            unfold (cbor_map_get_invariant pmap vkey vmap map NotFound i l);
            elim_stick0 ();
            fold (cbor_map_get_post_not_found pmap vkey vmap map);
            fold (cbor_map_get_post pmap vkey vmap map NotFound)
        }
        Found value ->
        {
            rewrite (cbor_map_get_invariant pmap vkey vmap map gres i l) // FIXME: WHY WHY WHY?
                as (cbor_map_get_invariant pmap vkey vmap map (Found value) i l);
            unfold (cbor_map_get_invariant pmap vkey vmap map (Found value) i l);
            fold (cbor_map_get_post pmap vkey vmap map (Found value))
        }
    }
}
```

```pulse
fn cbor_map_get
  (key: cbor)
  (map: cbor)
  (#pkey: perm)
  (#pmap: perm)
  (#vkey: Ghost.erased Cbor.raw_data_item)
  (#vmap: Ghost.erased Cbor.raw_data_item)
requires
    (raw_data_item_match pkey key vkey ** raw_data_item_match pmap map vmap ** pure (
      Cbor.Map? vmap
    ))
returns res: cbor_map_get_t
ensures
    (raw_data_item_match pkey key vkey ** cbor_map_get_post pmap vkey vmap map res ** pure (
      Cbor.Map? vmap /\
      Found? res == Some? (list_ghost_assoc (Ghost.reveal vkey) (Cbor.Map?.v vmap))
    ))
{
    let i0 = cbor_map_iterator_init map;
    with l0 . assert (cbor_map_iterator_match pmap i0 l0);
    let done0 = cbor_map_iterator_is_done i0;
    let mut pi = i0;
    let mut pres = NotFound;
    let mut pdone = done0;
    fold (cbor_map_get_invariant pmap vkey vmap map NotFound i0 l0);
    while (
        with gres i l . assert (pts_to pres gres ** pts_to pi i ** cbor_map_get_invariant pmap vkey vmap map gres i l);
        let res = !pres;
        let done = !pdone;
        assert (pts_to pres gres ** cbor_map_get_invariant pmap vkey vmap map gres i l); // FIXME: WHY WHY WHY?
        not (done || Found? res)
    )
    invariant cont . exists (done: bool) (res: cbor_map_get_t) (i: cbor_map_iterator_t) (l: list (Cbor.raw_data_item & Cbor.raw_data_item)) .
        raw_data_item_match pkey key vkey ** 
        pts_to pdone done **
        pts_to pi i **
        pts_to pres res **
        cbor_map_get_invariant pmap vkey vmap map res i l **
        pure (
            done == Nil? l /\
            cont == not (done || Found? res)
        )
    {
        with gres gi l . assert (pts_to pres gres ** cbor_map_get_invariant pmap vkey vmap map gres gi l);
        rewrite each gres as NotFound;
        unfold (cbor_map_get_invariant pmap vkey vmap map NotFound gi l);
        let x = cbor_map_iterator_next pi;
        stick_trans ();
        with gi' l'. assert (cbor_map_iterator_match pmap gi' l');
        with vx . assert (raw_data_item_map_entry_match pmap x vx);
        rewrite_with_implies
            (raw_data_item_map_entry_match pmap x vx)
            (raw_data_item_match pmap (cbor_map_entry_key x) (fstp vx) **
                raw_data_item_match pmap (cbor_map_entry_value x) (sndp vx)
            );
        let test = cbor_is_equal key (cbor_map_entry_key x);
        if (test) {
            stick_consume_l ()
                #(raw_data_item_match pmap (cbor_map_entry_key x) (fstp vx))
                #(raw_data_item_match pmap (cbor_map_entry_value x) (sndp vx));
            stick_weaken_hyp_l
                (raw_data_item_map_entry_match pmap x vx)
                (cbor_map_iterator_match pmap gi' l');
            stick_consume_r ()
                #(raw_data_item_match pmap (cbor_map_entry_value x) (sndp vx))
                #(cbor_map_iterator_match pmap gi' l');
            pres := Found (cbor_map_entry_value x);
            fold (cbor_map_get_post_found pmap vkey vmap map (cbor_map_entry_value x));
            fold (cbor_map_get_invariant pmap vkey vmap map (Found (cbor_map_entry_value x)) gi' l)
        } else {
            elim_stick0 ()
                #(raw_data_item_match pmap (cbor_map_entry_key x) (fstp vx) ** raw_data_item_match pmap (cbor_map_entry_value x) (sndp vx));
            stick_consume_l ()
                #(raw_data_item_map_entry_match pmap x vx)
                #(cbor_map_iterator_match pmap gi' l');
            let i' = !pi;
            rewrite each gi' as i';
            let done = cbor_map_iterator_is_done i';
            pdone := done;
            fold (cbor_map_get_invariant pmap vkey vmap map NotFound i' l')
        }
    };
    with gres i l . assert (pts_to pres gres ** cbor_map_get_invariant pmap vkey vmap map gres i l);
    let res = !pres;
    cbor_map_get_invariant_end pmap vkey vmap map gres res i l;
    res
}
```
