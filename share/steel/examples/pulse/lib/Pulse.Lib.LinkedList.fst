module Pulse.Lib.LinkedList
open Pulse.Lib.Pervasives
module T = FStar.Tactics

noeq
type node (t:Type0) = {
    head : t;
    tail : llist t;
}

and node_ptr (t:Type0) = ref (node t)

//A nullable pointer to a node
and llist (t:Type0) = option (node_ptr t)

let mk_node #t (hd:t) (tl:llist t) : Tot (node t)
  = {head=hd; tail=tl}

let rec is_list #t (x:llist t) (l:list t)
  : Tot vprop (decreases l)
  = match l with
    | [] -> pure (x == None)
    | head::tl -> 
      exists* (v:node_ptr t) (tail:llist t).
        pure (x == Some v) **
        pts_to v (mk_node head tail) **
        is_list tail tl
    


let is_list_cases #t (x:llist t) (l:list t)
  : Tot vprop 
  = match x with
    | None -> pure (l == [])
    | Some v -> 
      exists* (n:node t) (tl:list t).
        pts_to v n **
        pure (l == n.head::tl) **
        is_list n.tail tl


```pulse
ghost
fn elim_is_list_nil (#t:Type0) (x:llist t) 
  requires is_list x []
  ensures pure(x == None)
{
   unfold (is_list x [])
}
```

```pulse
ghost
fn intro_is_list_nil (#t:Type0) (x:(x:llist t { x == None }))
    requires emp
    ensures is_list x []
{
    fold (is_list x [])
}
```

module T = FStar.Tactics

let prop_squash_idem (p:prop)
  : Tot (p == squash p)
  = admit()
//   FStar.PropositionalExtensionality.apply p (squash p)


#push-options "--no_tactics"
let rewrite_by (p:vprop) (q:vprop) 
               (t:unit -> T.Tac unit)
               (_:unit { T.with_tactic t (vprop_equiv p q) })
  : stt_ghost unit emp_inames p (fun _ -> q)
  = let pf : squash (vprop_equiv p q) = T.by_tactic_seman t (vprop_equiv p q) in
    prop_squash_idem (vprop_equiv p q);
    rewrite p q (coerce_eq () pf)
#pop-options


let norm_tac (_:unit) : T.Tac unit =
    T.mapply (`vprop_equiv_refl)
    
```pulse
ghost
fn elim_is_list_cons (#t:Type0) (x:llist t) (head:t) (tl:list t)
  requires is_list x (head::tl)
  ensures exists* (v:node_ptr t) (tail:llist t).
            pure (x == Some v) **
            pts_to v (mk_node head tail) **
            is_list tail tl
{

    rewrite_by (is_list x (head::tl))
               (exists* (v:node_ptr t)
                        (tail:llist t).
                    pure (x == Some v) **
                    pts_to v (mk_node head tail) **
                    is_list tail tl)
                norm_tac
                ()
}
```

```pulse
ghost
fn intro_is_list_cons (#t:Type0) (x:llist t) (v:node_ptr t) (#node:node t) (#tl:list t)
    requires pts_to v node ** is_list node.tail tl ** pure (x == Some v)
    ensures is_list x (node.head::tl)
{
    rewrite (pts_to v node) as (pts_to v (mk_node node.head node.tail));
    rewrite_by
         (exists* (v:node_ptr t) (tail:llist t).
                pure (x == Some v) **
                pts_to v (mk_node node.head tail) **
                is_list tail tl)
        (is_list x (node.head::tl))
        norm_tac
        ()
}
```
let elim_false (p:vprop) : stt_ghost unit emp_inames (pure False) (fun _ -> p) = Pulse.Lib.Core.elim_false unit (fun _ -> p)
let drop (p:vprop) : stt_ghost unit emp_inames p (fun _ -> emp) = admit()

// #push-options "--ext 'pulse:env_on_err'"
```pulse
ghost
fn cases_of_is_list (#t:Type) (x:llist t) (l:list t)
    requires is_list x l
    ensures is_list_cases x l
{
    match l {
        Nil -> { 
            rewrite (is_list x l) as (is_list x []);
            elim_is_list_nil x;
            rewrite (pure (l == [])) as (is_list_cases x l);
        }
        Cons head tl -> { 
            rewrite (is_list x l) as (is_list x (head::tl));
            elim_is_list_cons x head tl;
            assert pure (Some? x);
            match x {
                None -> {  
                    elim_false (is_list_cases x l);
                    with tail. assert(is_list tail tl);
                    drop (is_list tail tl);
                    with v. assert (pts_to v (mk_node head tail));
                    drop (pts_to v (mk_node head tail));
                }
                Some v -> { 
                    with tail. assert (is_list #t tail tl);
                    with w. assert (pts_to w (mk_node head tail));
                    rewrite (pts_to w (mk_node head tail)) as
                            (pts_to v (mk_node head tail));
                    rewrite (is_list tail tl) as 
                            (is_list (mk_node head tail).tail tl);
                    fold (is_list_cases (Some v) l);
                    rewrite (is_list_cases (Some v) l) as
                            (is_list_cases x l)
                }
            }
        }
    }
}
```

```pulse
ghost
fn is_list_of_cases (#t:Type) (x:llist t) (l:list t)
    requires is_list_cases x l
    ensures is_list x l
{
    match x {
        None -> { 
            rewrite (is_list_cases x l) as pure (l==[]);
            rewrite (pure (x == None)) as (is_list x []);
        }
        Some vl -> {
            rewrite (is_list_cases x l) as (is_list_cases (Some vl) l);
            unfold (is_list_cases (Some vl) l);
            intro_is_list_cons x vl;
        }
    }
}
```


```pulse
ghost
fn is_list_cases_none (#t:Type) (x:llist t) (#l:list t)
    requires is_list x l ** pure (x == None)
    ensures is_list x l ** pure (l == [])
{
    cases_of_is_list x l;
    rewrite (is_list_cases x l) as pure (l == []);
    intro_is_list_nil x;
}
```


```pulse
ghost
fn is_list_cases_some (#t:Type) (x:llist t) (v:node_ptr t) (#l:list t) 
    requires is_list x l ** pure (x == Some v)
    ensures exists* (node:node t) (tl:list t).
                pts_to v node **
                pure (l == node.head::tl) **
                is_list node.tail tl
{
    cases_of_is_list x l;
    rewrite (is_list_cases x l) as (is_list_cases (Some v) l);
    unfold (is_list_cases (Some v) l);
}
```

///////////////////////////////////////////////////////////////////////////////

```pulse
fn is_empty (#t:Type) (x:llist t) 
    requires is_list x 'l
    returns b:bool
    ensures is_list x 'l ** pure (b <==> ('l == []))
{
    match x {
        None -> {
            is_list_cases_none x;
            true
        }
        Some vl -> {
            is_list_cases_some x vl;
            intro_is_list_cons x vl;
            false
        }
    }
}
```

```pulse
fn rec length (#t:Type0) (x:llist t)
              (l:erased (list t))
    requires is_list x l
    returns n:nat
    ensures is_list x l ** pure (n == List.Tot.length l)
{
   match x {
    None -> {
        is_list_cases_none x;
        0
    }
    Some vl -> {
        is_list_cases_some x vl;
        let node = !vl;
        with tail tl. assert (is_list #t tail tl);
        rewrite each tail as node.tail; 
        let n = length #t node.tail tl;
        intro_is_list_cons x vl;
        (1 + n)
    }
   }
}
```

let null_llist #t : llist t = None #(node_ptr t)

```pulse
fn create (t:Type)
    requires emp
    returns x:llist t
    ensures is_list x []
{
    intro_is_list_nil #t null_llist;
    null_llist #t
}
```

```pulse
fn cons (#t:Type) (v:t) (x:llist t)
    requires is_list x 'l
    returns y:llist t
    ensures is_list y (v::'l)
{
    let y = alloc (mk_node v x);
    rewrite each x as (mk_node v x).tail in (is_list x 'l);
    intro_is_list_cons (Some y) y;
    Some y
}
```

```pulse
fn rec append (#t:Type0) (x y:llist t)
    requires is_list x 'l1 ** is_list y 'l2 ** pure (x =!= None)
    ensures is_list x (List.Tot.append 'l1 'l2)
{
    let np = Some?.v x;
    is_list_cases_some x np;
    let node = !np;
    with tail tl. assert (is_list #t tail tl);
    rewrite each tail as node.tail;
    match node.tail {
    None -> {
        is_list_cases_none node.tail;
        drop (is_list node.tail tl);
        np := mk_node node.head y;
        rewrite each y as (mk_node node.head y).tail in (is_list y 'l2);
        intro_is_list_cons x np; 
    }
    Some _ -> {
        append #t node.tail y #tl #'l2;
        intro_is_list_cons x np;
    }
    }
}
```

open Pulse.Lib.Stick

assume val dbg : vprop
```pulse
ghost
fn yields_idem (p:vprop)
   requires emp
   ensures p @==> p
{
    ghost fn intro_stick_aux (u:unit)
    requires emp ** p
    ensures p
    { () };
    Pulse.Lib.Stick.intro_stick _ _ _ intro_stick_aux;
    fold (p @==> p);
}
```

```pulse
ghost
fn yields_curry (p q r:vprop)
   requires (p ** q) @==> r
   ensures p @==> (q @==> r)
{
    ghost fn aux (_:unit)
    requires ((p ** q) @==> r) ** p
    ensures q @==> r
    { 
        ghost fn aux (_:unit)
        requires (((p ** q) @==> r) ** p) ** q
        ensures r
        { 
            unfold ((p ** q) @==> r);
            elim_stick (p ** q) _;
        };
        intro_stick _ _ _ aux; 
        fold (q @==> r);
    };
    intro_stick _ _ _ aux;
    fold (p @==> (q @==> r));
}
```


```pulse
ghost
fn yields_trans (p q r:vprop)
    requires (p @==> q) ** (q @==> r)
    ensures p @==> r
{
   ghost fn aux (_:unit)
   requires ((p @==> q) ** (q @==> r)) ** p
   ensures r
   { 
      unfold (p @==> q);
      elim_stick _ _;
      
      unfold (q @==> r);
      elim_stick _ _;
   };
   intro_stick _ _ _ aux;
   fold (p @==> r);
}
```

```pulse
ghost
fn yields_comm_l (p q r:vprop)
   requires (p ** q) @==> r
   ensures (q ** p) @==> r
{
    ghost fn aux (_:unit)
    requires ((p ** q) @==> r) ** (q ** p)
    ensures r
    { 
        unfold (p ** q) @==> r;
        elim_stick (p ** q) _;
    };
    intro_stick _ _ _ aux; 
    fold ((q ** p) @==> r);
}
```

```pulse
ghost
fn yields_assoc_l (p q r s:vprop)
   requires (p ** (q ** r)) @==> s
   ensures ((p ** q) ** r) @==> s
{
    ghost fn aux (_:unit)
    requires ((p ** (q ** r)) @==> s) ** ((p ** q) ** r)
    ensures s
    { 
        unfold (p ** (q ** r)) @==> s;
        elim_stick (p ** (q ** r)) _;
    };
    intro_stick _ _ _ aux;
    fold (((p ** q) ** r) @==> s);
}
```


```pulse
ghost
fn elim_yields () (#p #q:vprop)
   requires (p @==> q) ** p
   ensures q
{
  unfold (p @==> q);
  elim_stick #emp_inames p q;
}
```

let assume_ (p:vprop) : stt_ghost unit emp_inames emp (fun _ -> p) = admit()
let not_null #t (x:llist t) : bool = Some? x

```pulse
ghost
fn yields_elim (#t:Type) 
               (v:node_ptr t)
               (n:node t)
               (tl:list t)
    requires 
        pts_to v n ** is_list n.tail tl
    ensures 
        is_list (Some v) (n.head::tl)
{
    intro_is_list_cons (Some v) v
}
```

```pulse
ghost
fn elim_hyp_l (p q r:vprop)
    requires ((p ** q) @==> r) ** p
    ensures (q @==> r)
{
    yields_curry p q r;
    unfold (p @==> q @==> r);
    elim_stick _ _;
    fold (q @==> r);
}
```

```pulse
ghost
fn elim_hyp_r (p q r:vprop)
    requires ((p ** q) @==> r) ** q
    ensures (p @==> r)
{
    yields_comm_l p q r;
    yields_curry q p r;
    unfold (q @==> p @==> r);
    elim_stick _ _;
    fold (p @==> r);
}
```


```pulse
ghost
fn intro_yields_cons (#t:Type) 
                     (v:node_ptr t)
                     (#n:node t)
                     (#tl:erased (list t))
    requires 
        pts_to v n **
        is_list n.tail tl //only there to enable inference of n and tl at call site
    ensures 
        is_list n.tail tl **
        (is_list n.tail tl @==> is_list (Some v) (n.head::tl))
{
    intro_stick _ _ _ (fun _ -> yields_elim v n tl);
    with p q. fold (p @==> q)
}
```

```pulse
fn move_next (#t:Type) (x:llist t)
    requires is_list x 'l ** pure (Some? x)
    returns y:llist t
    ensures exists* tl.
        is_list y tl **
        (is_list y tl @==> is_list x 'l) **
        pure (Cons? 'l /\ tl == Cons?.tl 'l)
{ 
    let np = Some?.v x;
    is_list_cases_some x np;
    let node = !np;
    with tail tl. assert (is_list #t tail tl);
    rewrite each tail as node.tail;
    intro_yields_cons np;
    node.tail
}
```

#push-options "--ext 'pulse:env_on_err'"
```pulse
fn length_iter (#t:Type) (x: llist t)
    requires is_list x 'l
    returns n:nat
    ensures is_list x 'l ** pure (n == List.Tot.length 'l)
{
    let mut cur = x;
    let mut ctr = 0; 
    yields_idem (is_list x 'l);
    while (
        with ll. assert pts_to cur ll;
        let v = !cur; 
        rewrite (pts_to cur v) as (pts_to cur ll);
        Some? v
    )
    invariant b.  
    exists* n ll suffix.
        pts_to ctr n **
        pts_to cur ll **
        is_list ll suffix **
        (is_list ll suffix @==> is_list x 'l) **
        pure (n == List.Tot.length 'l - List.Tot.length suffix) **
        pure (b == (Some? ll))
    {
        let n = !ctr;
        let ll = !cur;
        with _ll suffix. assert (is_list #t _ll suffix);
        rewrite each _ll as ll;
        let next = move_next ll;
        with tl. assert (is_list next tl);
        yields_trans (is_list next tl) (is_list ll suffix) (is_list x 'l);
        cur := next;
        ctr := n + 1;
    };
    with ll _sfx. assert (is_list #t ll _sfx);
    is_list_cases_none ll;
    elim_yields ();
    let n = !ctr;
    n
}
```

```pulse
fn is_last_cell (#t:Type) (x:llist t)
    requires is_list x 'l ** pure (Some? x)
    returns b:bool
    ensures is_list x 'l ** pure (b == (List.Tot.length 'l = 1))
{
    let np = Some?.v x;
    is_list_cases_some x np;
    let node = !np;
    with tail tl. assert (is_list #t tail tl);
    rewrite each tail as node.tail;
    match node.tail {
        None -> { 
            is_list_cases_none node.tail;
            intro_is_list_cons x np;
            true
        }
        Some vtl -> { 
            is_list_cases_some node.tail vtl;
            intro_is_list_cons node.tail vtl;
            intro_is_list_cons x np;
            false
        }
    }
}
```

```pulse
fn append_at_last_cell (#t:Type) (x y:llist t)
    requires
        is_list x 'l1 **
        is_list y 'l2 **
        pure (Some? x /\ List.Tot.length 'l1 == 1)
    ensures
        is_list x (List.Tot.append 'l1 'l2)
{
    let np = Some?.v x;
    is_list_cases_some x np;
    let node = !np;
    with tail tl. assert (is_list #t tail tl);
    rewrite each tail as node.tail;
    match node.tail {
        None -> {
            is_list_cases_none node.tail;
            elim_is_list_nil node.tail;
            np := mk_node node.head y;
            rewrite each y as (mk_node node.head y).tail in (is_list y 'l2);
            intro_is_list_cons x np; 
        }
        Some vtl -> {
            //need an easier way to do elim_false
            is_list_cases_some node.tail vtl;
            intro_is_list_cons node.tail vtl;
            intro_is_list_cons x np;
            elim_false (is_list x (List.Tot.append 'l1 'l2));
            drop (is_list x 'l1);
            drop (is_list y 'l2)
        }
    }
}
```

let not_b_if_sfx_1 #t (b:bool) (sfx:list t) : vprop = pure (not b ==> (List.Tot.length sfx = 1))

```pulse
ghost
fn intro_not_b_if_sfx_1_true (#t:Type0) (sfx:list t)
    requires emp
    ensures not_b_if_sfx_1 true sfx
{
    fold (not_b_if_sfx_1 true sfx);
}
```

```pulse
ghost
fn intro_not_b_if_sfx_1_false (#t:Type0) (sfx:list t)
    requires pure (List.Tot.length sfx == 1)
    ensures not_b_if_sfx_1 false sfx
{
    fold (not_b_if_sfx_1 false sfx);
}
```

```pulse
ghost
fn non_empty_list (#t:Type0) (x:llist t)
    requires is_list x 'l ** pure (Cons? 'l)
    ensures is_list x 'l ** pure (Some? x)
{
    elim_is_list_cons x (Cons?.hd 'l) (Cons?.tl 'l);
    with v n. assert (pts_to #(node t) v n);
    with tail tl. assert (is_list #t tail tl);
    rewrite each tail as n.tail;
    intro_is_list_cons x v #n #tl;
}
```

```pulse
ghost
fn forall_intro_is_list_idem (#t:Type) (x:llist t)
    requires emp
    ensures forall* l. is_list x l @==> is_list x l
{
    ghost
    fn aux (l:list t)
    requires emp
    ensures is_list x l @==> is_list x l
    { yields_idem (is_list x l) };
    intro_forall emp aux 
}
```

//#push-options "--print_implicits --ugly --print_bound_var_types --print_full_names"// --debug Pulse.Lib.LinkedList --debug_level prover"
open FStar.List.Tot
let something (#a:Type) (x:a) : vprop = emp


let rewrite_tac () =
    // T.dump "RW";
    // T.grewrite _;
    T.tadmit()

```pulse
fn test (#t:Type0) (x:ref (llist t))
    requires
        exists* ll pfx.
            something pfx **
            pts_to x ll ** 
            (forall* sfx. is_list ll (pfx @ sfx) @==> is_list ll (pfx @ sfx))
    ensures emp
{
    with pfx. assert (something #(list t) pfx);
    with _ll. assert (pts_to x _ll);
    let l = !x;
    rewrite_by
        (forall* sfx. is_list _ll (pfx @ sfx) @==> is_list _ll (pfx @ sfx))
        (forall* sfx. is_list l (pfx @ sfx) @==> is_list l (pfx @ sfx))
        rewrite_tac
        (); 
    admit();
    ()
}
```

```pulse
fn move_next_forall (#t:Type) (x:llist t)
    requires is_list x 'l ** pure (Some? x)
    returns y:llist t
    ensures exists* hd tl.
        something hd **
        is_list y tl **
        (forall* tl'. is_list y tl' @==> is_list x (hd::tl')) **
        pure ('l == hd::tl)
{ 
    let np = Some?.v x;
    is_list_cases_some x np;
    let node = !np;
    with tail tl. assert (is_list #t tail tl);
    rewrite each tail as node.tail;
    ghost fn aux (tl':list t)
        requires pts_to np node
        ensures is_list node.tail tl' @==> is_list x (node.head::tl')
    {
        ghost fn aux (_:unit)
        requires pts_to np node ** is_list node.tail tl'
        ensures is_list x (node.head::tl')
        {
            intro_is_list_cons x np;
        };
        intro_stick _ _ _ aux;
        fold (is_list node.tail tl' @==> is_list x (node.head::tl'));
    };
    Pulse.Lib.Stick.intro_forall _ aux;
    fold (something node.head);
    node.tail
}
```


```pulse
ghost
fn forall_trans (#a:Type0) (p q r: (a -> vprop))
    requires (forall* x. p x @==> q x) ** (forall* x. q x @==> r x)
    ensures forall* x. p x @==> r x
{
    ghost fn aux (x:a)
        requires ((forall* x. p x @==> q x) ** (forall* x. q x @==> r x))
        ensures p x @==> r x
    {
        ghost fn aux (_:unit)
        requires ((forall* x. p x @==> q x) ** (forall* x. q x @==> r x)) ** p x
        ensures r x
        {
            elim_forall #_ #(fun x -> p x @==> q x) x;
            unfold (p x @==> q x);
            elim_stick _ _;
            elim_forall #a #(fun x -> q x @==> r x) x;
            unfold (q x @==> r x);
            elim_stick _ _;
        };
        intro_stick _ _ _ aux;
        fold (p x @==> r x);
    };
    intro_forall _ aux
}
```

```pulse
ghost
fn forall_trans_alt (#a #b #c:Type0) (p:(a -> vprop)) (q:(b -> vprop)) (r:(c -> vprop))
                   (f: (a -> GTot b)) (g: (b -> GTot c))
    requires (forall* x. p x @==> q (f x)) ** (forall* x. q x @==> r (g x))
    ensures forall* x. p x @==> r (g (f x))
{
    ghost fn aux (x:a)
        requires ((forall* x. p x @==> q (f x)) ** (forall* x. q x @==> r (g x)))
        ensures p x @==> r (g (f x))
    {
        ghost fn aux (_:unit) 
        requires ((forall* x. p x @==> q (f x)) ** (forall* x. q x @==> r (g x))) ** p x
        ensures r (g (f x))
        {
            elim_forall #_ #(fun x -> p x @==> q (f x)) x;
            unfold (p x @==> q (f x));
            elim_stick _ _;
            elim_forall #_ #(fun x -> q x @==> r (g x)) (f x);
            unfold (q (f x) @==> r (g (f x)));
            elim_stick _ _;
        };
        intro_stick _ _ _ aux;
        fold (p x @==> r (g (f x)));
    };
    intro_forall _ aux
}
```

```pulse
ghost fn elim_forall_imp (#a:Type0) (p q: (a -> vprop)) (x:a)
    requires (forall* x. p x @==> q x) ** p x
    ensures q x
{
    elim_forall #_ #(fun x -> p x @==> q x) x;
    unfold (p x @==> q x);
    elim_stick _ _;
}
```



```pulse
fn append_iter (#t:Type) (x y:llist t)
    requires is_list x 'l1 ** is_list y 'l2 ** pure (Some? x /\ List.Tot.length 'l1 >= 1)
    ensures is_list x (List.Tot.append 'l1 'l2)
{
    let mut cur = x;
    forall_intro_is_list_idem x;
    rewrite_by (forall* l. is_list x l @==> is_list x l)
               (forall* l. is_list x l @==> is_list x ([]@l))
               norm_tac ();
    fold (something #(list t) []);
    intro_not_b_if_sfx_1_true 'l1;
    while (
        with _b _sfx. unfold (not_b_if_sfx_1 #t _b _sfx);
        with pfx. assert (something #(list t) pfx);
        unfold (something #(list t) pfx);
        let l = !cur;
        with _ll sfx. assert (is_list #t _ll sfx);
        rewrite each _ll as l in (is_list _ll sfx);
        rewrite_by (forall* sfx'. is_list _ll sfx' @==> is_list x (pfx @ sfx'))
                   (forall* sfx'. is_list l sfx' @==> is_list x (pfx @ sfx'))
                   rewrite_tac ();
        let b = is_last_cell l;
        if b 
        { 
            intro_not_b_if_sfx_1_false sfx;
            fold (something pfx);
            false
        }
        else 
        {
            let next = move_next_forall l;
            with tl. assert (is_list next tl);
            with hd. assert (something #t hd);
            forall_trans_alt (is_list next) (is_list l) (is_list x)
                         (fun tl -> hd :: tl)
                         (fun tl -> pfx @ tl);
            List.Tot.Properties.append_assoc pfx [Cons?.hd sfx] tl;
            rewrite_by (forall* tl. is_list next tl @==> is_list x (pfx @ (hd::tl)))
                       (forall* tl. is_list next tl @==> is_list x ((pfx@[hd])@tl))
                       rewrite_tac ();
            unfold (something #t hd);
            fold (something #(list t) (pfx@[hd]));
            cur := next;
            intro_not_b_if_sfx_1_true tl;
            non_empty_list next;
            true
        }
    )
    invariant b.
    exists* ll pfx sfx.
        something pfx **
        pts_to cur ll **
        is_list ll sfx **
        (forall* sfx'. is_list ll sfx' @==> is_list x (pfx @ sfx')) **
        not_b_if_sfx_1 b sfx **
        pure (List.Tot.length sfx >= 1 /\
              pfx@sfx == 'l1 /\
              Some? ll)
    { () };
    let last = !cur;
    with pfx. assert (something #(list t) pfx);
    with _ll sfx. assert (is_list #t _ll sfx);
    rewrite each _ll as last in (is_list _ll sfx);
    rewrite_by (forall* sfx'. is_list _ll sfx' @==> is_list x (pfx @ sfx'))
               (forall* sfx'. is_list last sfx' @==> is_list x (pfx @ sfx'))
               rewrite_tac ();
    with _b _sfx. unfold (not_b_if_sfx_1 #t _b _sfx);
    assert (pure (List.Tot.length sfx == 1));
    append_at_last_cell last y;
    elim_forall_imp (is_list last) (fun sfx' -> is_list x (pfx @ sfx')) (sfx@'l2);
    List.Tot.Properties.append_assoc pfx sfx 'l2;
    unfold (something #(list t) pfx);
    with l. rewrite (is_list x l) as is_list x (List.Tot.append 'l1 'l2);
}
```


```pulse
ghost
fn foo ()
  requires emp
  returns y:int
  ensures emp
{
  17
}
```
// let rec take (n:nat) (l:list 't { n < List.Tot.length l })
//   : list 'tg
//   = if n = 0 then []
//     else List.Tot.hd l :: take (n-1) (List.Tot.tl l)

//  let rec drop (n:nat) (l:list 't { n < List.Tot.length l })
//   : list 't
//   = if n = 0 then l
//     else drop (n-1) (List.Tot.tl l)
       
// ```pulse
// fn split (#t:Type) (x:llist t) (n:nat) (#l:(l:erased (list t) { n < List.Tot.length l }))
//     requires is_list x l
//     returns y:llist t
//     ensures is_list x (take n l) ** is_list y (drop n l)
// {
//     admit()
// }
// ```
