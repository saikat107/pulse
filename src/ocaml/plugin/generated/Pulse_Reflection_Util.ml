open Prims
let (u_two : FStarC_Reflection_Types.universe) =
  FStar_Reflection_Typing.u_succ
    (FStar_Reflection_Typing.u_succ FStar_Reflection_Typing.u_zero)
let (u_three : FStarC_Reflection_Types.universe) =
  FStar_Reflection_Typing.u_succ
    (FStar_Reflection_Typing.u_succ
       (FStar_Reflection_Typing.u_succ FStar_Reflection_Typing.u_zero))
let (u_four : FStarC_Reflection_Types.universe) =
  FStar_Reflection_Typing.u_succ
    (FStar_Reflection_Typing.u_succ
       (FStar_Reflection_Typing.u_succ
          (FStar_Reflection_Typing.u_succ FStar_Reflection_Typing.u_zero)))
let (u_atomic_ghost :
  FStarC_Reflection_Types.universe -> FStarC_Reflection_Types.universe) =
  fun u -> FStar_Reflection_Typing.u_max u_four u
let (pulse_lib_core : Prims.string Prims.list) = ["Pulse"; "Lib"; "Core"]
let (mk_pulse_lib_core_lid : Prims.string -> Prims.string Prims.list) =
  fun s -> FStar_List_Tot_Base.op_At pulse_lib_core [s]
let (pulse_lib_noninformative : Prims.string Prims.list) =
  ["Pulse"; "Lib"; "NonInformative"]
let (mk_pulse_lib_noninformative_lid :
  Prims.string -> Prims.string Prims.list) =
  fun s -> FStar_List_Tot_Base.op_At pulse_lib_noninformative [s]
let (tun : FStarC_Reflection_Types.term) =
  FStarC_Reflection_V2_Builtins.pack_ln FStarC_Reflection_V2_Data.Tv_Unknown
let (unit_lid : Prims.string Prims.list) = FStar_Reflection_Const.unit_lid
let (bool_lid : Prims.string Prims.list) = FStar_Reflection_Const.bool_lid
let (int_lid : Prims.string Prims.list) = FStar_Reflection_Const.int_lid
let (erased_lid : Prims.string Prims.list) = ["FStar"; "Ghost"; "erased"]
let (hide_lid : Prims.string Prims.list) = ["FStar"; "Ghost"; "hide"]
let (reveal_lid : Prims.string Prims.list) = ["FStar"; "Ghost"; "reveal"]
let (slprop_lid : Prims.string Prims.list) = mk_pulse_lib_core_lid "slprop"
let (slprop_fv : FStarC_Reflection_Types.fv) =
  FStarC_Reflection_V2_Builtins.pack_fv slprop_lid
let (slprop_tm : FStarC_Reflection_Types.term) =
  FStarC_Reflection_V2_Builtins.pack_ln
    (FStarC_Reflection_V2_Data.Tv_FVar slprop_fv)
let (emp_lid : Prims.string Prims.list) = mk_pulse_lib_core_lid "emp"
let (unit_fv : FStarC_Reflection_Types.fv) =
  FStarC_Reflection_V2_Builtins.pack_fv unit_lid
let (unit_tm : FStarC_Reflection_Types.term) =
  FStarC_Reflection_V2_Builtins.pack_ln
    (FStarC_Reflection_V2_Data.Tv_FVar unit_fv)
let (bool_fv : FStarC_Reflection_Types.fv) =
  FStarC_Reflection_V2_Builtins.pack_fv bool_lid
let (bool_tm : FStarC_Reflection_Types.term) =
  FStarC_Reflection_V2_Builtins.pack_ln
    (FStarC_Reflection_V2_Data.Tv_FVar bool_fv)
let (nat_lid : Prims.string Prims.list) = ["Prims"; "nat"]
let (nat_fv : FStarC_Reflection_Types.fv) =
  FStarC_Reflection_V2_Builtins.pack_fv nat_lid
let (nat_tm : FStarC_Reflection_Types.term) =
  FStarC_Reflection_V2_Builtins.pack_ln
    (FStarC_Reflection_V2_Data.Tv_FVar nat_fv)
let (szt_lid : Prims.string Prims.list) = ["FStar"; "SizeT"; "t"]
let (szt_fv : FStarC_Reflection_Types.fv) =
  FStarC_Reflection_V2_Builtins.pack_fv szt_lid
let (szt_tm : FStarC_Reflection_Types.term) =
  FStarC_Reflection_V2_Builtins.pack_ln
    (FStarC_Reflection_V2_Data.Tv_FVar szt_fv)
let (szv_lid : Prims.string Prims.list) = ["FStar"; "SizeT"; "v"]
let (szv_fv : FStarC_Reflection_Types.fv) =
  FStarC_Reflection_V2_Builtins.pack_fv szv_lid
let (szv_tm : FStarC_Reflection_Types.term) =
  FStarC_Reflection_V2_Builtins.pack_ln
    (FStarC_Reflection_V2_Data.Tv_FVar szv_fv)
let (seq_lid : Prims.string Prims.list) = ["FStar"; "Seq"; "Base"; "seq"]
let (seq_create_lid : Prims.string Prims.list) =
  ["FStar"; "Seq"; "Base"; "create"]
let (tot_lid : Prims.string Prims.list) = ["Prims"; "Tot"]
let (slprop_equiv_norm_tm : FStarC_Reflection_Types.term) =
  FStarC_Reflection_V2_Builtins.pack_ln
    (FStarC_Reflection_V2_Data.Tv_FVar
       (FStarC_Reflection_V2_Builtins.pack_fv
          (mk_pulse_lib_core_lid "slprop_equiv_norm")))
let (match_rewrite_tac_tm : FStarC_Reflection_Types.term) =
  FStarC_Reflection_V2_Builtins.pack_ln
    (FStarC_Reflection_V2_Data.Tv_FVar
       (FStarC_Reflection_V2_Builtins.pack_fv
          (mk_pulse_lib_core_lid "match_rewrite_tac")))
let (ex : FStarC_Reflection_Types.term -> FStarC_Reflection_V2_Data.argv) =
  fun t -> (t, FStarC_Reflection_V2_Data.Q_Explicit)
let (im : FStarC_Reflection_Types.term -> FStarC_Reflection_V2_Data.argv) =
  fun t -> (t, FStarC_Reflection_V2_Data.Q_Implicit)
let (tuple2_lid : Prims.string Prims.list) =
  ["FStar"; "Pervasives"; "Native"; "tuple2"]
let (fst_lid : Prims.string Prims.list) =
  ["FStar"; "Pervasives"; "Native"; "fst"]
let (snd_lid : Prims.string Prims.list) =
  ["FStar"; "Pervasives"; "Native"; "snd"]
let (mk_tuple2 :
  FStarC_Reflection_Types.universe ->
    FStarC_Reflection_Types.universe ->
      FStarC_Reflection_Types.term ->
        FStarC_Reflection_Types.term -> FStarC_Reflection_Types.term)
  =
  fun u1 ->
    fun u2 ->
      fun a1 ->
        fun a2 ->
          let t =
            FStarC_Reflection_V2_Builtins.pack_ln
              (FStarC_Reflection_V2_Data.Tv_UInst
                 ((FStarC_Reflection_V2_Builtins.pack_fv tuple2_lid),
                   [u1; u2])) in
          let t1 =
            FStarC_Reflection_V2_Builtins.pack_ln
              (FStarC_Reflection_V2_Data.Tv_App
                 (t, (a1, FStarC_Reflection_V2_Data.Q_Explicit))) in
          FStarC_Reflection_V2_Builtins.pack_ln
            (FStarC_Reflection_V2_Data.Tv_App
               (t1, (a2, FStarC_Reflection_V2_Data.Q_Explicit)))
let (mk_fst :
  FStarC_Reflection_Types.universe ->
    FStarC_Reflection_Types.universe ->
      FStarC_Reflection_Types.term ->
        FStarC_Reflection_Types.term ->
          FStarC_Reflection_Types.term -> FStarC_Reflection_Types.term)
  =
  fun u1 ->
    fun u2 ->
      fun a1 ->
        fun a2 ->
          fun e ->
            let t =
              FStarC_Reflection_V2_Builtins.pack_ln
                (FStarC_Reflection_V2_Data.Tv_UInst
                   ((FStarC_Reflection_V2_Builtins.pack_fv fst_lid),
                     [u1; u2])) in
            let t1 =
              FStarC_Reflection_V2_Builtins.pack_ln
                (FStarC_Reflection_V2_Data.Tv_App
                   (t, (a1, FStarC_Reflection_V2_Data.Q_Implicit))) in
            let t2 =
              FStarC_Reflection_V2_Builtins.pack_ln
                (FStarC_Reflection_V2_Data.Tv_App
                   (t1, (a2, FStarC_Reflection_V2_Data.Q_Implicit))) in
            FStarC_Reflection_V2_Builtins.pack_ln
              (FStarC_Reflection_V2_Data.Tv_App
                 (t2, (e, FStarC_Reflection_V2_Data.Q_Explicit)))
let (mk_snd :
  FStarC_Reflection_Types.universe ->
    FStarC_Reflection_Types.universe ->
      FStarC_Reflection_Types.term ->
        FStarC_Reflection_Types.term ->
          FStarC_Reflection_Types.term -> FStarC_Reflection_Types.term)
  =
  fun u1 ->
    fun u2 ->
      fun a1 ->
        fun a2 ->
          fun e ->
            let t =
              FStarC_Reflection_V2_Builtins.pack_ln
                (FStarC_Reflection_V2_Data.Tv_UInst
                   ((FStarC_Reflection_V2_Builtins.pack_fv snd_lid),
                     [u1; u2])) in
            let t1 =
              FStarC_Reflection_V2_Builtins.pack_ln
                (FStarC_Reflection_V2_Data.Tv_App
                   (t, (a1, FStarC_Reflection_V2_Data.Q_Implicit))) in
            let t2 =
              FStarC_Reflection_V2_Builtins.pack_ln
                (FStarC_Reflection_V2_Data.Tv_App
                   (t1, (a2, FStarC_Reflection_V2_Data.Q_Implicit))) in
            FStarC_Reflection_V2_Builtins.pack_ln
              (FStarC_Reflection_V2_Data.Tv_App
                 (t2, (e, FStarC_Reflection_V2_Data.Q_Explicit)))
let (true_tm : FStarC_Reflection_Types.term) =
  FStarC_Reflection_V2_Builtins.pack_ln
    (FStarC_Reflection_V2_Data.Tv_Const FStarC_Reflection_V2_Data.C_True)
let (false_tm : FStarC_Reflection_Types.term) =
  FStarC_Reflection_V2_Builtins.pack_ln
    (FStarC_Reflection_V2_Data.Tv_Const FStarC_Reflection_V2_Data.C_False)
let (star_lid : Prims.string Prims.list) =
  mk_pulse_lib_core_lid "op_Star_Star"
let (mk_star :
  FStarC_Reflection_Types.term ->
    FStarC_Reflection_Types.term -> FStarC_Reflection_Types.term)
  =
  fun l ->
    fun r ->
      let t =
        FStarC_Reflection_V2_Builtins.pack_ln
          (FStarC_Reflection_V2_Data.Tv_FVar
             (FStarC_Reflection_V2_Builtins.pack_fv star_lid)) in
      let t1 =
        FStarC_Reflection_V2_Builtins.pack_ln
          (FStarC_Reflection_V2_Data.Tv_App
             (t, (l, FStarC_Reflection_V2_Data.Q_Explicit))) in
      FStarC_Reflection_V2_Builtins.pack_ln
        (FStarC_Reflection_V2_Data.Tv_App
           (t1, (r, FStarC_Reflection_V2_Data.Q_Explicit)))
let (pure_lid : Prims.string Prims.list) = mk_pulse_lib_core_lid "pure"
let (exists_lid : Prims.string Prims.list) =
  mk_pulse_lib_core_lid "op_exists_Star"
let (pulse_lib_forall : Prims.string Prims.list) = ["Pulse"; "Lib"; "Forall"]
let (mk_pulse_lib_forall_lid : Prims.string -> Prims.string Prims.list) =
  fun s -> FStar_List_Tot_Base.op_At pulse_lib_forall [s]
let (forall_lid : Prims.string Prims.list) =
  mk_pulse_lib_forall_lid "op_forall_Star"
let (args_of :
  FStarC_Reflection_Types.term Prims.list ->
    (FStarC_Reflection_Types.term * FStarC_Reflection_V2_Data.aqualv)
      Prims.list)
  =
  fun tms ->
    FStar_List_Tot_Base.map
      (fun x -> (x, FStarC_Reflection_V2_Data.Q_Explicit)) tms
let (mk_pure : FStarC_Reflection_Types.term -> FStarC_Reflection_Types.term)
  =
  fun p ->
    let t =
      FStarC_Reflection_V2_Builtins.pack_ln
        (FStarC_Reflection_V2_Data.Tv_FVar
           (FStarC_Reflection_V2_Builtins.pack_fv pure_lid)) in
    FStarC_Reflection_V2_Builtins.pack_ln
      (FStarC_Reflection_V2_Data.Tv_App
         (t, (p, FStarC_Reflection_V2_Data.Q_Explicit)))
let (uzero : FStarC_Reflection_Types.universe) =
  FStarC_Reflection_V2_Builtins.pack_universe
    FStarC_Reflection_V2_Data.Uv_Zero
let (uone : FStarC_Reflection_Types.universe) =
  FStarC_Reflection_V2_Builtins.pack_universe
    (FStarC_Reflection_V2_Data.Uv_Succ uzero)
let (pulse_lib_reference : Prims.string Prims.list) =
  ["Pulse"; "Lib"; "Reference"]
let (mk_pulse_lib_reference_lid : Prims.string -> Prims.string Prims.list) =
  fun s -> FStar_List_Tot_Base.op_At pulse_lib_reference [s]
let (mk_squash :
  FStarC_Reflection_Types.universe ->
    FStarC_Reflection_Types.term -> FStarC_Reflection_Types.term)
  =
  fun u ->
    fun ty ->
      let t =
        FStarC_Reflection_V2_Builtins.pack_ln
          (FStarC_Reflection_V2_Data.Tv_UInst
             ((FStarC_Reflection_V2_Builtins.pack_fv
                 FStar_Reflection_Const.squash_qn), [u])) in
      FStarC_Reflection_V2_Builtins.pack_ln
        (FStarC_Reflection_V2_Data.Tv_App
           (t, (ty, FStarC_Reflection_V2_Data.Q_Explicit)))
let (mk_eq2 :
  FStarC_Reflection_Types.universe ->
    FStarC_Reflection_Types.term ->
      FStarC_Reflection_Types.term ->
        FStarC_Reflection_Types.term -> FStarC_Reflection_Types.term)
  =
  fun u ->
    fun ty ->
      fun e1 ->
        fun e2 ->
          let t =
            FStarC_Reflection_V2_Builtins.pack_ln
              (FStarC_Reflection_V2_Data.Tv_UInst
                 ((FStarC_Reflection_V2_Builtins.pack_fv
                     FStar_Reflection_Const.eq2_qn), [u])) in
          let t1 =
            FStarC_Reflection_V2_Builtins.pack_ln
              (FStarC_Reflection_V2_Data.Tv_App
                 (t, (ty, FStarC_Reflection_V2_Data.Q_Implicit))) in
          let t2 =
            FStarC_Reflection_V2_Builtins.pack_ln
              (FStarC_Reflection_V2_Data.Tv_App
                 (t1, (e1, FStarC_Reflection_V2_Data.Q_Explicit))) in
          FStarC_Reflection_V2_Builtins.pack_ln
            (FStarC_Reflection_V2_Data.Tv_App
               (t2, (e2, FStarC_Reflection_V2_Data.Q_Explicit)))
let (stt_admit_lid : Prims.string Prims.list) =
  mk_pulse_lib_core_lid "stt_admit"
let (mk_stt_admit :
  FStarC_Reflection_Types.universe ->
    FStarC_Reflection_Types.term ->
      FStarC_Reflection_Types.term ->
        FStarC_Reflection_Types.term -> FStarC_Reflection_Types.term)
  =
  fun u ->
    fun t ->
      fun pre ->
        fun post ->
          let t1 =
            FStarC_Reflection_V2_Builtins.pack_ln
              (FStarC_Reflection_V2_Data.Tv_UInst
                 ((FStarC_Reflection_V2_Builtins.pack_fv stt_admit_lid), [u])) in
          let t2 =
            FStarC_Reflection_V2_Builtins.pack_ln
              (FStarC_Reflection_V2_Data.Tv_App
                 (t1, (t1, FStarC_Reflection_V2_Data.Q_Explicit))) in
          let t3 =
            FStarC_Reflection_V2_Builtins.pack_ln
              (FStarC_Reflection_V2_Data.Tv_App
                 (t2, (pre, FStarC_Reflection_V2_Data.Q_Explicit))) in
          FStarC_Reflection_V2_Builtins.pack_ln
            (FStarC_Reflection_V2_Data.Tv_App
               (t3, (post, FStarC_Reflection_V2_Data.Q_Explicit)))
let (stt_atomic_admit_lid : Prims.string Prims.list) =
  mk_pulse_lib_core_lid "stt_atomic_admit"
let (mk_stt_atomic_admit :
  FStarC_Reflection_Types.universe ->
    FStarC_Reflection_Types.term ->
      FStarC_Reflection_Types.term ->
        FStarC_Reflection_Types.term -> FStarC_Reflection_Types.term)
  =
  fun u ->
    fun t ->
      fun pre ->
        fun post ->
          let t1 =
            FStarC_Reflection_V2_Builtins.pack_ln
              (FStarC_Reflection_V2_Data.Tv_UInst
                 ((FStarC_Reflection_V2_Builtins.pack_fv stt_atomic_admit_lid),
                   [u])) in
          let t2 =
            FStarC_Reflection_V2_Builtins.pack_ln
              (FStarC_Reflection_V2_Data.Tv_App
                 (t1, (t1, FStarC_Reflection_V2_Data.Q_Explicit))) in
          let t3 =
            FStarC_Reflection_V2_Builtins.pack_ln
              (FStarC_Reflection_V2_Data.Tv_App
                 (t2, (pre, FStarC_Reflection_V2_Data.Q_Explicit))) in
          FStarC_Reflection_V2_Builtins.pack_ln
            (FStarC_Reflection_V2_Data.Tv_App
               (t3, (post, FStarC_Reflection_V2_Data.Q_Explicit)))
let (stt_ghost_admit_lid : Prims.string Prims.list) =
  mk_pulse_lib_core_lid "stt_ghost_admit"
let (mk_stt_ghost_admit :
  FStarC_Reflection_Types.universe ->
    FStarC_Reflection_Types.term ->
      FStarC_Reflection_Types.term ->
        FStarC_Reflection_Types.term -> FStarC_Reflection_Types.term)
  =
  fun u ->
    fun t ->
      fun pre ->
        fun post ->
          let t1 =
            FStarC_Reflection_V2_Builtins.pack_ln
              (FStarC_Reflection_V2_Data.Tv_UInst
                 ((FStarC_Reflection_V2_Builtins.pack_fv stt_ghost_admit_lid),
                   [u])) in
          let t2 =
            FStarC_Reflection_V2_Builtins.pack_ln
              (FStarC_Reflection_V2_Data.Tv_App
                 (t1, (t1, FStarC_Reflection_V2_Data.Q_Explicit))) in
          let t3 =
            FStarC_Reflection_V2_Builtins.pack_ln
              (FStarC_Reflection_V2_Data.Tv_App
                 (t2, (pre, FStarC_Reflection_V2_Data.Q_Explicit))) in
          FStarC_Reflection_V2_Builtins.pack_ln
            (FStarC_Reflection_V2_Data.Tv_App
               (t3, (post, FStarC_Reflection_V2_Data.Q_Explicit)))
let (elim_pure_lid : Prims.string Prims.list) =
  mk_pulse_lib_core_lid "elim_pure"
let (stt_lid : Prims.string Prims.list) = mk_pulse_lib_core_lid "stt"
let (stt_fv : FStarC_Reflection_Types.fv) =
  FStarC_Reflection_V2_Builtins.pack_fv stt_lid
let (stt_tm : FStarC_Reflection_Types.term) =
  FStarC_Reflection_V2_Builtins.pack_ln
    (FStarC_Reflection_V2_Data.Tv_FVar stt_fv)
let (mk_stt_comp :
  FStarC_Reflection_Types.universe ->
    FStarC_Reflection_Types.term ->
      FStarC_Reflection_Types.term ->
        FStarC_Reflection_Types.term -> FStarC_Reflection_Types.term)
  =
  fun u ->
    fun res ->
      fun pre ->
        fun post ->
          let t =
            FStarC_Reflection_V2_Builtins.pack_ln
              (FStarC_Reflection_V2_Data.Tv_UInst (stt_fv, [u])) in
          let t1 =
            FStarC_Reflection_V2_Builtins.pack_ln
              (FStarC_Reflection_V2_Data.Tv_App
                 (t, (res, FStarC_Reflection_V2_Data.Q_Explicit))) in
          let t2 =
            FStarC_Reflection_V2_Builtins.pack_ln
              (FStarC_Reflection_V2_Data.Tv_App
                 (t1, (pre, FStarC_Reflection_V2_Data.Q_Explicit))) in
          FStarC_Reflection_V2_Builtins.pack_ln
            (FStarC_Reflection_V2_Data.Tv_App
               (t2, (post, FStarC_Reflection_V2_Data.Q_Explicit)))
let (stt_atomic_lid : Prims.string Prims.list) =
  mk_pulse_lib_core_lid "stt_atomic"
let (stt_atomic_fv : FStarC_Reflection_Types.fv) =
  FStarC_Reflection_V2_Builtins.pack_fv stt_atomic_lid
let (stt_atomic_tm : FStarC_Reflection_Types.term) =
  FStarC_Reflection_V2_Builtins.pack_ln
    (FStarC_Reflection_V2_Data.Tv_FVar stt_atomic_fv)
let (mk_stt_atomic_comp :
  FStarC_Reflection_Types.term ->
    FStarC_Reflection_Types.universe ->
      FStarC_Reflection_Types.term ->
        FStarC_Reflection_Types.term ->
          FStarC_Reflection_Types.term ->
            FStarC_Reflection_Types.term -> FStarC_Reflection_Types.term)
  =
  fun obs ->
    fun u ->
      fun a ->
        fun inames ->
          fun pre ->
            fun post ->
              let head = stt_atomic_fv in
              let t =
                FStarC_Reflection_V2_Builtins.pack_ln
                  (FStarC_Reflection_V2_Data.Tv_UInst (head, [u])) in
              let t1 =
                FStarC_Reflection_V2_Builtins.pack_ln
                  (FStarC_Reflection_V2_Data.Tv_App
                     (t, (a, FStarC_Reflection_V2_Data.Q_Explicit))) in
              let t2 =
                FStarC_Reflection_V2_Builtins.pack_ln
                  (FStarC_Reflection_V2_Data.Tv_App
                     (t1, (obs, FStarC_Reflection_V2_Data.Q_Implicit))) in
              let t3 =
                FStarC_Reflection_V2_Builtins.pack_ln
                  (FStarC_Reflection_V2_Data.Tv_App
                     (t2, (inames, FStarC_Reflection_V2_Data.Q_Explicit))) in
              let t4 =
                FStarC_Reflection_V2_Builtins.pack_ln
                  (FStarC_Reflection_V2_Data.Tv_App
                     (t3, (pre, FStarC_Reflection_V2_Data.Q_Explicit))) in
              FStarC_Reflection_V2_Builtins.pack_ln
                (FStarC_Reflection_V2_Data.Tv_App
                   (t4, (post, FStarC_Reflection_V2_Data.Q_Explicit)))
let (stt_ghost_lid : Prims.string Prims.list) =
  mk_pulse_lib_core_lid "stt_ghost"
let (stt_ghost_fv : FStarC_Reflection_Types.fv) =
  FStarC_Reflection_V2_Builtins.pack_fv stt_ghost_lid
let (stt_ghost_tm : FStarC_Reflection_Types.term) =
  FStarC_Reflection_V2_Builtins.pack_ln
    (FStarC_Reflection_V2_Data.Tv_FVar stt_ghost_fv)
let (mk_stt_ghost_comp :
  FStarC_Reflection_Types.universe ->
    FStarC_Reflection_Types.term ->
      FStarC_Reflection_Types.term ->
        FStarC_Reflection_Types.term ->
          FStarC_Reflection_Types.term -> FStarC_Reflection_Types.term)
  =
  fun u ->
    fun a ->
      fun inames ->
        fun pre ->
          fun post ->
            let t =
              FStarC_Reflection_V2_Builtins.pack_ln
                (FStarC_Reflection_V2_Data.Tv_UInst (stt_ghost_fv, [u])) in
            let t1 =
              FStarC_Reflection_V2_Builtins.pack_ln
                (FStarC_Reflection_V2_Data.Tv_App
                   (t, (a, FStarC_Reflection_V2_Data.Q_Explicit))) in
            let t2 =
              FStarC_Reflection_V2_Builtins.pack_ln
                (FStarC_Reflection_V2_Data.Tv_App
                   (t1, (inames, FStarC_Reflection_V2_Data.Q_Explicit))) in
            let t3 =
              FStarC_Reflection_V2_Builtins.pack_ln
                (FStarC_Reflection_V2_Data.Tv_App
                   (t2, (pre, FStarC_Reflection_V2_Data.Q_Explicit))) in
            FStarC_Reflection_V2_Builtins.pack_ln
              (FStarC_Reflection_V2_Data.Tv_App
                 (t3, (post, FStarC_Reflection_V2_Data.Q_Explicit)))
let (mk_stt_ghost_comp_post_equiv :
  FStarC_Reflection_Types.env ->
    FStarC_Reflection_Types.universe ->
      FStarC_Reflection_Types.term ->
        FStarC_Reflection_Types.term ->
          FStarC_Reflection_Types.term ->
            FStarC_Reflection_Types.term ->
              FStarC_Reflection_Types.term ->
                (unit, unit, unit) FStar_Reflection_Typing.equiv ->
                  (unit, unit, unit) FStar_Reflection_Typing.equiv)
  =
  fun g ->
    fun u ->
      fun a ->
        fun inames ->
          fun pre ->
            fun post1 ->
              fun post2 ->
                fun posts_equiv ->
                  let t =
                    FStarC_Reflection_V2_Builtins.pack_ln
                      (FStarC_Reflection_V2_Data.Tv_UInst (stt_ghost_fv, [u])) in
                  let t1 =
                    FStarC_Reflection_V2_Builtins.pack_ln
                      (FStarC_Reflection_V2_Data.Tv_App
                         (t, (a, FStarC_Reflection_V2_Data.Q_Explicit))) in
                  let t2 =
                    FStarC_Reflection_V2_Builtins.pack_ln
                      (FStarC_Reflection_V2_Data.Tv_App
                         (t1, (inames, FStarC_Reflection_V2_Data.Q_Explicit))) in
                  let t3 =
                    FStarC_Reflection_V2_Builtins.pack_ln
                      (FStarC_Reflection_V2_Data.Tv_App
                         (t2, (pre, FStarC_Reflection_V2_Data.Q_Explicit))) in
                  FStar_Reflection_Typing.Rel_ctxt
                    (g, post1, post2,
                      (FStar_Reflection_Typing.Ctxt_app_arg
                         (t3, FStarC_Reflection_V2_Data.Q_Explicit,
                           FStar_Reflection_Typing.Ctxt_hole)), posts_equiv)
let (mk_total :
  FStarC_Reflection_Types.typ -> FStarC_Reflection_V2_Data.comp_view) =
  fun t -> FStarC_Reflection_V2_Data.C_Total t
let (mk_ghost :
  FStarC_Reflection_Types.typ -> FStarC_Reflection_V2_Data.comp_view) =
  fun t -> FStarC_Reflection_V2_Data.C_GTotal t
let (binder_of_t_q :
  FStarC_Reflection_Types.term ->
    FStarC_Reflection_V2_Data.aqualv -> FStarC_Reflection_Types.binder)
  = fun t -> fun q -> FStar_Reflection_Typing.binder_of_t_q t q
let (binder_of_t_q_s :
  FStarC_Reflection_Types.term ->
    FStarC_Reflection_V2_Data.aqualv ->
      FStar_Reflection_Typing.pp_name_t -> FStarC_Reflection_Types.binder)
  = fun t -> fun q -> fun s -> FStar_Reflection_Typing.mk_binder s t q
let (bound_var : Prims.nat -> FStarC_Reflection_Types.term) =
  fun i -> FStar_Reflection_Typing.bound_var i
let (mk_name : Prims.nat -> FStarC_Reflection_Types.term) =
  fun i ->
    FStarC_Reflection_V2_Builtins.pack_ln
      (FStarC_Reflection_V2_Data.Tv_Var
         (FStarC_Reflection_V2_Builtins.pack_namedv
            (FStar_Reflection_Typing.make_namedv i)))
type arrow_dom =
  (FStarC_Reflection_Types.term * FStarC_Reflection_V2_Data.aqualv)
let (mk_arrow :
  arrow_dom -> FStarC_Reflection_Types.term -> FStarC_Reflection_Types.term)
  =
  fun f ->
    fun out ->
      let uu___ = f in
      match uu___ with
      | (ty, q) ->
          FStarC_Reflection_V2_Builtins.pack_ln
            (FStarC_Reflection_V2_Data.Tv_Arrow
               ((binder_of_t_q ty q),
                 (FStarC_Reflection_V2_Builtins.pack_comp (mk_total out))))
let (mk_arrow_with_name :
  FStar_Reflection_Typing.pp_name_t ->
    arrow_dom -> FStarC_Reflection_Types.term -> FStarC_Reflection_Types.term)
  =
  fun s ->
    fun f ->
      fun out ->
        let uu___ = f in
        match uu___ with
        | (ty, q) ->
            FStarC_Reflection_V2_Builtins.pack_ln
              (FStarC_Reflection_V2_Data.Tv_Arrow
                 ((binder_of_t_q_s ty q s),
                   (FStarC_Reflection_V2_Builtins.pack_comp (mk_total out))))
let (mk_ghost_arrow_with_name :
  FStar_Reflection_Typing.pp_name_t ->
    arrow_dom -> FStarC_Reflection_Types.term -> FStarC_Reflection_Types.term)
  =
  fun s ->
    fun f ->
      fun out ->
        let uu___ = f in
        match uu___ with
        | (ty, q) ->
            FStarC_Reflection_V2_Builtins.pack_ln
              (FStarC_Reflection_V2_Data.Tv_Arrow
                 ((binder_of_t_q_s ty q s),
                   (FStarC_Reflection_V2_Builtins.pack_comp (mk_ghost out))))
let (mk_abs :
  FStarC_Reflection_Types.term ->
    FStarC_Reflection_V2_Data.aqualv ->
      FStarC_Reflection_Types.term -> FStarC_Reflection_Types.term)
  = fun ty -> fun qual -> fun t -> FStar_Reflection_Typing.mk_abs ty qual t
let (mk_abs_with_name :
  FStar_Reflection_Typing.pp_name_t ->
    FStarC_Reflection_Types.term ->
      FStarC_Reflection_V2_Data.aqualv ->
        FStarC_Reflection_Types.term -> FStarC_Reflection_Types.term)
  =
  fun s ->
    fun ty ->
      fun qual ->
        fun t ->
          FStarC_Reflection_V2_Builtins.pack_ln
            (FStarC_Reflection_V2_Data.Tv_Abs
               ((binder_of_t_q_s ty qual s), t))
let (mk_abs_with_name_and_range :
  FStar_Reflection_Typing.pp_name_t ->
    FStar_Range.range ->
      FStarC_Reflection_Types.term ->
        FStarC_Reflection_V2_Data.aqualv ->
          FStarC_Reflection_Types.term -> FStarC_Reflection_Types.term)
  =
  fun s ->
    fun r ->
      fun ty ->
        fun qual ->
          fun t ->
            let b = binder_of_t_q_s ty qual s in
            let b1 = Pulse_RuntimeUtils.binder_set_range b r in
            FStarC_Reflection_V2_Builtins.pack_ln
              (FStarC_Reflection_V2_Data.Tv_Abs (b1, t))
let (mk_erased :
  FStarC_Reflection_Types.universe ->
    FStarC_Reflection_Types.term -> FStarC_Reflection_Types.term)
  =
  fun u ->
    fun t ->
      let hd =
        FStarC_Reflection_V2_Builtins.pack_ln
          (FStarC_Reflection_V2_Data.Tv_UInst
             ((FStarC_Reflection_V2_Builtins.pack_fv erased_lid), [u])) in
      FStarC_Reflection_V2_Builtins.pack_ln
        (FStarC_Reflection_V2_Data.Tv_App
           (hd, (t, FStarC_Reflection_V2_Data.Q_Explicit)))
let (mk_reveal :
  FStarC_Reflection_Types.universe ->
    FStarC_Reflection_Types.term ->
      FStarC_Reflection_Types.term -> FStarC_Reflection_Types.term)
  =
  fun u ->
    fun t ->
      fun e ->
        let hd =
          FStarC_Reflection_V2_Builtins.pack_ln
            (FStarC_Reflection_V2_Data.Tv_UInst
               ((FStarC_Reflection_V2_Builtins.pack_fv reveal_lid), [u])) in
        let hd1 =
          FStarC_Reflection_V2_Builtins.pack_ln
            (FStarC_Reflection_V2_Data.Tv_App
               (hd, (t, FStarC_Reflection_V2_Data.Q_Implicit))) in
        FStarC_Reflection_V2_Builtins.pack_ln
          (FStarC_Reflection_V2_Data.Tv_App
             (hd1, (e, FStarC_Reflection_V2_Data.Q_Explicit)))
let (elim_exists_lid : Prims.string Prims.list) =
  mk_pulse_lib_core_lid "elim_exists"
let (intro_exists_lid : Prims.string Prims.list) =
  mk_pulse_lib_core_lid "intro_exists"
let (intro_exists_erased_lid : Prims.string Prims.list) =
  mk_pulse_lib_core_lid "intro_exists_erased"
let (mk_exists :
  FStarC_Reflection_Types.universe ->
    FStarC_Reflection_Types.term ->
      FStarC_Reflection_Types.term -> FStarC_Reflection_Types.term)
  =
  fun u ->
    fun a ->
      fun p ->
        let t =
          FStarC_Reflection_V2_Builtins.pack_ln
            (FStarC_Reflection_V2_Data.Tv_UInst
               ((FStarC_Reflection_V2_Builtins.pack_fv exists_lid), [u])) in
        let t1 =
          FStarC_Reflection_V2_Builtins.pack_ln
            (FStarC_Reflection_V2_Data.Tv_App
               (t, (a, FStarC_Reflection_V2_Data.Q_Implicit))) in
        FStarC_Reflection_V2_Builtins.pack_ln
          (FStarC_Reflection_V2_Data.Tv_App
             (t1, (p, FStarC_Reflection_V2_Data.Q_Explicit)))
let (mk_forall :
  FStarC_Reflection_Types.universe ->
    FStarC_Reflection_Types.term ->
      FStarC_Reflection_Types.term -> FStarC_Reflection_Types.term)
  =
  fun u ->
    fun a ->
      fun p ->
        let t =
          FStarC_Reflection_V2_Builtins.pack_ln
            (FStarC_Reflection_V2_Data.Tv_UInst
               ((FStarC_Reflection_V2_Builtins.pack_fv forall_lid), [u])) in
        let t1 =
          FStarC_Reflection_V2_Builtins.pack_ln
            (FStarC_Reflection_V2_Data.Tv_App
               (t, (a, FStarC_Reflection_V2_Data.Q_Implicit))) in
        FStarC_Reflection_V2_Builtins.pack_ln
          (FStarC_Reflection_V2_Data.Tv_App
             (t1, (p, FStarC_Reflection_V2_Data.Q_Explicit)))
let (mk_elim_exists :
  FStarC_Reflection_Types.universe ->
    FStarC_Reflection_Types.term ->
      FStarC_Reflection_Types.term -> FStarC_Reflection_Types.term)
  =
  fun u ->
    fun a ->
      fun p ->
        let t =
          FStarC_Reflection_V2_Builtins.pack_ln
            (FStarC_Reflection_V2_Data.Tv_UInst
               ((FStarC_Reflection_V2_Builtins.pack_fv elim_exists_lid), [u])) in
        let t1 =
          FStarC_Reflection_V2_Builtins.pack_ln
            (FStarC_Reflection_V2_Data.Tv_App
               (t, (a, FStarC_Reflection_V2_Data.Q_Implicit))) in
        FStarC_Reflection_V2_Builtins.pack_ln
          (FStarC_Reflection_V2_Data.Tv_App
             (t1, (p, FStarC_Reflection_V2_Data.Q_Explicit)))
let (mk_intro_exists :
  FStarC_Reflection_Types.universe ->
    FStarC_Reflection_Types.term ->
      FStarC_Reflection_Types.term ->
        FStarC_Reflection_Types.term -> FStarC_Reflection_Types.term)
  =
  fun u ->
    fun a ->
      fun p ->
        fun e ->
          let t =
            FStarC_Reflection_V2_Builtins.pack_ln
              (FStarC_Reflection_V2_Data.Tv_UInst
                 ((FStarC_Reflection_V2_Builtins.pack_fv intro_exists_lid),
                   [u])) in
          let t1 =
            FStarC_Reflection_V2_Builtins.pack_ln
              (FStarC_Reflection_V2_Data.Tv_App
                 (t, (a, FStarC_Reflection_V2_Data.Q_Implicit))) in
          let t2 =
            FStarC_Reflection_V2_Builtins.pack_ln
              (FStarC_Reflection_V2_Data.Tv_App
                 (t1, (p, FStarC_Reflection_V2_Data.Q_Explicit))) in
          FStarC_Reflection_V2_Builtins.pack_ln
            (FStarC_Reflection_V2_Data.Tv_App
               (t2, (e, FStarC_Reflection_V2_Data.Q_Explicit)))
let (mk_intro_exists_erased :
  FStarC_Reflection_Types.universe ->
    FStarC_Reflection_Types.term ->
      FStarC_Reflection_Types.term ->
        FStarC_Reflection_Types.term -> FStarC_Reflection_Types.term)
  =
  fun u ->
    fun a ->
      fun p ->
        fun e ->
          let t =
            FStarC_Reflection_V2_Builtins.pack_ln
              (FStarC_Reflection_V2_Data.Tv_UInst
                 ((FStarC_Reflection_V2_Builtins.pack_fv
                     intro_exists_erased_lid), [u])) in
          let t1 =
            FStarC_Reflection_V2_Builtins.pack_ln
              (FStarC_Reflection_V2_Data.Tv_App
                 (t, (a, FStarC_Reflection_V2_Data.Q_Implicit))) in
          let t2 =
            FStarC_Reflection_V2_Builtins.pack_ln
              (FStarC_Reflection_V2_Data.Tv_App
                 (t1, (p, FStarC_Reflection_V2_Data.Q_Explicit))) in
          FStarC_Reflection_V2_Builtins.pack_ln
            (FStarC_Reflection_V2_Data.Tv_App
               (t2, (e, FStarC_Reflection_V2_Data.Q_Explicit)))
let (while_lid : Prims.string Prims.list) =
  ["Pulse"; "Lib"; "WhileLoop"; "while_loop"]
let (mk_while :
  FStarC_Reflection_Types.term ->
    FStarC_Reflection_Types.term ->
      FStarC_Reflection_Types.term -> FStarC_Reflection_Types.term)
  =
  fun inv ->
    fun cond ->
      fun body ->
        let t =
          FStarC_Reflection_V2_Builtins.pack_ln
            (FStarC_Reflection_V2_Data.Tv_FVar
               (FStarC_Reflection_V2_Builtins.pack_fv while_lid)) in
        let t1 =
          FStarC_Reflection_V2_Builtins.pack_ln
            (FStarC_Reflection_V2_Data.Tv_App
               (t, (inv, FStarC_Reflection_V2_Data.Q_Explicit))) in
        let t2 =
          FStarC_Reflection_V2_Builtins.pack_ln
            (FStarC_Reflection_V2_Data.Tv_App
               (t1, (cond, FStarC_Reflection_V2_Data.Q_Explicit))) in
        FStarC_Reflection_V2_Builtins.pack_ln
          (FStarC_Reflection_V2_Data.Tv_App
             (t2, (body, FStarC_Reflection_V2_Data.Q_Explicit)))
let (slprop_eq_tm :
  FStarC_Reflection_Types.term ->
    FStarC_Reflection_Types.term -> FStarC_Reflection_Types.term)
  =
  fun t1 ->
    fun t2 ->
      let u2 =
        FStarC_Reflection_V2_Builtins.pack_universe
          (FStarC_Reflection_V2_Data.Uv_Succ
             (FStarC_Reflection_V2_Builtins.pack_universe
                (FStarC_Reflection_V2_Data.Uv_Succ
                   (FStarC_Reflection_V2_Builtins.pack_universe
                      FStarC_Reflection_V2_Data.Uv_Zero)))) in
      let t =
        FStarC_Reflection_V2_Builtins.pack_ln
          (FStarC_Reflection_V2_Data.Tv_UInst
             ((FStarC_Reflection_V2_Builtins.pack_fv
                 FStar_Reflection_Const.eq2_qn), [u2])) in
      let t3 =
        FStarC_Reflection_V2_Builtins.pack_ln
          (FStarC_Reflection_V2_Data.Tv_App
             (t,
               ((FStarC_Reflection_V2_Builtins.pack_ln
                   (FStarC_Reflection_V2_Data.Tv_FVar
                      (FStarC_Reflection_V2_Builtins.pack_fv slprop_lid))),
                 FStarC_Reflection_V2_Data.Q_Implicit))) in
      let t4 =
        FStarC_Reflection_V2_Builtins.pack_ln
          (FStarC_Reflection_V2_Data.Tv_App
             (t3, (t1, FStarC_Reflection_V2_Data.Q_Explicit))) in
      let t5 =
        FStarC_Reflection_V2_Builtins.pack_ln
          (FStarC_Reflection_V2_Data.Tv_App
             (t4, (t2, FStarC_Reflection_V2_Data.Q_Explicit))) in
      t5
let (non_informative_lid : Prims.string Prims.list) =
  mk_pulse_lib_noninformative_lid "non_informative"
let (non_informative_rt :
  FStarC_Reflection_Types.universe ->
    FStarC_Reflection_Types.term -> FStarC_Reflection_Types.term)
  =
  fun u ->
    fun a ->
      let t =
        FStarC_Reflection_V2_Builtins.pack_ln
          (FStarC_Reflection_V2_Data.Tv_UInst
             ((FStarC_Reflection_V2_Builtins.pack_fv non_informative_lid),
               [u])) in
      let t1 =
        FStarC_Reflection_V2_Builtins.pack_ln
          (FStarC_Reflection_V2_Data.Tv_App
             (t, (a, FStarC_Reflection_V2_Data.Q_Explicit))) in
      t1
let (stt_slprop_equiv_fv : FStarC_Reflection_Types.fv) =
  FStarC_Reflection_V2_Builtins.pack_fv
    (mk_pulse_lib_core_lid "slprop_equiv")
let (stt_slprop_equiv_tm : FStarC_Reflection_Types.term) =
  FStarC_Reflection_V2_Builtins.pack_ln
    (FStarC_Reflection_V2_Data.Tv_FVar stt_slprop_equiv_fv)
let (stt_slprop_equiv :
  FStarC_Reflection_Types.term ->
    FStarC_Reflection_Types.term -> FStarC_Reflection_Types.term)
  =
  fun t1 ->
    fun t2 ->
      let t =
        FStarC_Reflection_V2_Builtins.pack_ln
          (FStarC_Reflection_V2_Data.Tv_App
             (stt_slprop_equiv_tm,
               (t1, FStarC_Reflection_V2_Data.Q_Explicit))) in
      FStarC_Reflection_V2_Builtins.pack_ln
        (FStarC_Reflection_V2_Data.Tv_App
           (t, (t2, FStarC_Reflection_V2_Data.Q_Explicit)))
let (return_stt_lid : Prims.string Prims.list) =
  mk_pulse_lib_core_lid "return_stt"
let (return_stt_noeq_lid : Prims.string Prims.list) =
  mk_pulse_lib_core_lid "return"
let (return_stt_atomic_lid : Prims.string Prims.list) =
  mk_pulse_lib_core_lid "return_stt_atomic"
let (return_stt_atomic_noeq_lid : Prims.string Prims.list) =
  mk_pulse_lib_core_lid "return_stt_atomic_noeq"
let (return_stt_ghost_lid : Prims.string Prims.list) =
  mk_pulse_lib_core_lid "return_stt_ghost"
let (return_stt_ghost_noeq_lid : Prims.string Prims.list) =
  mk_pulse_lib_core_lid "return_stt_ghost_noeq"
let (mk_stt_return :
  FStarC_Reflection_Types.universe ->
    FStarC_Reflection_Types.term ->
      FStarC_Reflection_Types.term ->
        FStarC_Reflection_Types.term -> FStarC_Reflection_Types.term)
  =
  fun u ->
    fun ty ->
      fun t ->
        fun post ->
          let t1 =
            FStarC_Reflection_V2_Builtins.pack_ln
              (FStarC_Reflection_V2_Data.Tv_UInst
                 ((FStarC_Reflection_V2_Builtins.pack_fv return_stt_lid),
                   [u])) in
          let t2 =
            FStarC_Reflection_V2_Builtins.pack_ln
              (FStarC_Reflection_V2_Data.Tv_App
                 (t1, (ty, FStarC_Reflection_V2_Data.Q_Implicit))) in
          let t3 =
            FStarC_Reflection_V2_Builtins.pack_ln
              (FStarC_Reflection_V2_Data.Tv_App
                 (t2, (t2, FStarC_Reflection_V2_Data.Q_Explicit))) in
          FStarC_Reflection_V2_Builtins.pack_ln
            (FStarC_Reflection_V2_Data.Tv_App
               (t3, (post, FStarC_Reflection_V2_Data.Q_Explicit)))
let (mk_stt_return_noeq :
  FStarC_Reflection_Types.universe ->
    FStarC_Reflection_Types.term ->
      FStarC_Reflection_Types.term ->
        FStarC_Reflection_Types.term -> FStarC_Reflection_Types.term)
  =
  fun u ->
    fun ty ->
      fun t ->
        fun post ->
          let t1 =
            FStarC_Reflection_V2_Builtins.pack_ln
              (FStarC_Reflection_V2_Data.Tv_UInst
                 ((FStarC_Reflection_V2_Builtins.pack_fv return_stt_noeq_lid),
                   [u])) in
          let t2 =
            FStarC_Reflection_V2_Builtins.pack_ln
              (FStarC_Reflection_V2_Data.Tv_App
                 (t1, (ty, FStarC_Reflection_V2_Data.Q_Implicit))) in
          let t3 =
            FStarC_Reflection_V2_Builtins.pack_ln
              (FStarC_Reflection_V2_Data.Tv_App
                 (t2, (t2, FStarC_Reflection_V2_Data.Q_Explicit))) in
          FStarC_Reflection_V2_Builtins.pack_ln
            (FStarC_Reflection_V2_Data.Tv_App
               (t3, (post, FStarC_Reflection_V2_Data.Q_Explicit)))
let (mk_stt_atomic_return :
  FStarC_Reflection_Types.universe ->
    FStarC_Reflection_Types.term ->
      FStarC_Reflection_Types.term ->
        FStarC_Reflection_Types.term -> FStarC_Reflection_Types.term)
  =
  fun u ->
    fun ty ->
      fun t ->
        fun post ->
          let t1 =
            FStarC_Reflection_V2_Builtins.pack_ln
              (FStarC_Reflection_V2_Data.Tv_UInst
                 ((FStarC_Reflection_V2_Builtins.pack_fv
                     return_stt_atomic_lid), [u])) in
          let t2 =
            FStarC_Reflection_V2_Builtins.pack_ln
              (FStarC_Reflection_V2_Data.Tv_App
                 (t1, (ty, FStarC_Reflection_V2_Data.Q_Implicit))) in
          let t3 =
            FStarC_Reflection_V2_Builtins.pack_ln
              (FStarC_Reflection_V2_Data.Tv_App
                 (t2, (t2, FStarC_Reflection_V2_Data.Q_Explicit))) in
          FStarC_Reflection_V2_Builtins.pack_ln
            (FStarC_Reflection_V2_Data.Tv_App
               (t3, (post, FStarC_Reflection_V2_Data.Q_Explicit)))
let (mk_stt_atomic_return_noeq :
  FStarC_Reflection_Types.universe ->
    FStarC_Reflection_Types.term ->
      FStarC_Reflection_Types.term ->
        FStarC_Reflection_Types.term -> FStarC_Reflection_Types.term)
  =
  fun u ->
    fun ty ->
      fun t ->
        fun post ->
          let t1 =
            FStarC_Reflection_V2_Builtins.pack_ln
              (FStarC_Reflection_V2_Data.Tv_UInst
                 ((FStarC_Reflection_V2_Builtins.pack_fv
                     return_stt_atomic_noeq_lid), [u])) in
          let t2 =
            FStarC_Reflection_V2_Builtins.pack_ln
              (FStarC_Reflection_V2_Data.Tv_App
                 (t1, (ty, FStarC_Reflection_V2_Data.Q_Implicit))) in
          let t3 =
            FStarC_Reflection_V2_Builtins.pack_ln
              (FStarC_Reflection_V2_Data.Tv_App
                 (t2, (t2, FStarC_Reflection_V2_Data.Q_Explicit))) in
          FStarC_Reflection_V2_Builtins.pack_ln
            (FStarC_Reflection_V2_Data.Tv_App
               (t3, (post, FStarC_Reflection_V2_Data.Q_Explicit)))
let (mk_stt_ghost_return :
  FStarC_Reflection_Types.universe ->
    FStarC_Reflection_Types.term ->
      FStarC_Reflection_Types.term ->
        FStarC_Reflection_Types.term -> FStarC_Reflection_Types.term)
  =
  fun u ->
    fun ty ->
      fun t ->
        fun post ->
          let t1 =
            FStarC_Reflection_V2_Builtins.pack_ln
              (FStarC_Reflection_V2_Data.Tv_UInst
                 ((FStarC_Reflection_V2_Builtins.pack_fv return_stt_ghost_lid),
                   [u])) in
          let t2 =
            FStarC_Reflection_V2_Builtins.pack_ln
              (FStarC_Reflection_V2_Data.Tv_App
                 (t1, (ty, FStarC_Reflection_V2_Data.Q_Implicit))) in
          let t3 =
            FStarC_Reflection_V2_Builtins.pack_ln
              (FStarC_Reflection_V2_Data.Tv_App
                 (t2, (t2, FStarC_Reflection_V2_Data.Q_Explicit))) in
          FStarC_Reflection_V2_Builtins.pack_ln
            (FStarC_Reflection_V2_Data.Tv_App
               (t3, (post, FStarC_Reflection_V2_Data.Q_Explicit)))
let (mk_stt_ghost_return_noeq :
  FStarC_Reflection_Types.universe ->
    FStarC_Reflection_Types.term ->
      FStarC_Reflection_Types.term ->
        FStarC_Reflection_Types.term -> FStarC_Reflection_Types.term)
  =
  fun u ->
    fun ty ->
      fun t ->
        fun post ->
          let t1 =
            FStarC_Reflection_V2_Builtins.pack_ln
              (FStarC_Reflection_V2_Data.Tv_UInst
                 ((FStarC_Reflection_V2_Builtins.pack_fv
                     return_stt_ghost_noeq_lid), [u])) in
          let t2 =
            FStarC_Reflection_V2_Builtins.pack_ln
              (FStarC_Reflection_V2_Data.Tv_App
                 (t1, (ty, FStarC_Reflection_V2_Data.Q_Implicit))) in
          let t3 =
            FStarC_Reflection_V2_Builtins.pack_ln
              (FStarC_Reflection_V2_Data.Tv_App
                 (t2, (t2, FStarC_Reflection_V2_Data.Q_Explicit))) in
          FStarC_Reflection_V2_Builtins.pack_ln
            (FStarC_Reflection_V2_Data.Tv_App
               (t3, (post, FStarC_Reflection_V2_Data.Q_Explicit)))
let (mk_lift_atomic_stt :
  FStarC_Reflection_Types.universe ->
    FStarC_Reflection_Types.term ->
      FStarC_Reflection_Types.term ->
        FStarC_Reflection_Types.term ->
          FStarC_Reflection_Types.term -> FStarC_Reflection_Types.term)
  =
  fun u ->
    fun a ->
      fun pre ->
        fun post ->
          fun e ->
            let lid = mk_pulse_lib_core_lid "lift_stt_atomic" in
            let t =
              FStarC_Reflection_V2_Builtins.pack_ln
                (FStarC_Reflection_V2_Data.Tv_UInst
                   ((FStarC_Reflection_V2_Builtins.pack_fv lid), [u])) in
            let t1 =
              FStarC_Reflection_V2_Builtins.pack_ln
                (FStarC_Reflection_V2_Data.Tv_App
                   (t, (a, FStarC_Reflection_V2_Data.Q_Implicit))) in
            let t2 =
              FStarC_Reflection_V2_Builtins.pack_ln
                (FStarC_Reflection_V2_Data.Tv_App
                   (t1, (pre, FStarC_Reflection_V2_Data.Q_Implicit))) in
            let t3 =
              FStarC_Reflection_V2_Builtins.pack_ln
                (FStarC_Reflection_V2_Data.Tv_App
                   (t2, (post, FStarC_Reflection_V2_Data.Q_Implicit))) in
            FStarC_Reflection_V2_Builtins.pack_ln
              (FStarC_Reflection_V2_Data.Tv_App
                 (t3, (e, FStarC_Reflection_V2_Data.Q_Explicit)))
let (mk_lift_ghost_neutral :
  FStarC_Reflection_Types.universe ->
    FStarC_Reflection_Types.term ->
      FStarC_Reflection_Types.term ->
        FStarC_Reflection_Types.term ->
          FStarC_Reflection_Types.term ->
            FStarC_Reflection_Types.term -> FStarC_Reflection_Types.term)
  =
  fun u ->
    fun a ->
      fun pre ->
        fun post ->
          fun e ->
            fun reveal_a ->
              let lid = mk_pulse_lib_core_lid "lift_ghost_neutral" in
              let t =
                FStarC_Reflection_V2_Builtins.pack_ln
                  (FStarC_Reflection_V2_Data.Tv_UInst
                     ((FStarC_Reflection_V2_Builtins.pack_fv lid), [u])) in
              let t1 =
                FStarC_Reflection_V2_Builtins.pack_ln
                  (FStarC_Reflection_V2_Data.Tv_App
                     (t, (a, FStarC_Reflection_V2_Data.Q_Implicit))) in
              let t2 =
                FStarC_Reflection_V2_Builtins.pack_ln
                  (FStarC_Reflection_V2_Data.Tv_App
                     (t1, (pre, FStarC_Reflection_V2_Data.Q_Implicit))) in
              let t3 =
                FStarC_Reflection_V2_Builtins.pack_ln
                  (FStarC_Reflection_V2_Data.Tv_App
                     (t2, (post, FStarC_Reflection_V2_Data.Q_Implicit))) in
              let t4 =
                FStarC_Reflection_V2_Builtins.pack_ln
                  (FStarC_Reflection_V2_Data.Tv_App
                     (t3, (e, FStarC_Reflection_V2_Data.Q_Explicit))) in
              FStarC_Reflection_V2_Builtins.pack_ln
                (FStarC_Reflection_V2_Data.Tv_App
                   (t4, (reveal_a, FStarC_Reflection_V2_Data.Q_Explicit)))
let (mk_lift_neutral_ghost :
  FStarC_Reflection_Types.universe ->
    FStarC_Reflection_Types.term ->
      FStarC_Reflection_Types.term ->
        FStarC_Reflection_Types.term ->
          FStarC_Reflection_Types.term -> FStarC_Reflection_Types.term)
  =
  fun u ->
    fun a ->
      fun pre ->
        fun post ->
          fun e ->
            let lid = mk_pulse_lib_core_lid "lift_neutral_ghost" in
            let t =
              FStarC_Reflection_V2_Builtins.pack_ln
                (FStarC_Reflection_V2_Data.Tv_UInst
                   ((FStarC_Reflection_V2_Builtins.pack_fv lid), [u])) in
            let t1 =
              FStarC_Reflection_V2_Builtins.pack_ln
                (FStarC_Reflection_V2_Data.Tv_App
                   (t, (a, FStarC_Reflection_V2_Data.Q_Implicit))) in
            let t2 =
              FStarC_Reflection_V2_Builtins.pack_ln
                (FStarC_Reflection_V2_Data.Tv_App
                   (t1, (pre, FStarC_Reflection_V2_Data.Q_Implicit))) in
            let t3 =
              FStarC_Reflection_V2_Builtins.pack_ln
                (FStarC_Reflection_V2_Data.Tv_App
                   (t2, (post, FStarC_Reflection_V2_Data.Q_Implicit))) in
            let t4 =
              FStarC_Reflection_V2_Builtins.pack_ln
                (FStarC_Reflection_V2_Data.Tv_App
                   (t3, (e, FStarC_Reflection_V2_Data.Q_Explicit))) in
            t4
let (mk_lift_observability :
  FStarC_Reflection_Types.universe ->
    FStarC_Reflection_Types.term ->
      FStarC_Reflection_Types.term ->
        FStarC_Reflection_Types.term ->
          FStarC_Reflection_Types.term ->
            FStarC_Reflection_Types.term ->
              FStarC_Reflection_Types.term ->
                FStarC_Reflection_Types.term -> FStarC_Reflection_Types.term)
  =
  fun u ->
    fun a ->
      fun o1 ->
        fun o2 ->
          fun opened ->
            fun pre ->
              fun post ->
                fun e ->
                  let lid = mk_pulse_lib_core_lid "lift_observablility" in
                  let t =
                    FStarC_Reflection_V2_Builtins.pack_ln
                      (FStarC_Reflection_V2_Data.Tv_UInst
                         ((FStarC_Reflection_V2_Builtins.pack_fv lid), [u])) in
                  let t1 =
                    FStarC_Reflection_V2_Builtins.pack_ln
                      (FStarC_Reflection_V2_Data.Tv_App
                         (t, (a, FStarC_Reflection_V2_Data.Q_Implicit))) in
                  let t2 =
                    FStarC_Reflection_V2_Builtins.pack_ln
                      (FStarC_Reflection_V2_Data.Tv_App
                         (t1, (o1, FStarC_Reflection_V2_Data.Q_Implicit))) in
                  let t3 =
                    FStarC_Reflection_V2_Builtins.pack_ln
                      (FStarC_Reflection_V2_Data.Tv_App
                         (t2, (o2, FStarC_Reflection_V2_Data.Q_Implicit))) in
                  let t4 =
                    FStarC_Reflection_V2_Builtins.pack_ln
                      (FStarC_Reflection_V2_Data.Tv_App
                         (t3, (opened, FStarC_Reflection_V2_Data.Q_Implicit))) in
                  let t5 =
                    FStarC_Reflection_V2_Builtins.pack_ln
                      (FStarC_Reflection_V2_Data.Tv_App
                         (t4, (pre, FStarC_Reflection_V2_Data.Q_Implicit))) in
                  let t6 =
                    FStarC_Reflection_V2_Builtins.pack_ln
                      (FStarC_Reflection_V2_Data.Tv_App
                         (t5, (post, FStarC_Reflection_V2_Data.Q_Implicit))) in
                  FStarC_Reflection_V2_Builtins.pack_ln
                    (FStarC_Reflection_V2_Data.Tv_App
                       (t6, (e, FStarC_Reflection_V2_Data.Q_Explicit)))
let (mk_bind_stt :
  FStarC_Reflection_Types.universe ->
    FStarC_Reflection_Types.universe ->
      FStarC_Reflection_Types.term ->
        FStarC_Reflection_Types.term ->
          FStarC_Reflection_Types.term ->
            FStarC_Reflection_Types.term ->
              FStarC_Reflection_Types.term ->
                FStarC_Reflection_Types.term ->
                  FStarC_Reflection_Types.term ->
                    FStarC_Reflection_Types.term)
  =
  fun u1 ->
    fun u2 ->
      fun ty1 ->
        fun ty2 ->
          fun pre1 ->
            fun post1 ->
              fun post2 ->
                fun t1 ->
                  fun t2 ->
                    let bind_lid = mk_pulse_lib_core_lid "bind_stt" in
                    let head =
                      FStarC_Reflection_V2_Builtins.pack_ln
                        (FStarC_Reflection_V2_Data.Tv_UInst
                           ((FStarC_Reflection_V2_Builtins.pack_fv bind_lid),
                             [u1; u2])) in
                    FStar_Reflection_V2_Derived.mk_app
                      (FStar_Reflection_V2_Derived.mk_app
                         (FStar_Reflection_V2_Derived.mk_app
                            (FStar_Reflection_V2_Derived.mk_app
                               (FStar_Reflection_V2_Derived.mk_app
                                  (FStar_Reflection_V2_Derived.mk_app
                                     (FStar_Reflection_V2_Derived.mk_app head
                                        [(ty1,
                                           FStarC_Reflection_V2_Data.Q_Implicit)])
                                     [(ty2,
                                        FStarC_Reflection_V2_Data.Q_Implicit)])
                                  [(pre1,
                                     FStarC_Reflection_V2_Data.Q_Implicit)])
                               [(post1, FStarC_Reflection_V2_Data.Q_Implicit)])
                            [(post2, FStarC_Reflection_V2_Data.Q_Implicit)])
                         [(t1, FStarC_Reflection_V2_Data.Q_Explicit)])
                      [(t2, FStarC_Reflection_V2_Data.Q_Explicit)]
let (mk_bind_ghost :
  FStarC_Reflection_Types.universe ->
    FStarC_Reflection_Types.universe ->
      FStarC_Reflection_Types.term ->
        FStarC_Reflection_Types.term ->
          FStarC_Reflection_Types.term ->
            FStarC_Reflection_Types.term ->
              FStarC_Reflection_Types.term ->
                FStarC_Reflection_Types.term ->
                  FStarC_Reflection_Types.term ->
                    FStarC_Reflection_Types.term ->
                      FStarC_Reflection_Types.term)
  =
  fun u1 ->
    fun u2 ->
      fun a ->
        fun b ->
          fun opens ->
            fun pre1 ->
              fun post1 ->
                fun post2 ->
                  fun e1 ->
                    fun e2 ->
                      let bind_lid = mk_pulse_lib_core_lid "bind_ghost" in
                      let t =
                        FStarC_Reflection_V2_Builtins.pack_ln
                          (FStarC_Reflection_V2_Data.Tv_UInst
                             ((FStarC_Reflection_V2_Builtins.pack_fv bind_lid),
                               [u1; u2])) in
                      let t1 =
                        FStarC_Reflection_V2_Builtins.pack_ln
                          (FStarC_Reflection_V2_Data.Tv_App
                             (t, (a, FStarC_Reflection_V2_Data.Q_Implicit))) in
                      let t2 =
                        FStarC_Reflection_V2_Builtins.pack_ln
                          (FStarC_Reflection_V2_Data.Tv_App
                             (t1, (b, FStarC_Reflection_V2_Data.Q_Implicit))) in
                      let t3 =
                        FStarC_Reflection_V2_Builtins.pack_ln
                          (FStarC_Reflection_V2_Data.Tv_App
                             (t2,
                               (opens, FStarC_Reflection_V2_Data.Q_Implicit))) in
                      let t4 =
                        FStarC_Reflection_V2_Builtins.pack_ln
                          (FStarC_Reflection_V2_Data.Tv_App
                             (t3,
                               (pre1, FStarC_Reflection_V2_Data.Q_Implicit))) in
                      let t5 =
                        FStarC_Reflection_V2_Builtins.pack_ln
                          (FStarC_Reflection_V2_Data.Tv_App
                             (t4,
                               (post1, FStarC_Reflection_V2_Data.Q_Implicit))) in
                      let t6 =
                        FStarC_Reflection_V2_Builtins.pack_ln
                          (FStarC_Reflection_V2_Data.Tv_App
                             (t5,
                               (post2, FStarC_Reflection_V2_Data.Q_Implicit))) in
                      let t7 =
                        FStarC_Reflection_V2_Builtins.pack_ln
                          (FStarC_Reflection_V2_Data.Tv_App
                             (t6, (e1, FStarC_Reflection_V2_Data.Q_Explicit))) in
                      FStarC_Reflection_V2_Builtins.pack_ln
                        (FStarC_Reflection_V2_Data.Tv_App
                           (t7, (e2, FStarC_Reflection_V2_Data.Q_Explicit)))
let (mk_bind_atomic :
  FStarC_Reflection_Types.universe ->
    FStarC_Reflection_Types.universe ->
      FStarC_Reflection_Types.term ->
        FStarC_Reflection_Types.term ->
          FStarC_Reflection_Types.term ->
            FStarC_Reflection_Types.term ->
              FStarC_Reflection_Types.term ->
                FStarC_Reflection_Types.term ->
                  FStarC_Reflection_Types.term ->
                    FStarC_Reflection_Types.term ->
                      FStarC_Reflection_Types.term ->
                        FStarC_Reflection_Types.term ->
                          FStarC_Reflection_Types.term)
  =
  fun u1 ->
    fun u2 ->
      fun a ->
        fun b ->
          fun obs1 ->
            fun obs2 ->
              fun opens ->
                fun pre1 ->
                  fun post1 ->
                    fun post2 ->
                      fun e1 ->
                        fun e2 ->
                          let bind_lid = mk_pulse_lib_core_lid "bind_atomic" in
                          let t =
                            FStarC_Reflection_V2_Builtins.pack_ln
                              (FStarC_Reflection_V2_Data.Tv_UInst
                                 ((FStarC_Reflection_V2_Builtins.pack_fv
                                     bind_lid), [u1; u2])) in
                          let t1 =
                            FStarC_Reflection_V2_Builtins.pack_ln
                              (FStarC_Reflection_V2_Data.Tv_App
                                 (t,
                                   (a, FStarC_Reflection_V2_Data.Q_Implicit))) in
                          let t2 =
                            FStarC_Reflection_V2_Builtins.pack_ln
                              (FStarC_Reflection_V2_Data.Tv_App
                                 (t1,
                                   (b, FStarC_Reflection_V2_Data.Q_Implicit))) in
                          let t3 =
                            FStarC_Reflection_V2_Builtins.pack_ln
                              (FStarC_Reflection_V2_Data.Tv_App
                                 (t2,
                                   (obs1,
                                     FStarC_Reflection_V2_Data.Q_Implicit))) in
                          let t4 =
                            FStarC_Reflection_V2_Builtins.pack_ln
                              (FStarC_Reflection_V2_Data.Tv_App
                                 (t3,
                                   (obs2,
                                     FStarC_Reflection_V2_Data.Q_Implicit))) in
                          let t5 =
                            FStarC_Reflection_V2_Builtins.pack_ln
                              (FStarC_Reflection_V2_Data.Tv_App
                                 (t4,
                                   (opens,
                                     FStarC_Reflection_V2_Data.Q_Implicit))) in
                          let t6 =
                            FStarC_Reflection_V2_Builtins.pack_ln
                              (FStarC_Reflection_V2_Data.Tv_App
                                 (t5,
                                   (pre1,
                                     FStarC_Reflection_V2_Data.Q_Implicit))) in
                          let t7 =
                            FStarC_Reflection_V2_Builtins.pack_ln
                              (FStarC_Reflection_V2_Data.Tv_App
                                 (t6,
                                   (post1,
                                     FStarC_Reflection_V2_Data.Q_Implicit))) in
                          let t8 =
                            FStarC_Reflection_V2_Builtins.pack_ln
                              (FStarC_Reflection_V2_Data.Tv_App
                                 (t7,
                                   (post2,
                                     FStarC_Reflection_V2_Data.Q_Implicit))) in
                          let t9 =
                            FStarC_Reflection_V2_Builtins.pack_ln
                              (FStarC_Reflection_V2_Data.Tv_App
                                 (t8,
                                   (e1, FStarC_Reflection_V2_Data.Q_Explicit))) in
                          FStarC_Reflection_V2_Builtins.pack_ln
                            (FStarC_Reflection_V2_Data.Tv_App
                               (t9,
                                 (e2, FStarC_Reflection_V2_Data.Q_Explicit)))
let (mk_frame_stt :
  FStarC_Reflection_Types.universe ->
    FStarC_Reflection_Types.term ->
      FStarC_Reflection_Types.term ->
        FStarC_Reflection_Types.term ->
          FStarC_Reflection_Types.term ->
            FStarC_Reflection_Types.term -> FStarC_Reflection_Types.term)
  =
  fun u ->
    fun ty ->
      fun pre ->
        fun post ->
          fun frame ->
            fun t ->
              let frame_lid = mk_pulse_lib_core_lid "frame_stt" in
              let frame_fv = FStarC_Reflection_V2_Builtins.pack_fv frame_lid in
              let frame_univ_inst u1 =
                FStarC_Reflection_V2_Builtins.pack_ln
                  (FStarC_Reflection_V2_Data.Tv_UInst
                     ((FStarC_Reflection_V2_Builtins.pack_fv frame_lid),
                       [u1])) in
              let head = frame_univ_inst u in
              FStar_Reflection_V2_Derived.mk_app
                (FStar_Reflection_V2_Derived.mk_app
                   (FStar_Reflection_V2_Derived.mk_app
                      (FStar_Reflection_V2_Derived.mk_app
                         (FStar_Reflection_V2_Derived.mk_app head
                            [(ty, FStarC_Reflection_V2_Data.Q_Implicit)])
                         [(pre, FStarC_Reflection_V2_Data.Q_Implicit)])
                      [(post, FStarC_Reflection_V2_Data.Q_Implicit)])
                   [(frame, FStarC_Reflection_V2_Data.Q_Explicit)])
                [(t, FStarC_Reflection_V2_Data.Q_Explicit)]
let (mk_frame_stt_atomic :
  FStarC_Reflection_Types.universe ->
    FStarC_Reflection_Types.term ->
      FStarC_Reflection_Types.term ->
        FStarC_Reflection_Types.term ->
          FStarC_Reflection_Types.term ->
            FStarC_Reflection_Types.term ->
              FStarC_Reflection_Types.term -> FStarC_Reflection_Types.term)
  =
  fun u ->
    fun a ->
      fun opened ->
        fun pre ->
          fun post ->
            fun frame ->
              fun e ->
                let lid = mk_pulse_lib_core_lid "frame_atomic" in
                let t =
                  FStarC_Reflection_V2_Builtins.pack_ln
                    (FStarC_Reflection_V2_Data.Tv_UInst
                       ((FStarC_Reflection_V2_Builtins.pack_fv lid), [u])) in
                let t1 =
                  FStarC_Reflection_V2_Builtins.pack_ln
                    (FStarC_Reflection_V2_Data.Tv_App
                       (t, (a, FStarC_Reflection_V2_Data.Q_Implicit))) in
                let t2 =
                  FStarC_Reflection_V2_Builtins.pack_ln
                    (FStarC_Reflection_V2_Data.Tv_App
                       (t1, (opened, FStarC_Reflection_V2_Data.Q_Implicit))) in
                let t3 =
                  FStarC_Reflection_V2_Builtins.pack_ln
                    (FStarC_Reflection_V2_Data.Tv_App
                       (t2, (pre, FStarC_Reflection_V2_Data.Q_Implicit))) in
                let t4 =
                  FStarC_Reflection_V2_Builtins.pack_ln
                    (FStarC_Reflection_V2_Data.Tv_App
                       (t3, (post, FStarC_Reflection_V2_Data.Q_Implicit))) in
                let t5 =
                  FStarC_Reflection_V2_Builtins.pack_ln
                    (FStarC_Reflection_V2_Data.Tv_App
                       (t4, (frame, FStarC_Reflection_V2_Data.Q_Explicit))) in
                FStarC_Reflection_V2_Builtins.pack_ln
                  (FStarC_Reflection_V2_Data.Tv_App
                     (t5, (e, FStarC_Reflection_V2_Data.Q_Explicit)))
let (mk_frame_stt_ghost :
  FStarC_Reflection_Types.universe ->
    FStarC_Reflection_Types.term ->
      FStarC_Reflection_Types.term ->
        FStarC_Reflection_Types.term ->
          FStarC_Reflection_Types.term ->
            FStarC_Reflection_Types.term -> FStarC_Reflection_Types.term)
  =
  fun u ->
    fun a ->
      fun pre ->
        fun post ->
          fun frame ->
            fun e ->
              let lid = mk_pulse_lib_core_lid "frame_ghost" in
              let t =
                FStarC_Reflection_V2_Builtins.pack_ln
                  (FStarC_Reflection_V2_Data.Tv_UInst
                     ((FStarC_Reflection_V2_Builtins.pack_fv lid), [u])) in
              let t1 =
                FStarC_Reflection_V2_Builtins.pack_ln
                  (FStarC_Reflection_V2_Data.Tv_App
                     (t, (a, FStarC_Reflection_V2_Data.Q_Implicit))) in
              let t2 =
                FStarC_Reflection_V2_Builtins.pack_ln
                  (FStarC_Reflection_V2_Data.Tv_App
                     (t1, (pre, FStarC_Reflection_V2_Data.Q_Implicit))) in
              let t3 =
                FStarC_Reflection_V2_Builtins.pack_ln
                  (FStarC_Reflection_V2_Data.Tv_App
                     (t2, (post, FStarC_Reflection_V2_Data.Q_Implicit))) in
              let t4 =
                FStarC_Reflection_V2_Builtins.pack_ln
                  (FStarC_Reflection_V2_Data.Tv_App
                     (t3, (frame, FStarC_Reflection_V2_Data.Q_Explicit))) in
              FStarC_Reflection_V2_Builtins.pack_ln
                (FStarC_Reflection_V2_Data.Tv_App
                   (t4, (e, FStarC_Reflection_V2_Data.Q_Explicit)))
let (mk_sub_stt :
  FStarC_Reflection_Types.universe ->
    FStarC_Reflection_Types.term ->
      FStarC_Reflection_Types.term ->
        FStarC_Reflection_Types.term ->
          FStarC_Reflection_Types.term ->
            FStarC_Reflection_Types.term ->
              FStarC_Reflection_Types.term -> FStarC_Reflection_Types.term)
  =
  fun u ->
    fun ty ->
      fun pre1 ->
        fun pre2 ->
          fun post1 ->
            fun post2 ->
              fun t ->
                let subsumption_lid = mk_pulse_lib_core_lid "sub_stt" in
                let subsumption_fv =
                  FStarC_Reflection_V2_Builtins.pack_fv subsumption_lid in
                let subsumption_univ_inst u1 =
                  FStarC_Reflection_V2_Builtins.pack_ln
                    (FStarC_Reflection_V2_Data.Tv_UInst
                       (subsumption_fv, [u1])) in
                let head = subsumption_univ_inst u in
                FStar_Reflection_V2_Derived.mk_app
                  (FStar_Reflection_V2_Derived.mk_app
                     (FStar_Reflection_V2_Derived.mk_app
                        (FStar_Reflection_V2_Derived.mk_app
                           (FStar_Reflection_V2_Derived.mk_app
                              (FStar_Reflection_V2_Derived.mk_app
                                 (FStar_Reflection_V2_Derived.mk_app
                                    (FStar_Reflection_V2_Derived.mk_app head
                                       [(ty,
                                          FStarC_Reflection_V2_Data.Q_Implicit)])
                                    [(pre1,
                                       FStarC_Reflection_V2_Data.Q_Implicit)])
                                 [(pre2,
                                    FStarC_Reflection_V2_Data.Q_Explicit)])
                              [(post1, FStarC_Reflection_V2_Data.Q_Implicit)])
                           [(post2, FStarC_Reflection_V2_Data.Q_Explicit)])
                        [((FStarC_Reflection_V2_Builtins.pack_ln
                             (FStarC_Reflection_V2_Data.Tv_Const
                                FStarC_Reflection_V2_Data.C_Unit)),
                           FStarC_Reflection_V2_Data.Q_Explicit)])
                     [((FStarC_Reflection_V2_Builtins.pack_ln
                          (FStarC_Reflection_V2_Data.Tv_Const
                             FStarC_Reflection_V2_Data.C_Unit)),
                        FStarC_Reflection_V2_Data.Q_Explicit)])
                  [(t, FStarC_Reflection_V2_Data.Q_Explicit)]
let (mk_sub_stt_atomic :
  FStarC_Reflection_Types.universe ->
    FStarC_Reflection_Types.term ->
      FStarC_Reflection_Types.term ->
        FStarC_Reflection_Types.term ->
          FStarC_Reflection_Types.term ->
            FStarC_Reflection_Types.term ->
              FStarC_Reflection_Types.term ->
                FStarC_Reflection_Types.term -> FStarC_Reflection_Types.term)
  =
  fun u ->
    fun a ->
      fun opened ->
        fun pre1 ->
          fun pre2 ->
            fun post1 ->
              fun post2 ->
                fun e ->
                  let lid = mk_pulse_lib_core_lid "sub_atomic" in
                  let t =
                    FStarC_Reflection_V2_Builtins.pack_ln
                      (FStarC_Reflection_V2_Data.Tv_UInst
                         ((FStarC_Reflection_V2_Builtins.pack_fv lid), [u])) in
                  let t1 =
                    FStarC_Reflection_V2_Builtins.pack_ln
                      (FStarC_Reflection_V2_Data.Tv_App
                         (t, (a, FStarC_Reflection_V2_Data.Q_Implicit))) in
                  let t2 =
                    FStarC_Reflection_V2_Builtins.pack_ln
                      (FStarC_Reflection_V2_Data.Tv_App
                         (t1, (opened, FStarC_Reflection_V2_Data.Q_Implicit))) in
                  let t3 =
                    FStarC_Reflection_V2_Builtins.pack_ln
                      (FStarC_Reflection_V2_Data.Tv_App
                         (t2, (pre1, FStarC_Reflection_V2_Data.Q_Implicit))) in
                  let t4 =
                    FStarC_Reflection_V2_Builtins.pack_ln
                      (FStarC_Reflection_V2_Data.Tv_App
                         (t3, (pre2, FStarC_Reflection_V2_Data.Q_Explicit))) in
                  let t5 =
                    FStarC_Reflection_V2_Builtins.pack_ln
                      (FStarC_Reflection_V2_Data.Tv_App
                         (t4, (post1, FStarC_Reflection_V2_Data.Q_Implicit))) in
                  let t6 =
                    FStarC_Reflection_V2_Builtins.pack_ln
                      (FStarC_Reflection_V2_Data.Tv_App
                         (t5, (post2, FStarC_Reflection_V2_Data.Q_Explicit))) in
                  let t7 =
                    FStarC_Reflection_V2_Builtins.pack_ln
                      (FStarC_Reflection_V2_Data.Tv_App
                         (t6,
                           ((FStarC_Reflection_V2_Builtins.pack_ln
                               (FStarC_Reflection_V2_Data.Tv_Const
                                  FStarC_Reflection_V2_Data.C_Unit)),
                             FStarC_Reflection_V2_Data.Q_Explicit))) in
                  let t8 =
                    FStarC_Reflection_V2_Builtins.pack_ln
                      (FStarC_Reflection_V2_Data.Tv_App
                         (t7,
                           ((FStarC_Reflection_V2_Builtins.pack_ln
                               (FStarC_Reflection_V2_Data.Tv_Const
                                  FStarC_Reflection_V2_Data.C_Unit)),
                             FStarC_Reflection_V2_Data.Q_Explicit))) in
                  FStarC_Reflection_V2_Builtins.pack_ln
                    (FStarC_Reflection_V2_Data.Tv_App
                       (t8, (e, FStarC_Reflection_V2_Data.Q_Explicit)))
let (mk_sub_inv_atomic :
  FStarC_Reflection_Types.universe ->
    FStarC_Reflection_Types.term ->
      FStarC_Reflection_Types.term ->
        FStarC_Reflection_Types.term ->
          FStarC_Reflection_Types.term ->
            FStarC_Reflection_Types.term ->
              FStarC_Reflection_Types.term -> FStarC_Reflection_Types.term)
  =
  fun u ->
    fun a ->
      fun pre ->
        fun post ->
          fun opens1 ->
            fun opens2 ->
              fun e ->
                let lid = mk_pulse_lib_core_lid "sub_invs_atomic" in
                let head =
                  FStarC_Reflection_V2_Builtins.pack_ln
                    (FStarC_Reflection_V2_Data.Tv_UInst
                       ((FStarC_Reflection_V2_Builtins.pack_fv lid), [u])) in
                FStar_Reflection_V2_Derived.mk_app head
                  [(a, FStarC_Reflection_V2_Data.Q_Implicit);
                  (opens1, FStarC_Reflection_V2_Data.Q_Implicit);
                  (opens2, FStarC_Reflection_V2_Data.Q_Implicit);
                  (pre, FStarC_Reflection_V2_Data.Q_Implicit);
                  (post, FStarC_Reflection_V2_Data.Q_Implicit);
                  (e, FStarC_Reflection_V2_Data.Q_Explicit)]
let (mk_sub_stt_ghost :
  FStarC_Reflection_Types.universe ->
    FStarC_Reflection_Types.term ->
      FStarC_Reflection_Types.term ->
        FStarC_Reflection_Types.term ->
          FStarC_Reflection_Types.term ->
            FStarC_Reflection_Types.term ->
              FStarC_Reflection_Types.term -> FStarC_Reflection_Types.term)
  =
  fun u ->
    fun a ->
      fun pre1 ->
        fun pre2 ->
          fun post1 ->
            fun post2 ->
              fun e ->
                let lid = mk_pulse_lib_core_lid "sub_ghost" in
                let t =
                  FStarC_Reflection_V2_Builtins.pack_ln
                    (FStarC_Reflection_V2_Data.Tv_UInst
                       ((FStarC_Reflection_V2_Builtins.pack_fv lid), [u])) in
                let t1 =
                  FStarC_Reflection_V2_Builtins.pack_ln
                    (FStarC_Reflection_V2_Data.Tv_App
                       (t, (a, FStarC_Reflection_V2_Data.Q_Implicit))) in
                let t2 =
                  FStarC_Reflection_V2_Builtins.pack_ln
                    (FStarC_Reflection_V2_Data.Tv_App
                       (t1, (pre1, FStarC_Reflection_V2_Data.Q_Implicit))) in
                let t3 =
                  FStarC_Reflection_V2_Builtins.pack_ln
                    (FStarC_Reflection_V2_Data.Tv_App
                       (t2, (pre2, FStarC_Reflection_V2_Data.Q_Explicit))) in
                let t4 =
                  FStarC_Reflection_V2_Builtins.pack_ln
                    (FStarC_Reflection_V2_Data.Tv_App
                       (t3, (post1, FStarC_Reflection_V2_Data.Q_Implicit))) in
                let t5 =
                  FStarC_Reflection_V2_Builtins.pack_ln
                    (FStarC_Reflection_V2_Data.Tv_App
                       (t4, (post2, FStarC_Reflection_V2_Data.Q_Explicit))) in
                let t6 =
                  FStarC_Reflection_V2_Builtins.pack_ln
                    (FStarC_Reflection_V2_Data.Tv_App
                       (t5,
                         ((FStarC_Reflection_V2_Builtins.pack_ln
                             (FStarC_Reflection_V2_Data.Tv_Const
                                FStarC_Reflection_V2_Data.C_Unit)),
                           FStarC_Reflection_V2_Data.Q_Explicit))) in
                let t7 =
                  FStarC_Reflection_V2_Builtins.pack_ln
                    (FStarC_Reflection_V2_Data.Tv_App
                       (t6,
                         ((FStarC_Reflection_V2_Builtins.pack_ln
                             (FStarC_Reflection_V2_Data.Tv_Const
                                FStarC_Reflection_V2_Data.C_Unit)),
                           FStarC_Reflection_V2_Data.Q_Explicit))) in
                FStarC_Reflection_V2_Builtins.pack_ln
                  (FStarC_Reflection_V2_Data.Tv_App
                     (t7, (e, FStarC_Reflection_V2_Data.Q_Explicit)))
let (mk_par :
  FStarC_Reflection_Types.universe ->
    FStarC_Reflection_Types.term ->
      FStarC_Reflection_Types.term ->
        FStarC_Reflection_Types.term ->
          FStarC_Reflection_Types.term ->
            FStarC_Reflection_Types.term ->
              FStarC_Reflection_Types.term ->
                FStarC_Reflection_Types.term ->
                  FStarC_Reflection_Types.term ->
                    FStarC_Reflection_Types.term)
  =
  fun u ->
    fun aL ->
      fun aR ->
        fun preL ->
          fun postL ->
            fun preR ->
              fun postR ->
                fun eL ->
                  fun eR ->
                    let lid = mk_pulse_lib_core_lid "par_stt" in
                    let t =
                      FStarC_Reflection_V2_Builtins.pack_ln
                        (FStarC_Reflection_V2_Data.Tv_UInst
                           ((FStarC_Reflection_V2_Builtins.pack_fv lid), [u])) in
                    let t1 =
                      FStarC_Reflection_V2_Builtins.pack_ln
                        (FStarC_Reflection_V2_Data.Tv_App
                           (t, (aL, FStarC_Reflection_V2_Data.Q_Implicit))) in
                    let t2 =
                      FStarC_Reflection_V2_Builtins.pack_ln
                        (FStarC_Reflection_V2_Data.Tv_App
                           (t1, (aR, FStarC_Reflection_V2_Data.Q_Implicit))) in
                    let t3 =
                      FStarC_Reflection_V2_Builtins.pack_ln
                        (FStarC_Reflection_V2_Data.Tv_App
                           (t2, (preL, FStarC_Reflection_V2_Data.Q_Implicit))) in
                    let t4 =
                      FStarC_Reflection_V2_Builtins.pack_ln
                        (FStarC_Reflection_V2_Data.Tv_App
                           (t3,
                             (postL, FStarC_Reflection_V2_Data.Q_Implicit))) in
                    let t5 =
                      FStarC_Reflection_V2_Builtins.pack_ln
                        (FStarC_Reflection_V2_Data.Tv_App
                           (t4, (preR, FStarC_Reflection_V2_Data.Q_Implicit))) in
                    let t6 =
                      FStarC_Reflection_V2_Builtins.pack_ln
                        (FStarC_Reflection_V2_Data.Tv_App
                           (t5,
                             (postR, FStarC_Reflection_V2_Data.Q_Implicit))) in
                    let t7 =
                      FStarC_Reflection_V2_Builtins.pack_ln
                        (FStarC_Reflection_V2_Data.Tv_App
                           (t6, (eL, FStarC_Reflection_V2_Data.Q_Explicit))) in
                    FStarC_Reflection_V2_Builtins.pack_ln
                      (FStarC_Reflection_V2_Data.Tv_App
                         (t7, (eR, FStarC_Reflection_V2_Data.Q_Explicit)))
let (tm_rewrite_tactic_t : FStarC_Reflection_Types.term) =
  let fv =
    FStarC_Reflection_V2_Builtins.pack_fv
      (mk_pulse_lib_core_lid "rewrite_tactic_t") in
  FStarC_Reflection_V2_Builtins.pack_ln
    (FStarC_Reflection_V2_Data.Tv_FVar fv)
let (mk_rewrite :
  FStarC_Reflection_Types.term ->
    FStarC_Reflection_Types.term -> FStarC_Reflection_Types.term)
  =
  fun p ->
    fun q ->
      let t =
        FStarC_Reflection_V2_Builtins.pack_ln
          (FStarC_Reflection_V2_Data.Tv_FVar
             (FStarC_Reflection_V2_Builtins.pack_fv
                (mk_pulse_lib_core_lid "rewrite"))) in
      let t1 =
        FStarC_Reflection_V2_Builtins.pack_ln
          (FStarC_Reflection_V2_Data.Tv_App
             (t, (p, FStarC_Reflection_V2_Data.Q_Explicit))) in
      let t2 =
        FStarC_Reflection_V2_Builtins.pack_ln
          (FStarC_Reflection_V2_Data.Tv_App
             (t1, (q, FStarC_Reflection_V2_Data.Q_Explicit))) in
      FStarC_Reflection_V2_Builtins.pack_ln
        (FStarC_Reflection_V2_Data.Tv_App
           (t2,
             ((FStarC_Reflection_V2_Builtins.pack_ln
                 (FStarC_Reflection_V2_Data.Tv_Const
                    FStarC_Reflection_V2_Data.C_Unit)),
               FStarC_Reflection_V2_Data.Q_Explicit)))
let (mk_withlocal :
  FStarC_Reflection_Types.universe ->
    FStarC_Reflection_Types.term ->
      FStarC_Reflection_Types.term ->
        FStarC_Reflection_Types.term ->
          FStarC_Reflection_Types.term ->
            FStarC_Reflection_Types.term ->
              FStarC_Reflection_Types.term -> FStarC_Reflection_Types.term)
  =
  fun ret_u ->
    fun a ->
      fun init ->
        fun pre ->
          fun ret_t ->
            fun post ->
              fun body ->
                let lid = mk_pulse_lib_reference_lid "with_local" in
                let t =
                  FStarC_Reflection_V2_Builtins.pack_ln
                    (FStarC_Reflection_V2_Data.Tv_UInst
                       ((FStarC_Reflection_V2_Builtins.pack_fv lid), [ret_u])) in
                let t1 =
                  FStarC_Reflection_V2_Builtins.pack_ln
                    (FStarC_Reflection_V2_Data.Tv_App
                       (t, (a, FStarC_Reflection_V2_Data.Q_Implicit))) in
                let t2 =
                  FStarC_Reflection_V2_Builtins.pack_ln
                    (FStarC_Reflection_V2_Data.Tv_App
                       (t1, (init, FStarC_Reflection_V2_Data.Q_Explicit))) in
                let t3 =
                  FStarC_Reflection_V2_Builtins.pack_ln
                    (FStarC_Reflection_V2_Data.Tv_App
                       (t2, (pre, FStarC_Reflection_V2_Data.Q_Implicit))) in
                let t4 =
                  FStarC_Reflection_V2_Builtins.pack_ln
                    (FStarC_Reflection_V2_Data.Tv_App
                       (t3, (ret_t, FStarC_Reflection_V2_Data.Q_Implicit))) in
                let t5 =
                  FStarC_Reflection_V2_Builtins.pack_ln
                    (FStarC_Reflection_V2_Data.Tv_App
                       (t4, (post, FStarC_Reflection_V2_Data.Q_Implicit))) in
                FStarC_Reflection_V2_Builtins.pack_ln
                  (FStarC_Reflection_V2_Data.Tv_App
                     (t5, (body, FStarC_Reflection_V2_Data.Q_Explicit)))
let (mk_star_equiv :
  FStarC_Reflection_Types.env ->
    FStarC_Reflection_Types.term ->
      FStarC_Reflection_Types.term ->
        FStarC_Reflection_Types.term ->
          FStarC_Reflection_Types.term ->
            (unit, unit, unit) FStar_Reflection_Typing.equiv ->
              (unit, unit, unit) FStar_Reflection_Typing.equiv ->
                (unit, unit, unit) FStar_Reflection_Typing.equiv)
  =
  fun g ->
    fun t1 ->
      fun t2 -> fun t3 -> fun t4 -> fun eq1 -> fun eq2 -> Prims.admit ()
let (mk_stt_comp_equiv :
  FStarC_Reflection_Types.env ->
    FStarC_Reflection_Types.universe ->
      FStarC_Reflection_Types.term ->
        FStarC_Reflection_Types.term ->
          FStarC_Reflection_Types.term ->
            FStarC_Reflection_Types.term ->
              FStarC_Reflection_Types.term ->
                FStarC_Reflection_Types.term ->
                  (unit, unit, unit) FStar_Reflection_Typing.equiv ->
                    (unit, unit, unit) FStar_Reflection_Typing.equiv ->
                      (unit, unit, unit) FStar_Reflection_Typing.equiv ->
                        (unit, unit, unit) FStar_Reflection_Typing.equiv)
  =
  fun g ->
    fun u ->
      fun res1 ->
        fun pre1 ->
          fun post1 ->
            fun res2 ->
              fun pre2 ->
                fun post2 ->
                  fun res_eq -> fun pre_eq -> fun post_eq -> Prims.admit ()
let (mk_stt_atomic_comp_equiv :
  FStarC_Reflection_Types.env ->
    FStarC_Reflection_Types.term ->
      FStarC_Reflection_Types.universe ->
        FStarC_Reflection_Types.term ->
          FStarC_Reflection_Types.term ->
            FStarC_Reflection_Types.term ->
              FStarC_Reflection_Types.term ->
                FStarC_Reflection_Types.term ->
                  FStarC_Reflection_Types.term ->
                    (unit, unit, unit) FStar_Reflection_Typing.equiv ->
                      (unit, unit, unit) FStar_Reflection_Typing.equiv ->
                        (unit, unit, unit) FStar_Reflection_Typing.equiv)
  =
  fun g ->
    fun obs ->
      fun u ->
        fun res ->
          fun inames ->
            fun pre1 ->
              fun post1 ->
                fun pre2 ->
                  fun post2 -> fun pre_eq -> fun post_eq -> Prims.admit ()
let (mk_stt_ghost_comp_equiv :
  FStarC_Reflection_Types.env ->
    FStarC_Reflection_Types.universe ->
      FStarC_Reflection_Types.term ->
        FStarC_Reflection_Types.term ->
          FStarC_Reflection_Types.term ->
            FStarC_Reflection_Types.term ->
              FStarC_Reflection_Types.term ->
                FStarC_Reflection_Types.term ->
                  (unit, unit, unit) FStar_Reflection_Typing.equiv ->
                    (unit, unit, unit) FStar_Reflection_Typing.equiv ->
                      (unit, unit, unit) FStar_Reflection_Typing.equiv)
  =
  fun g ->
    fun u ->
      fun res ->
        fun inames ->
          fun pre1 ->
            fun post1 ->
              fun pre2 ->
                fun post2 -> fun pre_eq -> fun post_eq -> Prims.admit ()
let (ref_lid : Prims.string Prims.list) = mk_pulse_lib_reference_lid "ref"
let (pts_to_lid : Prims.string Prims.list) =
  mk_pulse_lib_reference_lid "pts_to"
let (mk_ref : FStarC_Reflection_Types.term -> FStarC_Reflection_Types.term) =
  fun a ->
    let t =
      FStarC_Reflection_V2_Builtins.pack_ln
        (FStarC_Reflection_V2_Data.Tv_FVar
           (FStarC_Reflection_V2_Builtins.pack_fv ref_lid)) in
    FStarC_Reflection_V2_Builtins.pack_ln
      (FStarC_Reflection_V2_Data.Tv_App
         (t, (a, FStarC_Reflection_V2_Data.Q_Explicit)))
let (mk_pts_to :
  FStarC_Reflection_Types.term ->
    FStarC_Reflection_Types.term ->
      FStarC_Reflection_Types.term ->
        FStarC_Reflection_Types.term -> FStarC_Reflection_Types.term)
  =
  fun a ->
    fun r ->
      fun perm ->
        fun v ->
          let t =
            FStarC_Reflection_V2_Builtins.pack_ln
              (FStarC_Reflection_V2_Data.Tv_FVar
                 (FStarC_Reflection_V2_Builtins.pack_fv pts_to_lid)) in
          let t1 =
            FStarC_Reflection_V2_Builtins.pack_ln
              (FStarC_Reflection_V2_Data.Tv_App
                 (t, (a, FStarC_Reflection_V2_Data.Q_Implicit))) in
          let t2 =
            FStarC_Reflection_V2_Builtins.pack_ln
              (FStarC_Reflection_V2_Data.Tv_App
                 (t1, (r, FStarC_Reflection_V2_Data.Q_Explicit))) in
          let t3 =
            FStarC_Reflection_V2_Builtins.pack_ln
              (FStarC_Reflection_V2_Data.Tv_App
                 (t2, (perm, FStarC_Reflection_V2_Data.Q_Implicit))) in
          FStarC_Reflection_V2_Builtins.pack_ln
            (FStarC_Reflection_V2_Data.Tv_App
               (t3, (v, FStarC_Reflection_V2_Data.Q_Explicit)))
let (pulse_lib_array_core : Prims.string Prims.list) =
  ["Pulse"; "Lib"; "Array"; "Core"]
let (mk_pulse_lib_array_core_lid : Prims.string -> Prims.string Prims.list) =
  fun s -> FStar_List_Tot_Base.op_At pulse_lib_array_core [s]
let (array_lid : Prims.string Prims.list) =
  mk_pulse_lib_array_core_lid "array"
let (array_pts_to_lid : Prims.string Prims.list) =
  mk_pulse_lib_array_core_lid "pts_to"
let (array_length_lid : Prims.string Prims.list) =
  mk_pulse_lib_array_core_lid "length"
let (array_is_full_lid : Prims.string Prims.list) =
  mk_pulse_lib_array_core_lid "is_full_array"
let (mk_array : FStarC_Reflection_Types.term -> FStarC_Reflection_Types.term)
  =
  fun a ->
    let t =
      FStarC_Reflection_V2_Builtins.pack_ln
        (FStarC_Reflection_V2_Data.Tv_FVar
           (FStarC_Reflection_V2_Builtins.pack_fv array_lid)) in
    FStarC_Reflection_V2_Builtins.pack_ln
      (FStarC_Reflection_V2_Data.Tv_App
         (t, (a, FStarC_Reflection_V2_Data.Q_Explicit)))
let (mk_array_length :
  FStarC_Reflection_Types.term ->
    FStarC_Reflection_Types.term -> FStarC_Reflection_Types.term)
  =
  fun a ->
    fun arr ->
      let t =
        FStarC_Reflection_V2_Builtins.pack_ln
          (FStarC_Reflection_V2_Data.Tv_FVar
             (FStarC_Reflection_V2_Builtins.pack_fv array_length_lid)) in
      let t1 =
        FStarC_Reflection_V2_Builtins.pack_ln
          (FStarC_Reflection_V2_Data.Tv_App
             (t, (a, FStarC_Reflection_V2_Data.Q_Implicit))) in
      FStarC_Reflection_V2_Builtins.pack_ln
        (FStarC_Reflection_V2_Data.Tv_App
           (t1, (arr, FStarC_Reflection_V2_Data.Q_Explicit)))
let (mk_array_pts_to :
  FStarC_Reflection_Types.term ->
    FStarC_Reflection_Types.term ->
      FStarC_Reflection_Types.term ->
        FStarC_Reflection_Types.term -> FStarC_Reflection_Types.term)
  =
  fun a ->
    fun arr ->
      fun perm ->
        fun v ->
          let t =
            FStarC_Reflection_V2_Builtins.pack_ln
              (FStarC_Reflection_V2_Data.Tv_FVar
                 (FStarC_Reflection_V2_Builtins.pack_fv array_pts_to_lid)) in
          let t1 =
            FStarC_Reflection_V2_Builtins.pack_ln
              (FStarC_Reflection_V2_Data.Tv_App
                 (t, (a, FStarC_Reflection_V2_Data.Q_Implicit))) in
          let t2 =
            FStarC_Reflection_V2_Builtins.pack_ln
              (FStarC_Reflection_V2_Data.Tv_App
                 (t1, (arr, FStarC_Reflection_V2_Data.Q_Explicit))) in
          let t3 =
            FStarC_Reflection_V2_Builtins.pack_ln
              (FStarC_Reflection_V2_Data.Tv_App
                 (t2, (perm, FStarC_Reflection_V2_Data.Q_Implicit))) in
          FStarC_Reflection_V2_Builtins.pack_ln
            (FStarC_Reflection_V2_Data.Tv_App
               (t3, (v, FStarC_Reflection_V2_Data.Q_Explicit)))
let (mk_seq :
  FStarC_Reflection_Types.universe ->
    FStarC_Reflection_Types.term -> FStarC_Reflection_Types.term)
  =
  fun u ->
    fun a ->
      let t =
        FStarC_Reflection_V2_Builtins.pack_ln
          (FStarC_Reflection_V2_Data.Tv_UInst
             ((FStarC_Reflection_V2_Builtins.pack_fv seq_lid), [u])) in
      FStarC_Reflection_V2_Builtins.pack_ln
        (FStarC_Reflection_V2_Data.Tv_App
           (t, (a, FStarC_Reflection_V2_Data.Q_Explicit)))
let (mk_seq_create :
  FStarC_Reflection_Types.universe ->
    FStarC_Reflection_Types.term ->
      FStarC_Reflection_Types.term ->
        FStarC_Reflection_Types.term -> FStarC_Reflection_Types.term)
  =
  fun u ->
    fun a ->
      fun len ->
        fun v ->
          let t =
            FStarC_Reflection_V2_Builtins.pack_ln
              (FStarC_Reflection_V2_Data.Tv_UInst
                 ((FStarC_Reflection_V2_Builtins.pack_fv seq_create_lid),
                   [u])) in
          let t1 =
            FStarC_Reflection_V2_Builtins.pack_ln
              (FStarC_Reflection_V2_Data.Tv_App
                 (t, (a, FStarC_Reflection_V2_Data.Q_Implicit))) in
          let t2 =
            FStarC_Reflection_V2_Builtins.pack_ln
              (FStarC_Reflection_V2_Data.Tv_App
                 (t1, (len, FStarC_Reflection_V2_Data.Q_Explicit))) in
          FStarC_Reflection_V2_Builtins.pack_ln
            (FStarC_Reflection_V2_Data.Tv_App
               (t2, (v, FStarC_Reflection_V2_Data.Q_Explicit)))
let (mk_withlocalarray :
  FStarC_Reflection_Types.universe ->
    FStarC_Reflection_Types.term ->
      FStarC_Reflection_Types.term ->
        FStarC_Reflection_Types.term ->
          FStarC_Reflection_Types.term ->
            FStarC_Reflection_Types.term ->
              FStarC_Reflection_Types.term ->
                FStarC_Reflection_Types.term -> FStarC_Reflection_Types.term)
  =
  fun ret_u ->
    fun a ->
      fun init ->
        fun len ->
          fun pre ->
            fun ret_t ->
              fun post ->
                fun body ->
                  let lid = mk_pulse_lib_array_core_lid "with_local" in
                  let t =
                    FStarC_Reflection_V2_Builtins.pack_ln
                      (FStarC_Reflection_V2_Data.Tv_UInst
                         ((FStarC_Reflection_V2_Builtins.pack_fv lid),
                           [ret_u])) in
                  let t1 =
                    FStarC_Reflection_V2_Builtins.pack_ln
                      (FStarC_Reflection_V2_Data.Tv_App
                         (t, (a, FStarC_Reflection_V2_Data.Q_Implicit))) in
                  let t2 =
                    FStarC_Reflection_V2_Builtins.pack_ln
                      (FStarC_Reflection_V2_Data.Tv_App
                         (t1, (init, FStarC_Reflection_V2_Data.Q_Explicit))) in
                  let t3 =
                    FStarC_Reflection_V2_Builtins.pack_ln
                      (FStarC_Reflection_V2_Data.Tv_App
                         (t2, (len, FStarC_Reflection_V2_Data.Q_Explicit))) in
                  let t4 =
                    FStarC_Reflection_V2_Builtins.pack_ln
                      (FStarC_Reflection_V2_Data.Tv_App
                         (t3, (pre, FStarC_Reflection_V2_Data.Q_Implicit))) in
                  let t5 =
                    FStarC_Reflection_V2_Builtins.pack_ln
                      (FStarC_Reflection_V2_Data.Tv_App
                         (t4, (ret_t, FStarC_Reflection_V2_Data.Q_Implicit))) in
                  let t6 =
                    FStarC_Reflection_V2_Builtins.pack_ln
                      (FStarC_Reflection_V2_Data.Tv_App
                         (t5, (post, FStarC_Reflection_V2_Data.Q_Implicit))) in
                  FStarC_Reflection_V2_Builtins.pack_ln
                    (FStarC_Reflection_V2_Data.Tv_App
                       (t6, (body, FStarC_Reflection_V2_Data.Q_Explicit)))
let (mk_szv : FStarC_Reflection_Types.term -> FStarC_Reflection_Types.term) =
  fun n ->
    let t =
      FStarC_Reflection_V2_Builtins.pack_ln
        (FStarC_Reflection_V2_Data.Tv_FVar
           (FStarC_Reflection_V2_Builtins.pack_fv szv_lid)) in
    FStarC_Reflection_V2_Builtins.pack_ln
      (FStarC_Reflection_V2_Data.Tv_App
         (t, (n, FStarC_Reflection_V2_Data.Q_Explicit)))
let (mk_opaque_let :
  FStarC_Reflection_Types.env ->
    FStarC_Reflection_Types.name ->
      Prims.string ->
        unit ->
          FStarC_Reflection_Types.typ ->
            ((unit, unit) FStar_Reflection_Typing.sigelt_for, unit)
              FStar_Tactics_Effect.tac_repr)
  =
  fun uu___4 ->
    fun uu___3 ->
      fun uu___2 ->
        fun uu___1 ->
          fun uu___ ->
            (fun g ->
               fun cur_module ->
                 fun nm ->
                   fun tm ->
                     fun ty ->
                       Obj.magic
                         (FStar_Tactics_Effect.lift_div_tac
                            (fun uu___ ->
                               (true,
                                 (FStarC_Reflection_V2_Builtins.pack_sigelt
                                    (FStarC_Reflection_V2_Data.Sg_Let
                                       (false,
                                         [FStarC_Reflection_V2_Builtins.pack_lb
                                            {
                                              FStarC_Reflection_V2_Data.lb_fv
                                                =
                                                (FStarC_Reflection_V2_Builtins.pack_fv
                                                   (FStar_List_Tot_Base.op_At
                                                      cur_module [nm]));
                                              FStarC_Reflection_V2_Data.lb_us
                                                = [];
                                              FStarC_Reflection_V2_Data.lb_typ
                                                = ty;
                                              FStarC_Reflection_V2_Data.lb_def
                                                =
                                                (FStarC_Reflection_V2_Builtins.pack_ln
                                                   FStarC_Reflection_V2_Data.Tv_Unknown)
                                            }]))),
                                 FStar_Pervasives_Native.None)))) uu___4
              uu___3 uu___2 uu___1 uu___
let (mk_observability_lid : Prims.string -> Prims.string Prims.list) =
  fun l -> ["PulseCore"; "Observability"; l]
let (observable_lid : Prims.string Prims.list) =
  mk_observability_lid "Observable"
let (neutral_lid : Prims.string Prims.list) = mk_observability_lid "Neutral"
let (iname_lid : Prims.string Prims.list) = mk_pulse_lib_core_lid "iname"
let (inames_lid : Prims.string Prims.list) = mk_pulse_lib_core_lid "inames"
let (inv_lid : Prims.string Prims.list) = mk_pulse_lib_core_lid "inv"
let (emp_inames_lid : Prims.string Prims.list) =
  mk_pulse_lib_core_lid "emp_inames"
let (all_inames_lid : Prims.string Prims.list) =
  mk_pulse_lib_core_lid "all_inames"
let (add_inv_lid : Prims.string Prims.list) = mk_pulse_lib_core_lid "add_inv"
let (remove_inv_lid : Prims.string Prims.list) =
  mk_pulse_lib_core_lid "remove_inv"
let (remove_inv_tm :
  FStarC_Reflection_Types.term ->
    FStarC_Reflection_Types.term -> FStarC_Reflection_Types.term)
  =
  fun is ->
    fun iname ->
      let h =
        FStarC_Reflection_V2_Builtins.pack_ln
          (FStarC_Reflection_V2_Data.Tv_FVar
             (FStarC_Reflection_V2_Builtins.pack_fv remove_inv_lid)) in
      FStar_Reflection_V2_Derived.mk_app h [ex is; ex iname]
let (mk_mem_inv :
  FStarC_Reflection_Types.term ->
    FStarC_Reflection_Types.term -> FStarC_Reflection_Types.term)
  =
  fun is ->
    fun iname ->
      let mem_inv_tm = mk_pulse_lib_core_lid "mem_inv" in
      let t =
        FStarC_Reflection_V2_Builtins.pack_ln
          (FStarC_Reflection_V2_Data.Tv_FVar
             (FStarC_Reflection_V2_Builtins.pack_fv mem_inv_tm)) in
      FStar_Reflection_V2_Derived.mk_app t [ex is; ex iname]
let (inv_disjointness_goal :
  FStarC_Reflection_Types.term ->
    FStarC_Reflection_Types.term -> FStarC_Reflection_Types.term)
  =
  fun is ->
    fun iname ->
      let p = mk_mem_inv is iname in
      let u0 =
        FStarC_Reflection_V2_Builtins.pack_universe
          FStarC_Reflection_V2_Data.Uv_Zero in
      let p1 = mk_reveal u0 bool_tm p in
      mk_eq2 u0 bool_tm
        (FStarC_Reflection_V2_Builtins.pack_ln
           (FStarC_Reflection_V2_Data.Tv_Const
              FStarC_Reflection_V2_Data.C_False)) p1