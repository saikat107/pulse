open Prims
let coerce_eq : 'a 'b . 'a -> unit -> 'b =
  fun uu___1 -> fun uu___ -> (fun x -> fun uu___ -> Obj.magic x) uu___1 uu___
type 'l no_repeats = Obj.t
type ss_dom = Pulse_Syntax_Base.var Prims.list
type ss_map = (Pulse_Syntax_Base.var, Pulse_Syntax_Base.term) FStar_Map.t
let (remove_map :
  ss_map ->
    Pulse_Syntax_Base.var ->
      (Pulse_Syntax_Base.var, Pulse_Syntax_Base.term) FStar_Map.t)
  =
  fun m ->
    fun x ->
      FStar_Map.restrict (FStar_Set.complement (FStar_Set.singleton x))
        (FStar_Map.upd m x Pulse_Syntax_Pure.tm_unknown)
type ('l, 'm) is_dom = Obj.t
type ss_t = {
  l: ss_dom ;
  m: ss_map }
let (__proj__Mkss_t__item__l : ss_t -> ss_dom) =
  fun projectee -> match projectee with | { l; m;_} -> l
let (__proj__Mkss_t__item__m : ss_t -> ss_map) =
  fun projectee -> match projectee with | { l; m;_} -> m
let rec separate_map :
  'a .
    FStarC_Pprint.document ->
      ('a -> (FStarC_Pprint.document, unit) FStar_Tactics_Effect.tac_repr) ->
        'a Prims.list ->
          (FStarC_Pprint.document, unit) FStar_Tactics_Effect.tac_repr
  =
  fun uu___2 ->
    fun uu___1 ->
      fun uu___ ->
        (fun sep ->
           fun f ->
             fun xs ->
               match xs with
               | [] ->
                   Obj.magic
                     (Obj.repr
                        (FStar_Tactics_Effect.lift_div_tac
                           (fun uu___ -> FStarC_Pprint.empty)))
               | x::[] -> Obj.magic (Obj.repr (f x))
               | x::xs1 ->
                   Obj.magic
                     (Obj.repr
                        (let uu___ = f x in
                         FStar_Tactics_Effect.tac_bind
                           (FStar_Sealed.seal
                              (Obj.magic
                                 (FStar_Range.mk_range
                                    "Pulse.Checker.Prover.Substs.fst"
                                    (Prims.of_int (77)) (Prims.of_int (14))
                                    (Prims.of_int (77)) (Prims.of_int (17)))))
                           (FStar_Sealed.seal
                              (Obj.magic
                                 (FStar_Range.mk_range
                                    "Pulse.Checker.Prover.Substs.fst"
                                    (Prims.of_int (77)) (Prims.of_int (20))
                                    (Prims.of_int (79)) (Prims.of_int (22)))))
                           (Obj.magic uu___)
                           (fun uu___1 ->
                              (fun doc ->
                                 let uu___1 = separate_map sep f xs1 in
                                 Obj.magic
                                   (FStar_Tactics_Effect.tac_bind
                                      (FStar_Sealed.seal
                                         (Obj.magic
                                            (FStar_Range.mk_range
                                               "Pulse.Checker.Prover.Substs.fst"
                                               (Prims.of_int (78))
                                               (Prims.of_int (15))
                                               (Prims.of_int (78))
                                               (Prims.of_int (36)))))
                                      (FStar_Sealed.seal
                                         (Obj.magic
                                            (FStar_Range.mk_range
                                               "Pulse.Checker.Prover.Substs.fst"
                                               (Prims.of_int (79))
                                               (Prims.of_int (4))
                                               (Prims.of_int (79))
                                               (Prims.of_int (22)))))
                                      (Obj.magic uu___1)
                                      (fun docs ->
                                         FStar_Tactics_Effect.lift_div_tac
                                           (fun uu___2 ->
                                              FStarC_Pprint.op_Hat_Hat doc
                                                (FStarC_Pprint.op_Hat_Hat sep
                                                   docs))))) uu___1))))
          uu___2 uu___1 uu___
let (pp_ss_t : ss_t Pulse_PP.printable) =
  {
    Pulse_PP.pp =
      (fun uu___ ->
         match uu___ with
         | { l; m;_} ->
             let uu___1 =
               separate_map
                 (FStarC_Pprint.op_Hat_Hat FStarC_Pprint.comma
                    (FStarC_Pprint.break_ Prims.int_one))
                 (fun k ->
                    let uu___2 = Pulse_PP.pp Pulse_PP.printable_int k in
                    FStar_Tactics_Effect.tac_bind
                      (FStar_Sealed.seal
                         (Obj.magic
                            (FStar_Range.mk_range
                               "Pulse.Checker.Prover.Substs.fst"
                               (Prims.of_int (87)) (Prims.of_int (15))
                               (Prims.of_int (87)) (Prims.of_int (28)))))
                      (FStar_Sealed.seal
                         (Obj.magic
                            (FStar_Range.mk_range
                               "Pulse.Checker.Prover.Substs.fst"
                               (Prims.of_int (87)) (Prims.of_int (15))
                               (Prims.of_int (87)) (Prims.of_int (72)))))
                      (Obj.magic uu___2)
                      (fun uu___3 ->
                         (fun uu___3 ->
                            let uu___4 =
                              let uu___5 =
                                Pulse_PP.pp Pulse_PP.printable_term
                                  (FStar_Map.sel m k) in
                              FStar_Tactics_Effect.tac_bind
                                (FStar_Sealed.seal
                                   (Obj.magic
                                      (FStar_Range.mk_range
                                         "Pulse.Checker.Prover.Substs.fst"
                                         (Prims.of_int (87))
                                         (Prims.of_int (56))
                                         (Prims.of_int (87))
                                         (Prims.of_int (72)))))
                                (FStar_Sealed.seal
                                   (Obj.magic
                                      (FStar_Range.mk_range
                                         "Pulse.Checker.Prover.Substs.fst"
                                         (Prims.of_int (87))
                                         (Prims.of_int (32))
                                         (Prims.of_int (87))
                                         (Prims.of_int (72)))))
                                (Obj.magic uu___5)
                                (fun uu___6 ->
                                   FStar_Tactics_Effect.lift_div_tac
                                     (fun uu___7 ->
                                        FStarC_Pprint.op_Hat_Hat
                                          (FStarC_Pprint.doc_of_string " -> ")
                                          uu___6)) in
                            Obj.magic
                              (FStar_Tactics_Effect.tac_bind
                                 (FStar_Sealed.seal
                                    (Obj.magic
                                       (FStar_Range.mk_range
                                          "Pulse.Checker.Prover.Substs.fst"
                                          (Prims.of_int (87))
                                          (Prims.of_int (32))
                                          (Prims.of_int (87))
                                          (Prims.of_int (72)))))
                                 (FStar_Sealed.seal
                                    (Obj.magic
                                       (FStar_Range.mk_range
                                          "Pulse.Checker.Prover.Substs.fst"
                                          (Prims.of_int (87))
                                          (Prims.of_int (15))
                                          (Prims.of_int (87))
                                          (Prims.of_int (72)))))
                                 (Obj.magic uu___4)
                                 (fun uu___5 ->
                                    FStar_Tactics_Effect.lift_div_tac
                                      (fun uu___6 ->
                                         FStarC_Pprint.op_Hat_Hat uu___3
                                           uu___5)))) uu___3)) l in
             FStar_Tactics_Effect.tac_bind
               (FStar_Sealed.seal
                  (Obj.magic
                     (FStar_Range.mk_range "Pulse.Checker.Prover.Substs.fst"
                        (Prims.of_int (86)) (Prims.of_int (8))
                        (Prims.of_int (87)) (Prims.of_int (73)))))
               (FStar_Sealed.seal
                  (Obj.magic
                     (FStar_Range.mk_range "Pulse.Checker.Prover.Substs.fst"
                        (Prims.of_int (86)) (Prims.of_int (8))
                        (Prims.of_int (88)) (Prims.of_int (21)))))
               (Obj.magic uu___1)
               (fun uu___2 ->
                  FStar_Tactics_Effect.lift_div_tac
                    (fun uu___3 -> FStarC_Pprint.brackets uu___2)))
  }
let (showable_ss_t : ss_t Pulse_Show.tac_showable) =
  Pulse_PP.show_from_pp pp_ss_t
let (ln_ss_t : ss_t -> Prims.bool) =
  fun s ->
    FStar_List_Tot_Base.for_all
      (fun x -> Pulse_Syntax_Naming.ln (FStar_Map.sel s.m x)) s.l
let (as_map :
  ss_t -> (Pulse_Syntax_Base.var, Pulse_Syntax_Base.term) FStar_Map.t) =
  fun ss -> ss.m
let (dom : ss_t -> Pulse_Syntax_Base.var FStar_Set.set) =
  fun ss -> FStar_Map.domain (as_map ss)
let (contains : ss_t -> Pulse_Syntax_Base.var -> Prims.bool) =
  fun ss -> fun x -> FStar_Map.contains (as_map ss) x
let (sel : ss_t -> Pulse_Syntax_Base.var -> Pulse_Syntax_Base.term) =
  fun ss -> fun x -> FStar_Map.sel (as_map ss) x
let (empty : ss_t) =
  {
    l = [];
    m =
      (FStar_Map.const_on (FStar_Set.empty ()) Pulse_Syntax_Pure.tm_unknown)
  }
let (push : ss_t -> Pulse_Syntax_Base.var -> Pulse_Syntax_Base.term -> ss_t)
  =
  fun ss ->
    fun x -> fun t -> { l = (x :: (ss.l)); m = (FStar_Map.upd ss.m x t) }
let (tail : ss_t -> ss_t) =
  fun ss ->
    {
      l = (FStar_List_Tot_Base.tl ss.l);
      m = (remove_map ss.m (FStar_List_Tot_Base.hd ss.l))
    }
let rec (push_ss : ss_t -> ss_t -> ss_t) =
  fun ss1 ->
    fun ss2 ->
      match ss2.l with
      | [] -> ss1
      | x::tl -> push_ss (push ss1 x (FStar_Map.sel ss2.m x)) (tail ss2)
let (check_disjoint : ss_t -> ss_t -> Prims.bool) =
  fun ss1 ->
    fun ss2 ->
      Prims.op_Negation
        (FStar_List_Tot_Base.existsb
           (fun v1 -> FStar_List_Tot_Base.mem v1 ss2.l) ss1.l)
let rec (diff_aux : ss_t -> ss_t -> ss_t -> ss_t) =
  fun ss1 ->
    fun ss2 ->
      fun acc ->
        match ss1.l with
        | [] -> acc
        | x::l ->
            if FStar_List_Tot_Base.mem x ss2.l
            then
              let ss11 = { l; m = (remove_map ss1.m x) } in
              diff_aux ss11 ss2 acc
            else
              (let acc_l = x :: (acc.l) in
               let acc_m = FStar_Map.upd acc.m x (FStar_Map.sel ss1.m x) in
               let acc1 = { l = acc_l; m = acc_m } in
               let ss11 = { l; m = (remove_map ss1.m x) } in
               diff_aux ss11 ss2 acc1)
let (diff : ss_t -> ss_t -> ss_t) =
  fun ss1 -> fun ss2 -> diff_aux ss1 ss2 empty
let rec (remove_l : ss_dom -> Pulse_Syntax_Base.var -> ss_dom) =
  fun l ->
    fun x ->
      match l with
      | [] -> []
      | y::tl -> if y = x then tl else y :: (remove_l tl x)
let rec (ss_term : Pulse_Syntax_Base.term -> ss_t -> Pulse_Syntax_Base.term)
  =
  fun t ->
    fun ss ->
      match ss.l with
      | [] -> t
      | y::tl ->
          let t1 =
            Pulse_Syntax_Naming.subst_term t
              [FStar_Reflection_Typing.NT (y, (FStar_Map.sel ss.m y))] in
          ss_term t1 (tail ss)
let rec (ss_st_term :
  Pulse_Syntax_Base.st_term -> ss_t -> Pulse_Syntax_Base.st_term) =
  fun t ->
    fun ss ->
      match ss.l with
      | [] -> t
      | y::tl ->
          let t1 =
            Pulse_Syntax_Naming.subst_st_term t
              [FStar_Reflection_Typing.NT (y, (FStar_Map.sel ss.m y))] in
          ss_st_term t1 (tail ss)
let rec (ss_st_comp :
  Pulse_Syntax_Base.st_comp -> ss_t -> Pulse_Syntax_Base.st_comp) =
  fun s ->
    fun ss ->
      match ss.l with
      | [] -> s
      | y::tl ->
          let s1 =
            Pulse_Syntax_Naming.subst_st_comp s
              [FStar_Reflection_Typing.NT (y, (FStar_Map.sel ss.m y))] in
          ss_st_comp s1 (tail ss)
let rec (ss_comp : Pulse_Syntax_Base.comp -> ss_t -> Pulse_Syntax_Base.comp)
  =
  fun c ->
    fun ss ->
      match ss.l with
      | [] -> c
      | y::tl ->
          let c1 =
            Pulse_Syntax_Naming.subst_comp c
              [FStar_Reflection_Typing.NT (y, (FStar_Map.sel ss.m y))] in
          ss_comp c1 (tail ss)
let rec (ss_binder :
  Pulse_Syntax_Base.binder -> ss_t -> Pulse_Syntax_Base.binder) =
  fun b ->
    fun ss ->
      match ss.l with
      | [] -> b
      | y::tl ->
          let b1 =
            Pulse_Syntax_Naming.subst_binder b
              [FStar_Reflection_Typing.NT (y, (FStar_Map.sel ss.m y))] in
          ss_binder b1 (tail ss)
let rec (ss_env : Pulse_Typing_Env.env -> ss_t -> Pulse_Typing_Env.env) =
  fun g ->
    fun ss ->
      match ss.l with
      | [] -> g
      | y::tl ->
          ss_env
            (Pulse_Typing_Env.subst_env g
               [FStar_Reflection_Typing.NT (y, (FStar_Map.sel ss.m y))])
            (tail ss)
type nt_substs = Pulse_Syntax_Naming.subst_elt Prims.list
let (nt_subst_term :
  Pulse_Syntax_Base.term -> nt_substs -> Pulse_Syntax_Base.term) =
  fun t ->
    fun ss ->
      FStar_List_Tot_Base.fold_left
        (fun t1 -> fun elt -> Pulse_Syntax_Naming.subst_term t1 [elt]) t ss
let (nt_subst_binder :
  Pulse_Syntax_Base.binder -> nt_substs -> Pulse_Syntax_Base.binder) =
  fun b ->
    fun ss ->
      FStar_List_Tot_Base.fold_left
        (fun b1 -> fun elt -> Pulse_Syntax_Naming.subst_binder b1 [elt]) b ss
let (nt_subst_st_term :
  Pulse_Syntax_Base.st_term -> nt_substs -> Pulse_Syntax_Base.st_term) =
  fun t ->
    fun ss ->
      FStar_List_Tot_Base.fold_left
        (fun t1 -> fun elt -> Pulse_Syntax_Naming.subst_st_term t1 [elt]) t
        ss
let (nt_subst_st_comp :
  Pulse_Syntax_Base.st_comp -> nt_substs -> Pulse_Syntax_Base.st_comp) =
  fun s ->
    fun ss ->
      FStar_List_Tot_Base.fold_left
        (fun s1 -> fun elt -> Pulse_Syntax_Naming.subst_st_comp s1 [elt]) s
        ss
let (nt_subst_comp :
  Pulse_Syntax_Base.comp -> nt_substs -> Pulse_Syntax_Base.comp) =
  fun c ->
    fun ss ->
      FStar_List_Tot_Base.fold_left
        (fun c1 -> fun elt -> Pulse_Syntax_Naming.subst_comp c1 [elt]) c ss
let (nt_subst_env :
  Pulse_Typing_Env.env -> nt_substs -> Pulse_Typing_Env.env) =
  fun g ->
    fun ss ->
      let g' =
        FStar_List_Tot_Base.fold_left
          (fun g1 -> fun elt -> Pulse_Typing_Env.subst_env g1 [elt]) g ss in
      g'
type ('g, 'uvs, 'nts, 'effectulabels) well_typed_nt_substs = Obj.t
type ('nts, 'ss) is_permutation = Obj.t
let rec (ss_to_nt_substs :
  Pulse_Typing_Env.env ->
    Pulse_Typing_Env.env ->
      ss_t ->
        (((nt_substs, FStarC_TypeChecker_Core.tot_or_ghost Prims.list)
            Prims.dtuple2,
           Prims.string) FStar_Pervasives.either,
          unit) FStar_Tactics_Effect.tac_repr)
  =
  fun g ->
    fun uvs ->
      fun ss ->
        let uu___ =
          let uu___1 = Pulse_Typing_Env.range_of_env g in
          FStar_Tactics_Effect.tac_bind
            (FStar_Sealed.seal
               (Obj.magic
                  (FStar_Range.mk_range "Pulse.Checker.Prover.Substs.fst"
                     (Prims.of_int (323)) (Prims.of_int (47))
                     (Prims.of_int (323)) (Prims.of_int (63)))))
            (FStar_Sealed.seal
               (Obj.magic
                  (FStar_Range.mk_range "Pulse.Checker.Prover.Substs.fst"
                     (Prims.of_int (323)) (Prims.of_int (10))
                     (Prims.of_int (323)) (Prims.of_int (63)))))
            (Obj.magic uu___1)
            (fun uu___2 ->
               FStar_Tactics_Effect.lift_div_tac
                 (fun uu___3 ->
                    Pulse_Typing_Env.push_context g "ss_to_nt_substs" uu___2)) in
        FStar_Tactics_Effect.tac_bind
          (FStar_Sealed.seal
             (Obj.magic
                (FStar_Range.mk_range "Pulse.Checker.Prover.Substs.fst"
                   (Prims.of_int (323)) (Prims.of_int (10))
                   (Prims.of_int (323)) (Prims.of_int (63)))))
          (FStar_Sealed.seal
             (Obj.magic
                (FStar_Range.mk_range "Pulse.Checker.Prover.Substs.fst"
                   (Prims.of_int (324)) (Prims.of_int (2))
                   (Prims.of_int (348)) (Prims.of_int (66)))))
          (Obj.magic uu___)
          (fun uu___1 ->
             (fun g1 ->
                match Pulse_Typing_Env.bindings uvs with
                | [] ->
                    Obj.magic
                      (Obj.repr
                         (FStar_Tactics_Effect.lift_div_tac
                            (fun uu___1 ->
                               match ss.l with
                               | [] ->
                                   FStar_Pervasives.Inl
                                     (Prims.Mkdtuple2 ([], []))
                               | x::uu___2 ->
                                   FStar_Pervasives.Inr
                                     (Prims.strcat
                                        "extra uvars in the substitutions collected by the prover, e.g._#"
                                        (Prims.strcat (Prims.string_of_int x)
                                           "")))))
                | uu___1 ->
                    Obj.magic
                      (Obj.repr
                         (let uu___2 =
                            Obj.magic
                              (FStar_Tactics_Effect.lift_div_tac
                                 (fun uu___3 ->
                                    Pulse_Typing_Env.remove_binding uvs)) in
                          FStar_Tactics_Effect.tac_bind
                            (FStar_Sealed.seal
                               (Obj.magic
                                  (FStar_Range.mk_range
                                     "Pulse.Checker.Prover.Substs.fst"
                                     (Prims.of_int (331)) (Prims.of_int (26))
                                     (Prims.of_int (331)) (Prims.of_int (44)))))
                            (FStar_Sealed.seal
                               (Obj.magic
                                  (FStar_Range.mk_range
                                     "Pulse.Checker.Prover.Substs.fst"
                                     (Prims.of_int (330)) (Prims.of_int (8))
                                     (Prims.of_int (348)) (Prims.of_int (66)))))
                            (Obj.magic uu___2)
                            (fun uu___3 ->
                               (fun uu___3 ->
                                  match uu___3 with
                                  | (x, ty, rest_uvs) ->
                                      if FStar_Map.contains ss.m x
                                      then
                                        Obj.magic
                                          (Obj.repr
                                             (let uu___4 =
                                                Obj.magic
                                                  (FStar_Tactics_Effect.lift_div_tac
                                                     (fun uu___5 ->
                                                        FStar_Map.sel ss.m x)) in
                                              FStar_Tactics_Effect.tac_bind
                                                (FStar_Sealed.seal
                                                   (Obj.magic
                                                      (FStar_Range.mk_range
                                                         "Pulse.Checker.Prover.Substs.fst"
                                                         (Prims.of_int (333))
                                                         (Prims.of_int (17))
                                                         (Prims.of_int (333))
                                                         (Prims.of_int (31)))))
                                                (FStar_Sealed.seal
                                                   (Obj.magic
                                                      (FStar_Range.mk_range
                                                         "Pulse.Checker.Prover.Substs.fst"
                                                         (Prims.of_int (333))
                                                         (Prims.of_int (34))
                                                         (Prims.of_int (347))
                                                         (Prims.of_int (16)))))
                                                (Obj.magic uu___4)
                                                (fun uu___5 ->
                                                   (fun t ->
                                                      let uu___5 =
                                                        Pulse_Checker_Pure.core_check_term_at_type
                                                          g1 t ty in
                                                      Obj.magic
                                                        (FStar_Tactics_Effect.tac_bind
                                                           (FStar_Sealed.seal
                                                              (Obj.magic
                                                                 (FStar_Range.mk_range
                                                                    "Pulse.Checker.Prover.Substs.fst"
                                                                    (Prims.of_int (334))
                                                                    (Prims.of_int (28))
                                                                    (Prims.of_int (334))
                                                                    (Prims.of_int (58)))))
                                                           (FStar_Sealed.seal
                                                              (Obj.magic
                                                                 (FStar_Range.mk_range
                                                                    "Pulse.Checker.Prover.Substs.fst"
                                                                    (Prims.of_int (333))
                                                                    (Prims.of_int (34))
                                                                    (Prims.of_int (347))
                                                                    (Prims.of_int (16)))))
                                                           (Obj.magic uu___5)
                                                           (fun uu___6 ->
                                                              (fun uu___6 ->
                                                                 match uu___6
                                                                 with
                                                                 | Prims.Mkdtuple2
                                                                    (eff, d)
                                                                    ->
                                                                    let uu___7
                                                                    =
                                                                    ss_to_nt_substs
                                                                    g1
                                                                    (Pulse_Typing_Env.subst_env
                                                                    rest_uvs
                                                                    [
                                                                    FStar_Reflection_Typing.NT
                                                                    (x, t)])
                                                                    {
                                                                    l =
                                                                    (remove_l
                                                                    ss.l x);
                                                                    m =
                                                                    (remove_map
                                                                    ss.m x)
                                                                    } in
                                                                    Obj.magic
                                                                    (FStar_Tactics_Effect.tac_bind
                                                                    (FStar_Sealed.seal
                                                                    (Obj.magic
                                                                    (FStar_Range.mk_range
                                                                    "Pulse.Checker.Prover.Substs.fst"
                                                                    (Prims.of_int (337))
                                                                    (Prims.of_int (11))
                                                                    (Prims.of_int (338))
                                                                    (Prims.of_int (82)))))
                                                                    (FStar_Sealed.seal
                                                                    (Obj.magic
                                                                    (FStar_Range.mk_range
                                                                    "Pulse.Checker.Prover.Substs.fst"
                                                                    (Prims.of_int (339))
                                                                    (Prims.of_int (9))
                                                                    (Prims.of_int (347))
                                                                    (Prims.of_int (16)))))
                                                                    (Obj.magic
                                                                    uu___7)
                                                                    (fun ropt
                                                                    ->
                                                                    FStar_Tactics_Effect.lift_div_tac
                                                                    (fun
                                                                    uu___8 ->
                                                                    match ropt
                                                                    with
                                                                    | 
                                                                    FStar_Pervasives.Inr
                                                                    e ->
                                                                    FStar_Pervasives.Inr
                                                                    e
                                                                    | 
                                                                    FStar_Pervasives.Inl
                                                                    (Prims.Mkdtuple2
                                                                    (nts,
                                                                    effect_labels))
                                                                    ->
                                                                    FStar_Pervasives.Inl
                                                                    (Prims.Mkdtuple2
                                                                    (((
                                                                    FStar_Reflection_Typing.NT
                                                                    (x, t))
                                                                    :: nts),
                                                                    (eff ::
                                                                    effect_labels)))))))
                                                                uu___6)))
                                                     uu___5)))
                                      else
                                        Obj.magic
                                          (Obj.repr
                                             (FStar_Tactics_Effect.lift_div_tac
                                                (fun uu___5 ->
                                                   FStar_Pervasives.Inr
                                                     (Prims.strcat
                                                        "prover could not prove uvar _#"
                                                        (Prims.strcat
                                                           (Prims.string_of_int
                                                              x) ""))))))
                                 uu___3)))) uu___1)
let rec (well_typed_nt_substs_prefix :
  Pulse_Typing_Env.env ->
    Pulse_Typing_Env.env ->
      nt_substs ->
        FStarC_TypeChecker_Core.tot_or_ghost Prims.list ->
          Pulse_Typing_Env.env ->
            (nt_substs * FStarC_TypeChecker_Core.tot_or_ghost Prims.list))
  =
  fun g ->
    fun uvs ->
      fun nts ->
        fun effect_labels ->
          fun uvs1 ->
            match ((Pulse_Typing_Env.bindings uvs1),
                    (Pulse_Typing_Env.bindings uvs))
            with
            | ([], uu___) -> ([], [])
            | (uu___::uu___1, uu___2::uu___3) ->
                let uu___4 = Pulse_Typing_Env.remove_binding uvs1 in
                (match uu___4 with
                 | (x1, ty1, rest_uvs1) ->
                     let uu___5 = Pulse_Typing_Env.remove_binding uvs in
                     (match uu___5 with
                      | (x, ty, rest_uvs) ->
                          let uu___6 = nts in
                          (match uu___6 with
                           | (FStar_Reflection_Typing.NT (y, e))::nts_rest ->
                               let uu___7 = effect_labels in
                               (match uu___7 with
                                | eff::effect_labels_rest ->
                                    let uu___8 =
                                      well_typed_nt_substs_prefix g
                                        (Pulse_Typing_Env.subst_env rest_uvs
                                           [FStar_Reflection_Typing.NT (y, e)])
                                        nts_rest effect_labels_rest
                                        (Pulse_Typing_Env.subst_env rest_uvs1
                                           [FStar_Reflection_Typing.NT (y, e)]) in
                                    (match uu___8 with
                                     | (nts1, labs) ->
                                         (((FStar_Reflection_Typing.NT (y, e))
                                           :: nts1), (eff :: labs)))))))
let rec (st_typing_nt_substs :
  Pulse_Typing_Env.env ->
    Pulse_Typing_Env.env ->
      Pulse_Typing_Env.env ->
        Pulse_Syntax_Base.st_term ->
          Pulse_Syntax_Base.comp_st ->
            (unit, unit, unit) Pulse_Typing.st_typing ->
              nt_substs ->
                FStarC_TypeChecker_Core.tot_or_ghost Prims.list ->
                  ((unit, unit, unit) Pulse_Typing.st_typing,
                    (Pulse_Syntax_Base.var * Pulse_Syntax_Base.term))
                    FStar_Pervasives.either)
  =
  fun g ->
    fun uvs ->
      fun g' ->
        fun t ->
          fun c ->
            fun t_typing ->
              fun nts ->
                fun effect_labels ->
                  match Pulse_Typing_Env.bindings uvs with
                  | [] -> FStar_Pervasives.Inl t_typing
                  | uu___ ->
                      let uu___1 = Pulse_Typing_Env.remove_binding uvs in
                      (match uu___1 with
                       | (x, ty, uvs_rest) ->
                           let uu___2 = nts in
                           (match uu___2 with
                            | (FStar_Reflection_Typing.NT
                                (uu___3, e))::nts_rest ->
                                let uu___4 = effect_labels in
                                (match uu___4 with
                                 | eff::effect_labels_rest ->
                                     if
                                       (Prims.op_Negation
                                          (eff =
                                             FStarC_TypeChecker_Core.E_Ghost))
                                         ||
                                         (Pulse_Syntax_Base.uu___is_C_STGhost
                                            c)
                                     then
                                       let t_typing1 = coerce_eq t_typing () in
                                       let t_typing2 =
                                         Pulse_Typing_Metatheory_Base.st_typing_subst
                                           g x ty
                                           (Pulse_Typing_Env.push_env
                                              uvs_rest g') e eff () t c
                                           t_typing1 () in
                                       st_typing_nt_substs g
                                         (Pulse_Typing_Env.subst_env uvs_rest
                                            [FStar_Reflection_Typing.NT
                                               (x, e)])
                                         (Pulse_Typing_Env.subst_env g'
                                            [FStar_Reflection_Typing.NT
                                               (x, e)])
                                         (Pulse_Syntax_Naming.subst_st_term t
                                            [FStar_Reflection_Typing.NT
                                               (x, e)])
                                         (Pulse_Syntax_Naming.subst_comp c
                                            [FStar_Reflection_Typing.NT
                                               (x, e)]) t_typing2 nts_rest
                                         effect_labels_rest
                                     else FStar_Pervasives.Inr (x, e))))
let (st_typing_nt_substs_derived :
  Pulse_Typing_Env.env ->
    Pulse_Typing_Env.env ->
      Pulse_Syntax_Base.st_term ->
        Pulse_Syntax_Base.comp_st ->
          (unit, unit, unit) Pulse_Typing.st_typing ->
            nt_substs ->
              FStarC_TypeChecker_Core.tot_or_ghost Prims.list ->
                ((unit, unit, unit) Pulse_Typing.st_typing,
                  (Pulse_Syntax_Base.var * Pulse_Syntax_Base.term))
                  FStar_Pervasives.either)
  =
  fun g ->
    fun uvs ->
      fun t ->
        fun c ->
          fun t_typing ->
            fun ss ->
              fun effect_labels ->
                let g' =
                  Pulse_Typing_Env.mk_env (Pulse_Typing_Env.fstar_env g) in
                let d =
                  st_typing_nt_substs g uvs g' t c (coerce_eq t_typing ()) ss
                    effect_labels in
                d