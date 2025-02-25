open Prims
let (push_context :
  Prims.string ->
    Pulse_Syntax_Base.range -> Pulse_Typing_Env.env -> Pulse_Typing_Env.env)
  = fun ctx -> fun r -> fun g -> Pulse_Typing_Env.push_context g ctx r
let (debug :
  Pulse_Typing_Env.env ->
    (unit -> (Prims.string, unit) FStar_Tactics_Effect.tac_repr) ->
      (unit, unit) FStar_Tactics_Effect.tac_repr)
  =
  fun g ->
    fun msg ->
      let uu___ = FStarC_Tactics_V2_Builtins.debugging () in
      FStar_Tactics_Effect.tac_bind
        (FStar_Sealed.seal
           (Obj.magic
              (FStar_Range.mk_range "Pulse.Checker.Pure.fst"
                 (Prims.of_int (37)) (Prims.of_int (22)) (Prims.of_int (37))
                 (Prims.of_int (36)))))
        (FStar_Sealed.seal
           (Obj.magic
              (FStar_Range.mk_range "Pulse.Checker.Pure.fst"
                 (Prims.of_int (38)) (Prims.of_int (2)) (Prims.of_int (39))
                 (Prims.of_int (47))))) (Obj.magic uu___)
        (fun uu___1 ->
           (fun tac_debugging ->
              if
                tac_debugging ||
                  (Pulse_RuntimeUtils.debug_at_level
                     (Pulse_Typing_Env.fstar_env g) "refl_tc_callbacks")
              then
                Obj.magic
                  (Obj.repr
                     (let uu___1 =
                        let uu___2 = Pulse_Typing_Env.print_context g in
                        FStar_Tactics_Effect.tac_bind
                          (FStar_Sealed.seal
                             (Obj.magic
                                (FStar_Range.mk_range
                                   "Pulse.Checker.Pure.fst"
                                   (Prims.of_int (39)) (Prims.of_int (16))
                                   (Prims.of_int (39)) (Prims.of_int (31)))))
                          (FStar_Sealed.seal
                             (Obj.magic
                                (FStar_Range.mk_range
                                   "Pulse.Checker.Pure.fst"
                                   (Prims.of_int (39)) (Prims.of_int (15))
                                   (Prims.of_int (39)) (Prims.of_int (47)))))
                          (Obj.magic uu___2)
                          (fun uu___3 ->
                             (fun uu___3 ->
                                let uu___4 =
                                  let uu___5 = msg () in
                                  FStar_Tactics_Effect.tac_bind
                                    (FStar_Sealed.seal
                                       (Obj.magic
                                          (FStar_Range.mk_range
                                             "Pulse.Checker.Pure.fst"
                                             (Prims.of_int (39))
                                             (Prims.of_int (41))
                                             (Prims.of_int (39))
                                             (Prims.of_int (46)))))
                                    (FStar_Sealed.seal
                                       (Obj.magic
                                          (FStar_Range.mk_range "Prims.fst"
                                             (Prims.of_int (611))
                                             (Prims.of_int (19))
                                             (Prims.of_int (611))
                                             (Prims.of_int (31)))))
                                    (Obj.magic uu___5)
                                    (fun uu___6 ->
                                       FStar_Tactics_Effect.lift_div_tac
                                         (fun uu___7 ->
                                            Prims.strcat "\n" uu___6)) in
                                Obj.magic
                                  (FStar_Tactics_Effect.tac_bind
                                     (FStar_Sealed.seal
                                        (Obj.magic
                                           (FStar_Range.mk_range
                                              "Pulse.Checker.Pure.fst"
                                              (Prims.of_int (39))
                                              (Prims.of_int (34))
                                              (Prims.of_int (39))
                                              (Prims.of_int (46)))))
                                     (FStar_Sealed.seal
                                        (Obj.magic
                                           (FStar_Range.mk_range "Prims.fst"
                                              (Prims.of_int (611))
                                              (Prims.of_int (19))
                                              (Prims.of_int (611))
                                              (Prims.of_int (31)))))
                                     (Obj.magic uu___4)
                                     (fun uu___5 ->
                                        FStar_Tactics_Effect.lift_div_tac
                                          (fun uu___6 ->
                                             Prims.strcat uu___3 uu___5))))
                               uu___3) in
                      FStar_Tactics_Effect.tac_bind
                        (FStar_Sealed.seal
                           (Obj.magic
                              (FStar_Range.mk_range "Pulse.Checker.Pure.fst"
                                 (Prims.of_int (39)) (Prims.of_int (15))
                                 (Prims.of_int (39)) (Prims.of_int (47)))))
                        (FStar_Sealed.seal
                           (Obj.magic
                              (FStar_Range.mk_range "Pulse.Checker.Pure.fst"
                                 (Prims.of_int (39)) (Prims.of_int (7))
                                 (Prims.of_int (39)) (Prims.of_int (47)))))
                        (Obj.magic uu___1)
                        (fun uu___2 ->
                           (fun uu___2 ->
                              Obj.magic
                                (FStarC_Tactics_V2_Builtins.print uu___2))
                             uu___2)))
              else
                Obj.magic
                  (Obj.repr
                     (FStar_Tactics_Effect.lift_div_tac (fun uu___2 -> ()))))
             uu___1)
let (check_ln :
  Pulse_Typing_Env.env ->
    Prims.string ->
      FStarC_Reflection_Types.term ->
        (unit, unit) FStar_Tactics_Effect.tac_repr)
  =
  fun g ->
    fun label ->
      fun t ->
        let uu___ =
          let uu___1 = FStar_Tactics_CheckLN.check_ln t in
          FStar_Tactics_Effect.tac_bind
            (FStar_Sealed.seal
               (Obj.magic
                  (FStar_Range.mk_range "Pulse.Checker.Pure.fst"
                     (Prims.of_int (42)) (Prims.of_int (9))
                     (Prims.of_int (42)) (Prims.of_int (29)))))
            (FStar_Sealed.seal
               (Obj.magic
                  (FStar_Range.mk_range "Pulse.Checker.Pure.fst"
                     (Prims.of_int (42)) (Prims.of_int (5))
                     (Prims.of_int (42)) (Prims.of_int (29)))))
            (Obj.magic uu___1)
            (fun uu___2 ->
               FStar_Tactics_Effect.lift_div_tac
                 (fun uu___3 -> Prims.op_Negation uu___2)) in
        FStar_Tactics_Effect.tac_bind
          (FStar_Sealed.seal
             (Obj.magic
                (FStar_Range.mk_range "Pulse.Checker.Pure.fst"
                   (Prims.of_int (42)) (Prims.of_int (5)) (Prims.of_int (42))
                   (Prims.of_int (29)))))
          (FStar_Sealed.seal
             (Obj.magic
                (FStar_Range.mk_range "Pulse.Checker.Pure.fst"
                   (Prims.of_int (42)) (Prims.of_int (2)) (Prims.of_int (47))
                   (Prims.of_int (5))))) (Obj.magic uu___)
          (fun uu___1 ->
             (fun uu___1 ->
                if uu___1
                then
                  Obj.magic
                    (Obj.repr
                       (let uu___2 =
                          let uu___3 =
                            let uu___4 =
                              let uu___5 =
                                Pulse_PP.pp Pulse_PP.printable_string label in
                              FStar_Tactics_Effect.tac_bind
                                (FStar_Sealed.seal
                                   (Obj.magic
                                      (FStar_Range.mk_range
                                         "Pulse.Checker.Pure.fst"
                                         (Prims.of_int (45))
                                         (Prims.of_int (41))
                                         (Prims.of_int (45))
                                         (Prims.of_int (49)))))
                                (FStar_Sealed.seal
                                   (Obj.magic
                                      (FStar_Range.mk_range
                                         "Pulse.Checker.Pure.fst"
                                         (Prims.of_int (45))
                                         (Prims.of_int (6))
                                         (Prims.of_int (45))
                                         (Prims.of_int (49)))))
                                (Obj.magic uu___5)
                                (fun uu___6 ->
                                   FStar_Tactics_Effect.lift_div_tac
                                     (fun uu___7 ->
                                        FStarC_Pprint.op_Hat_Slash_Hat
                                          (Pulse_PP.text
                                             "Aborting before calling")
                                          uu___6)) in
                            FStar_Tactics_Effect.tac_bind
                              (FStar_Sealed.seal
                                 (Obj.magic
                                    (FStar_Range.mk_range
                                       "Pulse.Checker.Pure.fst"
                                       (Prims.of_int (45)) (Prims.of_int (6))
                                       (Prims.of_int (45))
                                       (Prims.of_int (49)))))
                              (FStar_Sealed.seal
                                 (Obj.magic
                                    (FStar_Range.mk_range
                                       "Pulse.Checker.Pure.fst"
                                       (Prims.of_int (43))
                                       (Prims.of_int (43))
                                       (Prims.of_int (47)) (Prims.of_int (5)))))
                              (Obj.magic uu___4)
                              (fun uu___5 ->
                                 (fun uu___5 ->
                                    let uu___6 =
                                      let uu___7 =
                                        let uu___8 =
                                          let uu___9 =
                                            Pulse_PP.pp
                                              Pulse_PP.printable_term t in
                                          FStar_Tactics_Effect.tac_bind
                                            (FStar_Sealed.seal
                                               (Obj.magic
                                                  (FStar_Range.mk_range
                                                     "Pulse.Checker.Pure.fst"
                                                     (Prims.of_int (46))
                                                     (Prims.of_int (33))
                                                     (Prims.of_int (46))
                                                     (Prims.of_int (37)))))
                                            (FStar_Sealed.seal
                                               (Obj.magic
                                                  (FStar_Range.mk_range
                                                     "Pulse.Checker.Pure.fst"
                                                     (Prims.of_int (46))
                                                     (Prims.of_int (22))
                                                     (Prims.of_int (46))
                                                     (Prims.of_int (37)))))
                                            (Obj.magic uu___9)
                                            (fun uu___10 ->
                                               FStar_Tactics_Effect.lift_div_tac
                                                 (fun uu___11 ->
                                                    FStarC_Pprint.op_Hat_Slash_Hat
                                                      FStarC_Pprint.equals
                                                      uu___10)) in
                                        FStar_Tactics_Effect.tac_bind
                                          (FStar_Sealed.seal
                                             (Obj.magic
                                                (FStar_Range.mk_range
                                                   "Pulse.Checker.Pure.fst"
                                                   (Prims.of_int (46))
                                                   (Prims.of_int (22))
                                                   (Prims.of_int (46))
                                                   (Prims.of_int (37)))))
                                          (FStar_Sealed.seal
                                             (Obj.magic
                                                (FStar_Range.mk_range
                                                   "Pulse.Checker.Pure.fst"
                                                   (Prims.of_int (46))
                                                   (Prims.of_int (6))
                                                   (Prims.of_int (46))
                                                   (Prims.of_int (37)))))
                                          (Obj.magic uu___8)
                                          (fun uu___9 ->
                                             FStar_Tactics_Effect.lift_div_tac
                                               (fun uu___10 ->
                                                  FStarC_Pprint.op_Hat_Slash_Hat
                                                    (Pulse_PP.text "term")
                                                    uu___9)) in
                                      FStar_Tactics_Effect.tac_bind
                                        (FStar_Sealed.seal
                                           (Obj.magic
                                              (FStar_Range.mk_range
                                                 "Pulse.Checker.Pure.fst"
                                                 (Prims.of_int (46))
                                                 (Prims.of_int (6))
                                                 (Prims.of_int (46))
                                                 (Prims.of_int (37)))))
                                        (FStar_Sealed.seal
                                           (Obj.magic
                                              (FStar_Range.mk_range
                                                 "Pulse.Checker.Pure.fst"
                                                 (Prims.of_int (43))
                                                 (Prims.of_int (43))
                                                 (Prims.of_int (47))
                                                 (Prims.of_int (5)))))
                                        (Obj.magic uu___7)
                                        (fun uu___8 ->
                                           FStar_Tactics_Effect.lift_div_tac
                                             (fun uu___9 -> [uu___8])) in
                                    Obj.magic
                                      (FStar_Tactics_Effect.tac_bind
                                         (FStar_Sealed.seal
                                            (Obj.magic
                                               (FStar_Range.mk_range
                                                  "Pulse.Checker.Pure.fst"
                                                  (Prims.of_int (43))
                                                  (Prims.of_int (43))
                                                  (Prims.of_int (47))
                                                  (Prims.of_int (5)))))
                                         (FStar_Sealed.seal
                                            (Obj.magic
                                               (FStar_Range.mk_range
                                                  "Pulse.Checker.Pure.fst"
                                                  (Prims.of_int (43))
                                                  (Prims.of_int (43))
                                                  (Prims.of_int (47))
                                                  (Prims.of_int (5)))))
                                         (Obj.magic uu___6)
                                         (fun uu___7 ->
                                            FStar_Tactics_Effect.lift_div_tac
                                              (fun uu___8 -> uu___5 :: uu___7))))
                                   uu___5) in
                          FStar_Tactics_Effect.tac_bind
                            (FStar_Sealed.seal
                               (Obj.magic
                                  (FStar_Range.mk_range
                                     "Pulse.Checker.Pure.fst"
                                     (Prims.of_int (43)) (Prims.of_int (43))
                                     (Prims.of_int (47)) (Prims.of_int (5)))))
                            (FStar_Sealed.seal
                               (Obj.magic
                                  (FStar_Range.mk_range
                                     "Pulse.Checker.Pure.fst"
                                     (Prims.of_int (43)) (Prims.of_int (43))
                                     (Prims.of_int (47)) (Prims.of_int (5)))))
                            (Obj.magic uu___3)
                            (fun uu___4 ->
                               FStar_Tactics_Effect.lift_div_tac
                                 (fun uu___5 ->
                                    (Pulse_PP.text
                                       "Failure: not locally nameless!")
                                    :: uu___4)) in
                        FStar_Tactics_Effect.tac_bind
                          (FStar_Sealed.seal
                             (Obj.magic
                                (FStar_Range.mk_range
                                   "Pulse.Checker.Pure.fst"
                                   (Prims.of_int (43)) (Prims.of_int (43))
                                   (Prims.of_int (47)) (Prims.of_int (5)))))
                          (FStar_Sealed.seal
                             (Obj.magic
                                (FStar_Range.mk_range
                                   "Pulse.Checker.Pure.fst"
                                   (Prims.of_int (43)) (Prims.of_int (4))
                                   (Prims.of_int (47)) (Prims.of_int (5)))))
                          (Obj.magic uu___2)
                          (fun uu___3 ->
                             (fun uu___3 ->
                                Obj.magic
                                  (Pulse_Typing_Env.fail_doc g
                                     (FStar_Pervasives_Native.Some
                                        (Pulse_RuntimeUtils.range_of_term t))
                                     uu___3)) uu___3)))
                else
                  Obj.magic
                    (Obj.repr
                       (FStar_Tactics_Effect.lift_div_tac (fun uu___3 -> ()))))
               uu___1)
let (rtb_core_compute_term_type :
  Pulse_Typing_Env.env ->
    FStarC_Reflection_Types.env ->
      FStarC_Reflection_Types.term ->
        (((FStarC_TypeChecker_Core.tot_or_ghost *
           FStarC_Reflection_Types.typ) FStar_Pervasives_Native.option *
           FStar_Issue.issue Prims.list),
          unit) FStar_Tactics_Effect.tac_repr)
  =
  fun g ->
    fun f ->
      fun e ->
        let uu___ = check_ln g "rtb_compute_term_type" e in
        FStar_Tactics_Effect.tac_bind
          (FStar_Sealed.seal
             (Obj.magic
                (FStar_Range.mk_range "Pulse.Checker.Pure.fst"
                   (Prims.of_int (50)) (Prims.of_int (2)) (Prims.of_int (50))
                   (Prims.of_int (38)))))
          (FStar_Sealed.seal
             (Obj.magic
                (FStar_Range.mk_range "Pulse.Checker.Pure.fst"
                   (Prims.of_int (51)) (Prims.of_int (2)) (Prims.of_int (56))
                   (Prims.of_int (5))))) (Obj.magic uu___)
          (fun uu___1 ->
             (fun uu___1 ->
                let uu___2 =
                  debug g
                    (fun uu___3 ->
                       let uu___4 =
                         FStarC_Tactics_V2_Builtins.term_to_string e in
                       FStar_Tactics_Effect.tac_bind
                         (FStar_Sealed.seal
                            (Obj.magic
                               (FStar_Range.mk_range "Pulse.Checker.Pure.fst"
                                  (Prims.of_int (54)) (Prims.of_int (10))
                                  (Prims.of_int (54)) (Prims.of_int (30)))))
                         (FStar_Sealed.seal
                            (Obj.magic
                               (FStar_Range.mk_range "Pulse.Checker.Pure.fst"
                                  (Prims.of_int (52)) (Prims.of_int (4))
                                  (Prims.of_int (54)) (Prims.of_int (30)))))
                         (Obj.magic uu___4)
                         (fun uu___5 ->
                            (fun uu___5 ->
                               let uu___6 =
                                 let uu___7 =
                                   FStarC_Tactics_V2_Builtins.range_to_string
                                     (Pulse_RuntimeUtils.range_of_term e) in
                                 FStar_Tactics_Effect.tac_bind
                                   (FStar_Sealed.seal
                                      (Obj.magic
                                         (FStar_Range.mk_range
                                            "Pulse.Checker.Pure.fst"
                                            (Prims.of_int (53))
                                            (Prims.of_int (10))
                                            (Prims.of_int (53))
                                            (Prims.of_int (50)))))
                                   (FStar_Sealed.seal
                                      (Obj.magic
                                         (FStar_Range.mk_range
                                            "FStar.Printf.fst"
                                            (Prims.of_int (122))
                                            (Prims.of_int (8))
                                            (Prims.of_int (124))
                                            (Prims.of_int (44)))))
                                   (Obj.magic uu___7)
                                   (fun uu___8 ->
                                      FStar_Tactics_Effect.lift_div_tac
                                        (fun uu___9 ->
                                           fun x ->
                                             Prims.strcat
                                               (Prims.strcat "("
                                                  (Prims.strcat uu___8
                                                     ") Calling core_check_term on "))
                                               (Prims.strcat x ""))) in
                               Obj.magic
                                 (FStar_Tactics_Effect.tac_bind
                                    (FStar_Sealed.seal
                                       (Obj.magic
                                          (FStar_Range.mk_range
                                             "Pulse.Checker.Pure.fst"
                                             (Prims.of_int (52))
                                             (Prims.of_int (4))
                                             (Prims.of_int (54))
                                             (Prims.of_int (30)))))
                                    (FStar_Sealed.seal
                                       (Obj.magic
                                          (FStar_Range.mk_range
                                             "Pulse.Checker.Pure.fst"
                                             (Prims.of_int (52))
                                             (Prims.of_int (4))
                                             (Prims.of_int (54))
                                             (Prims.of_int (30)))))
                                    (Obj.magic uu___6)
                                    (fun uu___7 ->
                                       FStar_Tactics_Effect.lift_div_tac
                                         (fun uu___8 -> uu___7 uu___5))))
                              uu___5)) in
                Obj.magic
                  (FStar_Tactics_Effect.tac_bind
                     (FStar_Sealed.seal
                        (Obj.magic
                           (FStar_Range.mk_range "Pulse.Checker.Pure.fst"
                              (Prims.of_int (51)) (Prims.of_int (2))
                              (Prims.of_int (54)) (Prims.of_int (31)))))
                     (FStar_Sealed.seal
                        (Obj.magic
                           (FStar_Range.mk_range "Pulse.Checker.Pure.fst"
                              (Prims.of_int (54)) (Prims.of_int (32))
                              (Prims.of_int (56)) (Prims.of_int (5)))))
                     (Obj.magic uu___2)
                     (fun uu___3 ->
                        (fun uu___3 ->
                           let uu___4 =
                             Pulse_RuntimeUtils.with_context
                               (Pulse_Typing_Env.get_context g)
                               (fun uu___5 ->
                                  FStarC_Tactics_V2_Builtins.core_compute_term_type
                                    f e) in
                           Obj.magic
                             (FStar_Tactics_Effect.tac_bind
                                (FStar_Sealed.seal
                                   (Obj.magic
                                      (FStar_Range.mk_range
                                         "Pulse.Checker.Pure.fst"
                                         (Prims.of_int (55))
                                         (Prims.of_int (12))
                                         (Prims.of_int (55))
                                         (Prims.of_int (85)))))
                                (FStar_Sealed.seal
                                   (Obj.magic
                                      (FStar_Range.mk_range
                                         "Pulse.Checker.Pure.fst"
                                         (Prims.of_int (55))
                                         (Prims.of_int (6))
                                         (Prims.of_int (55))
                                         (Prims.of_int (9)))))
                                (Obj.magic uu___4)
                                (fun res ->
                                   FStar_Tactics_Effect.lift_div_tac
                                     (fun uu___5 -> res)))) uu___3))) uu___1)
let (rtb_tc_term :
  Pulse_Typing_Env.env ->
    FStarC_Reflection_Types.env ->
      FStarC_Reflection_Types.term ->
        (((FStarC_Reflection_Types.term *
           (FStarC_TypeChecker_Core.tot_or_ghost *
           FStarC_Reflection_Types.typ)) FStar_Pervasives_Native.option *
           FStar_Issue.issue Prims.list),
          unit) FStar_Tactics_Effect.tac_repr)
  =
  fun g ->
    fun f ->
      fun e ->
        let uu___ = check_ln g "rtb_tc_term" e in
        FStar_Tactics_Effect.tac_bind
          (FStar_Sealed.seal
             (Obj.magic
                (FStar_Range.mk_range "Pulse.Checker.Pure.fst"
                   (Prims.of_int (60)) (Prims.of_int (2)) (Prims.of_int (60))
                   (Prims.of_int (28)))))
          (FStar_Sealed.seal
             (Obj.magic
                (FStar_Range.mk_range "Pulse.Checker.Pure.fst"
                   (Prims.of_int (60)) (Prims.of_int (29))
                   (Prims.of_int (67)) (Prims.of_int (5)))))
          (Obj.magic uu___)
          (fun uu___1 ->
             (fun uu___1 ->
                let uu___2 =
                  Obj.magic
                    (FStar_Tactics_Effect.lift_div_tac
                       (fun uu___3 ->
                          Pulse_RuntimeUtils.deep_transform_to_unary_applications
                            e)) in
                Obj.magic
                  (FStar_Tactics_Effect.tac_bind
                     (FStar_Sealed.seal
                        (Obj.magic
                           (FStar_Range.mk_range "Pulse.Checker.Pure.fst"
                              (Prims.of_int (61)) (Prims.of_int (10))
                              (Prims.of_int (61)) (Prims.of_int (51)))))
                     (FStar_Sealed.seal
                        (Obj.magic
                           (FStar_Range.mk_range "Pulse.Checker.Pure.fst"
                              (Prims.of_int (62)) (Prims.of_int (2))
                              (Prims.of_int (67)) (Prims.of_int (5)))))
                     (Obj.magic uu___2)
                     (fun uu___3 ->
                        (fun e1 ->
                           let uu___3 =
                             debug g
                               (fun uu___4 ->
                                  let uu___5 =
                                    FStarC_Tactics_V2_Builtins.term_to_string
                                      e1 in
                                  FStar_Tactics_Effect.tac_bind
                                    (FStar_Sealed.seal
                                       (Obj.magic
                                          (FStar_Range.mk_range
                                             "Pulse.Checker.Pure.fst"
                                             (Prims.of_int (65))
                                             (Prims.of_int (6))
                                             (Prims.of_int (65))
                                             (Prims.of_int (26)))))
                                    (FStar_Sealed.seal
                                       (Obj.magic
                                          (FStar_Range.mk_range
                                             "Pulse.Checker.Pure.fst"
                                             (Prims.of_int (63))
                                             (Prims.of_int (4))
                                             (Prims.of_int (65))
                                             (Prims.of_int (26)))))
                                    (Obj.magic uu___5)
                                    (fun uu___6 ->
                                       (fun uu___6 ->
                                          let uu___7 =
                                            let uu___8 =
                                              FStarC_Tactics_V2_Builtins.range_to_string
                                                (Pulse_RuntimeUtils.range_of_term
                                                   e1) in
                                            FStar_Tactics_Effect.tac_bind
                                              (FStar_Sealed.seal
                                                 (Obj.magic
                                                    (FStar_Range.mk_range
                                                       "Pulse.Checker.Pure.fst"
                                                       (Prims.of_int (64))
                                                       (Prims.of_int (6))
                                                       (Prims.of_int (64))
                                                       (Prims.of_int (46)))))
                                              (FStar_Sealed.seal
                                                 (Obj.magic
                                                    (FStar_Range.mk_range
                                                       "FStar.Printf.fst"
                                                       (Prims.of_int (122))
                                                       (Prims.of_int (8))
                                                       (Prims.of_int (124))
                                                       (Prims.of_int (44)))))
                                              (Obj.magic uu___8)
                                              (fun uu___9 ->
                                                 FStar_Tactics_Effect.lift_div_tac
                                                   (fun uu___10 ->
                                                      fun x ->
                                                        Prims.strcat
                                                          (Prims.strcat "("
                                                             (Prims.strcat
                                                                uu___9
                                                                ") Calling tc_term on "))
                                                          (Prims.strcat x ""))) in
                                          Obj.magic
                                            (FStar_Tactics_Effect.tac_bind
                                               (FStar_Sealed.seal
                                                  (Obj.magic
                                                     (FStar_Range.mk_range
                                                        "Pulse.Checker.Pure.fst"
                                                        (Prims.of_int (63))
                                                        (Prims.of_int (4))
                                                        (Prims.of_int (65))
                                                        (Prims.of_int (26)))))
                                               (FStar_Sealed.seal
                                                  (Obj.magic
                                                     (FStar_Range.mk_range
                                                        "Pulse.Checker.Pure.fst"
                                                        (Prims.of_int (63))
                                                        (Prims.of_int (4))
                                                        (Prims.of_int (65))
                                                        (Prims.of_int (26)))))
                                               (Obj.magic uu___7)
                                               (fun uu___8 ->
                                                  FStar_Tactics_Effect.lift_div_tac
                                                    (fun uu___9 ->
                                                       uu___8 uu___6))))
                                         uu___6)) in
                           Obj.magic
                             (FStar_Tactics_Effect.tac_bind
                                (FStar_Sealed.seal
                                   (Obj.magic
                                      (FStar_Range.mk_range
                                         "Pulse.Checker.Pure.fst"
                                         (Prims.of_int (62))
                                         (Prims.of_int (2))
                                         (Prims.of_int (65))
                                         (Prims.of_int (27)))))
                                (FStar_Sealed.seal
                                   (Obj.magic
                                      (FStar_Range.mk_range
                                         "Pulse.Checker.Pure.fst"
                                         (Prims.of_int (65))
                                         (Prims.of_int (28))
                                         (Prims.of_int (67))
                                         (Prims.of_int (5)))))
                                (Obj.magic uu___3)
                                (fun uu___4 ->
                                   (fun uu___4 ->
                                      let uu___5 =
                                        Pulse_RuntimeUtils.with_context
                                          (Pulse_Typing_Env.get_context g)
                                          (fun uu___6 ->
                                             FStarC_Tactics_V2_Builtins.tc_term
                                               f e1) in
                                      Obj.magic
                                        (FStar_Tactics_Effect.tac_bind
                                           (FStar_Sealed.seal
                                              (Obj.magic
                                                 (FStar_Range.mk_range
                                                    "Pulse.Checker.Pure.fst"
                                                    (Prims.of_int (66))
                                                    (Prims.of_int (12))
                                                    (Prims.of_int (66))
                                                    (Prims.of_int (70)))))
                                           (FStar_Sealed.seal
                                              (Obj.magic
                                                 (FStar_Range.mk_range
                                                    "Pulse.Checker.Pure.fst"
                                                    (Prims.of_int (66))
                                                    (Prims.of_int (6))
                                                    (Prims.of_int (66))
                                                    (Prims.of_int (9)))))
                                           (Obj.magic uu___5)
                                           (fun res ->
                                              FStar_Tactics_Effect.lift_div_tac
                                                (fun uu___6 -> res)))) uu___4)))
                          uu___3))) uu___1)
let (rtb_universe_of :
  Pulse_Typing_Env.env ->
    FStarC_Reflection_Types.env ->
      FStarC_Reflection_Types.term ->
        ((FStarC_Reflection_Types.universe FStar_Pervasives_Native.option *
           FStar_Issue.issue Prims.list),
          unit) FStar_Tactics_Effect.tac_repr)
  =
  fun g ->
    fun f ->
      fun e ->
        let uu___ = check_ln g "rtb_universe_of" e in
        FStar_Tactics_Effect.tac_bind
          (FStar_Sealed.seal
             (Obj.magic
                (FStar_Range.mk_range "Pulse.Checker.Pure.fst"
                   (Prims.of_int (70)) (Prims.of_int (2)) (Prims.of_int (70))
                   (Prims.of_int (32)))))
          (FStar_Sealed.seal
             (Obj.magic
                (FStar_Range.mk_range "Pulse.Checker.Pure.fst"
                   (Prims.of_int (71)) (Prims.of_int (2)) (Prims.of_int (76))
                   (Prims.of_int (5))))) (Obj.magic uu___)
          (fun uu___1 ->
             (fun uu___1 ->
                let uu___2 =
                  debug g
                    (fun uu___3 ->
                       let uu___4 =
                         FStarC_Tactics_V2_Builtins.term_to_string e in
                       FStar_Tactics_Effect.tac_bind
                         (FStar_Sealed.seal
                            (Obj.magic
                               (FStar_Range.mk_range "Pulse.Checker.Pure.fst"
                                  (Prims.of_int (74)) (Prims.of_int (6))
                                  (Prims.of_int (74)) (Prims.of_int (26)))))
                         (FStar_Sealed.seal
                            (Obj.magic
                               (FStar_Range.mk_range "Pulse.Checker.Pure.fst"
                                  (Prims.of_int (72)) (Prims.of_int (4))
                                  (Prims.of_int (74)) (Prims.of_int (26)))))
                         (Obj.magic uu___4)
                         (fun uu___5 ->
                            (fun uu___5 ->
                               let uu___6 =
                                 let uu___7 =
                                   FStarC_Tactics_V2_Builtins.range_to_string
                                     (Pulse_RuntimeUtils.range_of_term e) in
                                 FStar_Tactics_Effect.tac_bind
                                   (FStar_Sealed.seal
                                      (Obj.magic
                                         (FStar_Range.mk_range
                                            "Pulse.Checker.Pure.fst"
                                            (Prims.of_int (73))
                                            (Prims.of_int (6))
                                            (Prims.of_int (73))
                                            (Prims.of_int (46)))))
                                   (FStar_Sealed.seal
                                      (Obj.magic
                                         (FStar_Range.mk_range
                                            "FStar.Printf.fst"
                                            (Prims.of_int (122))
                                            (Prims.of_int (8))
                                            (Prims.of_int (124))
                                            (Prims.of_int (44)))))
                                   (Obj.magic uu___7)
                                   (fun uu___8 ->
                                      FStar_Tactics_Effect.lift_div_tac
                                        (fun uu___9 ->
                                           fun x ->
                                             Prims.strcat
                                               (Prims.strcat "("
                                                  (Prims.strcat uu___8
                                                     ") Calling universe_of on "))
                                               (Prims.strcat x ""))) in
                               Obj.magic
                                 (FStar_Tactics_Effect.tac_bind
                                    (FStar_Sealed.seal
                                       (Obj.magic
                                          (FStar_Range.mk_range
                                             "Pulse.Checker.Pure.fst"
                                             (Prims.of_int (72))
                                             (Prims.of_int (4))
                                             (Prims.of_int (74))
                                             (Prims.of_int (26)))))
                                    (FStar_Sealed.seal
                                       (Obj.magic
                                          (FStar_Range.mk_range
                                             "Pulse.Checker.Pure.fst"
                                             (Prims.of_int (72))
                                             (Prims.of_int (4))
                                             (Prims.of_int (74))
                                             (Prims.of_int (26)))))
                                    (Obj.magic uu___6)
                                    (fun uu___7 ->
                                       FStar_Tactics_Effect.lift_div_tac
                                         (fun uu___8 -> uu___7 uu___5))))
                              uu___5)) in
                Obj.magic
                  (FStar_Tactics_Effect.tac_bind
                     (FStar_Sealed.seal
                        (Obj.magic
                           (FStar_Range.mk_range "Pulse.Checker.Pure.fst"
                              (Prims.of_int (71)) (Prims.of_int (2))
                              (Prims.of_int (74)) (Prims.of_int (27)))))
                     (FStar_Sealed.seal
                        (Obj.magic
                           (FStar_Range.mk_range "Pulse.Checker.Pure.fst"
                              (Prims.of_int (74)) (Prims.of_int (28))
                              (Prims.of_int (76)) (Prims.of_int (5)))))
                     (Obj.magic uu___2)
                     (fun uu___3 ->
                        (fun uu___3 ->
                           let uu___4 =
                             Pulse_RuntimeUtils.with_context
                               (Pulse_Typing_Env.get_context g)
                               (fun uu___5 ->
                                  FStarC_Tactics_V2_Builtins.universe_of f e) in
                           Obj.magic
                             (FStar_Tactics_Effect.tac_bind
                                (FStar_Sealed.seal
                                   (Obj.magic
                                      (FStar_Range.mk_range
                                         "Pulse.Checker.Pure.fst"
                                         (Prims.of_int (75))
                                         (Prims.of_int (12))
                                         (Prims.of_int (75))
                                         (Prims.of_int (74)))))
                                (FStar_Sealed.seal
                                   (Obj.magic
                                      (FStar_Range.mk_range
                                         "Pulse.Checker.Pure.fst"
                                         (Prims.of_int (75))
                                         (Prims.of_int (6))
                                         (Prims.of_int (75))
                                         (Prims.of_int (9)))))
                                (Obj.magic uu___4)
                                (fun res ->
                                   FStar_Tactics_Effect.lift_div_tac
                                     (fun uu___5 -> res)))) uu___3))) uu___1)
let (rtb_check_subtyping :
  Pulse_Typing_Env.env ->
    Pulse_Syntax_Base.term ->
      Pulse_Syntax_Base.term ->
        (((unit, unit, unit) Pulse_Typing.subtyping_token
           FStar_Pervasives_Native.option * FStar_Issue.issue Prims.list),
          unit) FStar_Tactics_Effect.tac_repr)
  =
  fun g ->
    fun t1 ->
      fun t2 ->
        let uu___ = check_ln g "rtb_check_subtyping.t1" t1 in
        FStar_Tactics_Effect.tac_bind
          (FStar_Sealed.seal
             (Obj.magic
                (FStar_Range.mk_range "Pulse.Checker.Pure.fst"
                   (Prims.of_int (79)) (Prims.of_int (2)) (Prims.of_int (79))
                   (Prims.of_int (40)))))
          (FStar_Sealed.seal
             (Obj.magic
                (FStar_Range.mk_range "Pulse.Checker.Pure.fst"
                   (Prims.of_int (80)) (Prims.of_int (2)) (Prims.of_int (88))
                   (Prims.of_int (5))))) (Obj.magic uu___)
          (fun uu___1 ->
             (fun uu___1 ->
                let uu___2 = check_ln g "rtb_check_subtyping.t2" t2 in
                Obj.magic
                  (FStar_Tactics_Effect.tac_bind
                     (FStar_Sealed.seal
                        (Obj.magic
                           (FStar_Range.mk_range "Pulse.Checker.Pure.fst"
                              (Prims.of_int (80)) (Prims.of_int (2))
                              (Prims.of_int (80)) (Prims.of_int (40)))))
                     (FStar_Sealed.seal
                        (Obj.magic
                           (FStar_Range.mk_range "Pulse.Checker.Pure.fst"
                              (Prims.of_int (81)) (Prims.of_int (2))
                              (Prims.of_int (88)) (Prims.of_int (5)))))
                     (Obj.magic uu___2)
                     (fun uu___3 ->
                        (fun uu___3 ->
                           let uu___4 =
                             debug g
                               (fun uu___5 ->
                                  let uu___6 =
                                    Pulse_Syntax_Printer.term_to_string t2 in
                                  FStar_Tactics_Effect.tac_bind
                                    (FStar_Sealed.seal
                                       (Obj.magic
                                          (FStar_Range.mk_range
                                             "Pulse.Checker.Pure.fst"
                                             (Prims.of_int (86))
                                             (Prims.of_int (8))
                                             (Prims.of_int (86))
                                             (Prims.of_int (29)))))
                                    (FStar_Sealed.seal
                                       (Obj.magic
                                          (FStar_Range.mk_range
                                             "Pulse.Checker.Pure.fst"
                                             (Prims.of_int (82))
                                             (Prims.of_int (4))
                                             (Prims.of_int (86))
                                             (Prims.of_int (29)))))
                                    (Obj.magic uu___6)
                                    (fun uu___7 ->
                                       (fun uu___7 ->
                                          let uu___8 =
                                            let uu___9 =
                                              Pulse_Syntax_Printer.term_to_string
                                                t1 in
                                            FStar_Tactics_Effect.tac_bind
                                              (FStar_Sealed.seal
                                                 (Obj.magic
                                                    (FStar_Range.mk_range
                                                       "Pulse.Checker.Pure.fst"
                                                       (Prims.of_int (85))
                                                       (Prims.of_int (8))
                                                       (Prims.of_int (85))
                                                       (Prims.of_int (29)))))
                                              (FStar_Sealed.seal
                                                 (Obj.magic
                                                    (FStar_Range.mk_range
                                                       "Pulse.Checker.Pure.fst"
                                                       (Prims.of_int (82))
                                                       (Prims.of_int (4))
                                                       (Prims.of_int (86))
                                                       (Prims.of_int (29)))))
                                              (Obj.magic uu___9)
                                              (fun uu___10 ->
                                                 (fun uu___10 ->
                                                    let uu___11 =
                                                      let uu___12 =
                                                        FStarC_Tactics_V2_Builtins.range_to_string
                                                          (Pulse_RuntimeUtils.range_of_term
                                                             t2) in
                                                      FStar_Tactics_Effect.tac_bind
                                                        (FStar_Sealed.seal
                                                           (Obj.magic
                                                              (FStar_Range.mk_range
                                                                 "Pulse.Checker.Pure.fst"
                                                                 (Prims.of_int (84))
                                                                 (Prims.of_int (8))
                                                                 (Prims.of_int (84))
                                                                 (Prims.of_int (49)))))
                                                        (FStar_Sealed.seal
                                                           (Obj.magic
                                                              (FStar_Range.mk_range
                                                                 "Pulse.Checker.Pure.fst"
                                                                 (Prims.of_int (82))
                                                                 (Prims.of_int (4))
                                                                 (Prims.of_int (86))
                                                                 (Prims.of_int (29)))))
                                                        (Obj.magic uu___12)
                                                        (fun uu___13 ->
                                                           (fun uu___13 ->
                                                              let uu___14 =
                                                                let uu___15 =
                                                                  FStarC_Tactics_V2_Builtins.range_to_string
                                                                    (
                                                                    Pulse_RuntimeUtils.range_of_term
                                                                    t1) in
                                                                FStar_Tactics_Effect.tac_bind
                                                                  (FStar_Sealed.seal
                                                                    (Obj.magic
                                                                    (FStar_Range.mk_range
                                                                    "Pulse.Checker.Pure.fst"
                                                                    (Prims.of_int (83))
                                                                    (Prims.of_int (8))
                                                                    (Prims.of_int (83))
                                                                    (Prims.of_int (49)))))
                                                                  (FStar_Sealed.seal
                                                                    (Obj.magic
                                                                    (FStar_Range.mk_range
                                                                    "FStar.Printf.fst"
                                                                    (Prims.of_int (122))
                                                                    (Prims.of_int (8))
                                                                    (Prims.of_int (124))
                                                                    (Prims.of_int (44)))))
                                                                  (Obj.magic
                                                                    uu___15)
                                                                  (fun
                                                                    uu___16
                                                                    ->
                                                                    FStar_Tactics_Effect.lift_div_tac
                                                                    (fun
                                                                    uu___17
                                                                    ->
                                                                    fun x ->
                                                                    fun x1 ->
                                                                    fun x2 ->
                                                                    Prims.strcat
                                                                    (Prims.strcat
                                                                    (Prims.strcat
                                                                    (Prims.strcat
                                                                    "("
                                                                    (Prims.strcat
                                                                    uu___16
                                                                    ", "))
                                                                    (Prims.strcat
                                                                    x
                                                                    ") Calling check_subtyping on "))
                                                                    (Prims.strcat
                                                                    x1 " <: "))
                                                                    (Prims.strcat
                                                                    x2 ""))) in
                                                              Obj.magic
                                                                (FStar_Tactics_Effect.tac_bind
                                                                   (FStar_Sealed.seal
                                                                    (Obj.magic
                                                                    (FStar_Range.mk_range
                                                                    "Pulse.Checker.Pure.fst"
                                                                    (Prims.of_int (82))
                                                                    (Prims.of_int (4))
                                                                    (Prims.of_int (86))
                                                                    (Prims.of_int (29)))))
                                                                   (FStar_Sealed.seal
                                                                    (Obj.magic
                                                                    (FStar_Range.mk_range
                                                                    "Pulse.Checker.Pure.fst"
                                                                    (Prims.of_int (82))
                                                                    (Prims.of_int (4))
                                                                    (Prims.of_int (86))
                                                                    (Prims.of_int (29)))))
                                                                   (Obj.magic
                                                                    uu___14)
                                                                   (fun
                                                                    uu___15
                                                                    ->
                                                                    FStar_Tactics_Effect.lift_div_tac
                                                                    (fun
                                                                    uu___16
                                                                    ->
                                                                    uu___15
                                                                    uu___13))))
                                                             uu___13) in
                                                    Obj.magic
                                                      (FStar_Tactics_Effect.tac_bind
                                                         (FStar_Sealed.seal
                                                            (Obj.magic
                                                               (FStar_Range.mk_range
                                                                  "Pulse.Checker.Pure.fst"
                                                                  (Prims.of_int (82))
                                                                  (Prims.of_int (4))
                                                                  (Prims.of_int (86))
                                                                  (Prims.of_int (29)))))
                                                         (FStar_Sealed.seal
                                                            (Obj.magic
                                                               (FStar_Range.mk_range
                                                                  "Pulse.Checker.Pure.fst"
                                                                  (Prims.of_int (82))
                                                                  (Prims.of_int (4))
                                                                  (Prims.of_int (86))
                                                                  (Prims.of_int (29)))))
                                                         (Obj.magic uu___11)
                                                         (fun uu___12 ->
                                                            FStar_Tactics_Effect.lift_div_tac
                                                              (fun uu___13 ->
                                                                 uu___12
                                                                   uu___10))))
                                                   uu___10) in
                                          Obj.magic
                                            (FStar_Tactics_Effect.tac_bind
                                               (FStar_Sealed.seal
                                                  (Obj.magic
                                                     (FStar_Range.mk_range
                                                        "Pulse.Checker.Pure.fst"
                                                        (Prims.of_int (82))
                                                        (Prims.of_int (4))
                                                        (Prims.of_int (86))
                                                        (Prims.of_int (29)))))
                                               (FStar_Sealed.seal
                                                  (Obj.magic
                                                     (FStar_Range.mk_range
                                                        "Pulse.Checker.Pure.fst"
                                                        (Prims.of_int (82))
                                                        (Prims.of_int (4))
                                                        (Prims.of_int (86))
                                                        (Prims.of_int (29)))))
                                               (Obj.magic uu___8)
                                               (fun uu___9 ->
                                                  FStar_Tactics_Effect.lift_div_tac
                                                    (fun uu___10 ->
                                                       uu___9 uu___7))))
                                         uu___7)) in
                           Obj.magic
                             (FStar_Tactics_Effect.tac_bind
                                (FStar_Sealed.seal
                                   (Obj.magic
                                      (FStar_Range.mk_range
                                         "Pulse.Checker.Pure.fst"
                                         (Prims.of_int (81))
                                         (Prims.of_int (2))
                                         (Prims.of_int (86))
                                         (Prims.of_int (30)))))
                                (FStar_Sealed.seal
                                   (Obj.magic
                                      (FStar_Range.mk_range
                                         "Pulse.Checker.Pure.fst"
                                         (Prims.of_int (86))
                                         (Prims.of_int (31))
                                         (Prims.of_int (88))
                                         (Prims.of_int (5)))))
                                (Obj.magic uu___4)
                                (fun uu___5 ->
                                   (fun uu___5 ->
                                      let uu___6 =
                                        Pulse_RuntimeUtils.with_context
                                          (Pulse_Typing_Env.get_context g)
                                          (fun uu___7 ->
                                             FStarC_Tactics_V2_Builtins.check_subtyping
                                               (Pulse_Typing.elab_env g) t1
                                               t2) in
                                      Obj.magic
                                        (FStar_Tactics_Effect.tac_bind
                                           (FStar_Sealed.seal
                                              (Obj.magic
                                                 (FStar_Range.mk_range
                                                    "Pulse.Checker.Pure.fst"
                                                    (Prims.of_int (87))
                                                    (Prims.of_int (12))
                                                    (Prims.of_int (87))
                                                    (Prims.of_int (93)))))
                                           (FStar_Sealed.seal
                                              (Obj.magic
                                                 (FStar_Range.mk_range
                                                    "Pulse.Checker.Pure.fst"
                                                    (Prims.of_int (87))
                                                    (Prims.of_int (6))
                                                    (Prims.of_int (87))
                                                    (Prims.of_int (9)))))
                                           (Obj.magic uu___6)
                                           (fun res ->
                                              FStar_Tactics_Effect.lift_div_tac
                                                (fun uu___7 -> res)))) uu___5)))
                          uu___3))) uu___1)
let (rtb_instantiate_implicits :
  Pulse_Typing_Env.env ->
    FStarC_Reflection_Types.env ->
      FStarC_Reflection_Types.term ->
        FStarC_Reflection_Types.term FStar_Pervasives_Native.option ->
          ((((FStarC_Reflection_Types.namedv * FStarC_Reflection_Types.typ)
             Prims.list * FStarC_Reflection_Types.term *
             FStarC_Reflection_Types.typ) FStar_Pervasives_Native.option *
             FStar_Issue.issue Prims.list),
            unit) FStar_Tactics_Effect.tac_repr)
  =
  fun g ->
    fun f ->
      fun t ->
        fun expected ->
          let uu___ = check_ln g "rtb_instantiate_implicits" t in
          FStar_Tactics_Effect.tac_bind
            (FStar_Sealed.seal
               (Obj.magic
                  (FStar_Range.mk_range "Pulse.Checker.Pure.fst"
                     (Prims.of_int (91)) (Prims.of_int (2))
                     (Prims.of_int (91)) (Prims.of_int (42)))))
            (FStar_Sealed.seal
               (Obj.magic
                  (FStar_Range.mk_range "Pulse.Checker.Pure.fst"
                     (Prims.of_int (92)) (Prims.of_int (2))
                     (Prims.of_int (103)) (Prims.of_int (12)))))
            (Obj.magic uu___)
            (fun uu___1 ->
               (fun uu___1 ->
                  let uu___2 =
                    debug g
                      (fun uu___3 ->
                         let uu___4 =
                           FStarC_Tactics_V2_Builtins.term_to_string t in
                         FStar_Tactics_Effect.tac_bind
                           (FStar_Sealed.seal
                              (Obj.magic
                                 (FStar_Range.mk_range
                                    "Pulse.Checker.Pure.fst"
                                    (Prims.of_int (93)) (Prims.of_int (39))
                                    (Prims.of_int (93)) (Prims.of_int (59)))))
                           (FStar_Sealed.seal
                              (Obj.magic
                                 (FStar_Range.mk_range "Prims.fst"
                                    (Prims.of_int (611)) (Prims.of_int (19))
                                    (Prims.of_int (611)) (Prims.of_int (31)))))
                           (Obj.magic uu___4)
                           (fun uu___5 ->
                              FStar_Tactics_Effect.lift_div_tac
                                (fun uu___6 ->
                                   Prims.strcat
                                     "Calling instantiate_implicits on "
                                     (Prims.strcat uu___5 "")))) in
                  Obj.magic
                    (FStar_Tactics_Effect.tac_bind
                       (FStar_Sealed.seal
                          (Obj.magic
                             (FStar_Range.mk_range "Pulse.Checker.Pure.fst"
                                (Prims.of_int (92)) (Prims.of_int (2))
                                (Prims.of_int (93)) (Prims.of_int (60)))))
                       (FStar_Sealed.seal
                          (Obj.magic
                             (FStar_Range.mk_range "Pulse.Checker.Pure.fst"
                                (Prims.of_int (93)) (Prims.of_int (61))
                                (Prims.of_int (103)) (Prims.of_int (12)))))
                       (Obj.magic uu___2)
                       (fun uu___3 ->
                          (fun uu___3 ->
                             let uu___4 =
                               Obj.magic
                                 (FStar_Tactics_Effect.lift_div_tac
                                    (fun uu___5 ->
                                       Pulse_RuntimeUtils.deep_transform_to_unary_applications
                                         t)) in
                             Obj.magic
                               (FStar_Tactics_Effect.tac_bind
                                  (FStar_Sealed.seal
                                     (Obj.magic
                                        (FStar_Range.mk_range
                                           "Pulse.Checker.Pure.fst"
                                           (Prims.of_int (95))
                                           (Prims.of_int (10))
                                           (Prims.of_int (95))
                                           (Prims.of_int (51)))))
                                  (FStar_Sealed.seal
                                     (Obj.magic
                                        (FStar_Range.mk_range
                                           "Pulse.Checker.Pure.fst"
                                           (Prims.of_int (95))
                                           (Prims.of_int (54))
                                           (Prims.of_int (103))
                                           (Prims.of_int (12)))))
                                  (Obj.magic uu___4)
                                  (fun uu___5 ->
                                     (fun t1 ->
                                        let uu___5 =
                                          Pulse_RuntimeUtils.with_context
                                            (Pulse_Typing_Env.get_context g)
                                            (fun uu___6 ->
                                               FStarC_Tactics_V2_Builtins.instantiate_implicits
                                                 f t1 expected) in
                                        Obj.magic
                                          (FStar_Tactics_Effect.tac_bind
                                             (FStar_Sealed.seal
                                                (Obj.magic
                                                   (FStar_Range.mk_range
                                                      "Pulse.Checker.Pure.fst"
                                                      (Prims.of_int (96))
                                                      (Prims.of_int (17))
                                                      (Prims.of_int (96))
                                                      (Prims.of_int (98)))))
                                             (FStar_Sealed.seal
                                                (Obj.magic
                                                   (FStar_Range.mk_range
                                                      "Pulse.Checker.Pure.fst"
                                                      (Prims.of_int (95))
                                                      (Prims.of_int (54))
                                                      (Prims.of_int (103))
                                                      (Prims.of_int (12)))))
                                             (Obj.magic uu___5)
                                             (fun uu___6 ->
                                                (fun uu___6 ->
                                                   match uu___6 with
                                                   | (res, iss) ->
                                                       (match res with
                                                        | FStar_Pervasives_Native.None
                                                            ->
                                                            let uu___7 =
                                                              debug g
                                                                (fun uu___8
                                                                   ->
                                                                   (fun
                                                                    uu___8 ->
                                                                    Obj.magic
                                                                    (FStar_Tactics_Effect.lift_div_tac
                                                                    (fun
                                                                    uu___9 ->
                                                                    "Returned from instantiate_implicits: None")))
                                                                    uu___8) in
                                                            Obj.magic
                                                              (FStar_Tactics_Effect.tac_bind
                                                                 (FStar_Sealed.seal
                                                                    (
                                                                    Obj.magic
                                                                    (FStar_Range.mk_range
                                                                    "Pulse.Checker.Pure.fst"
                                                                    (Prims.of_int (99))
                                                                    (Prims.of_int (4))
                                                                    (Prims.of_int (99))
                                                                    (Prims.of_int (66)))))
                                                                 (FStar_Sealed.seal
                                                                    (
                                                                    Obj.magic
                                                                    (FStar_Range.mk_range
                                                                    "Pulse.Checker.Pure.fst"
                                                                    (Prims.of_int (100))
                                                                    (Prims.of_int (4))
                                                                    (Prims.of_int (100))
                                                                    (Prims.of_int (12)))))
                                                                 (Obj.magic
                                                                    uu___7)
                                                                 (fun uu___8
                                                                    ->
                                                                    FStar_Tactics_Effect.lift_div_tac
                                                                    (fun
                                                                    uu___9 ->
                                                                    (res,
                                                                    iss))))
                                                        | FStar_Pervasives_Native.Some
                                                            (uu___7, t2,
                                                             uu___8)
                                                            ->
                                                            let uu___9 =
                                                              debug g
                                                                (fun uu___10
                                                                   ->
                                                                   let uu___11
                                                                    =
                                                                    FStarC_Tactics_V2_Builtins.term_to_string
                                                                    t2 in
                                                                   FStar_Tactics_Effect.tac_bind
                                                                    (FStar_Sealed.seal
                                                                    (Obj.magic
                                                                    (FStar_Range.mk_range
                                                                    "Pulse.Checker.Pure.fst"
                                                                    (Prims.of_int (102))
                                                                    (Prims.of_int (79))
                                                                    (Prims.of_int (102))
                                                                    (Prims.of_int (99)))))
                                                                    (FStar_Sealed.seal
                                                                    (Obj.magic
                                                                    (FStar_Range.mk_range
                                                                    "Prims.fst"
                                                                    (Prims.of_int (611))
                                                                    (Prims.of_int (19))
                                                                    (Prims.of_int (611))
                                                                    (Prims.of_int (31)))))
                                                                    (Obj.magic
                                                                    uu___11)
                                                                    (fun
                                                                    uu___12
                                                                    ->
                                                                    FStar_Tactics_Effect.lift_div_tac
                                                                    (fun
                                                                    uu___13
                                                                    ->
                                                                    Prims.strcat
                                                                    "Returned from instantiate_implicits: "
                                                                    (Prims.strcat
                                                                    uu___12
                                                                    "")))) in
                                                            Obj.magic
                                                              (FStar_Tactics_Effect.tac_bind
                                                                 (FStar_Sealed.seal
                                                                    (
                                                                    Obj.magic
                                                                    (FStar_Range.mk_range
                                                                    "Pulse.Checker.Pure.fst"
                                                                    (Prims.of_int (102))
                                                                    (Prims.of_int (4))
                                                                    (Prims.of_int (102))
                                                                    (Prims.of_int (100)))))
                                                                 (FStar_Sealed.seal
                                                                    (
                                                                    Obj.magic
                                                                    (FStar_Range.mk_range
                                                                    "Pulse.Checker.Pure.fst"
                                                                    (Prims.of_int (103))
                                                                    (Prims.of_int (4))
                                                                    (Prims.of_int (103))
                                                                    (Prims.of_int (12)))))
                                                                 (Obj.magic
                                                                    uu___9)
                                                                 (fun uu___10
                                                                    ->
                                                                    FStar_Tactics_Effect.lift_div_tac
                                                                    (fun
                                                                    uu___11
                                                                    ->
                                                                    (res,
                                                                    iss))))))
                                                  uu___6))) uu___5))) uu___3)))
                 uu___1)
let (rtb_core_check_term :
  Pulse_Typing_Env.env ->
    FStarC_Reflection_Types.env ->
      FStarC_Reflection_Types.term ->
        FStarC_TypeChecker_Core.tot_or_ghost ->
          FStarC_Reflection_Types.term ->
            (((unit, unit, unit) FStarC_Tactics_Types.typing_token
               FStar_Pervasives_Native.option * FStar_Issue.issue Prims.list),
              unit) FStar_Tactics_Effect.tac_repr)
  =
  fun g ->
    fun f ->
      fun e ->
        fun eff ->
          fun t ->
            let uu___ = check_ln g "rtb_core_check_term.e" e in
            FStar_Tactics_Effect.tac_bind
              (FStar_Sealed.seal
                 (Obj.magic
                    (FStar_Range.mk_range "Pulse.Checker.Pure.fst"
                       (Prims.of_int (106)) (Prims.of_int (2))
                       (Prims.of_int (106)) (Prims.of_int (38)))))
              (FStar_Sealed.seal
                 (Obj.magic
                    (FStar_Range.mk_range "Pulse.Checker.Pure.fst"
                       (Prims.of_int (107)) (Prims.of_int (2))
                       (Prims.of_int (114)) (Prims.of_int (5)))))
              (Obj.magic uu___)
              (fun uu___1 ->
                 (fun uu___1 ->
                    let uu___2 = check_ln g "rtb_core_check_term.t" t in
                    Obj.magic
                      (FStar_Tactics_Effect.tac_bind
                         (FStar_Sealed.seal
                            (Obj.magic
                               (FStar_Range.mk_range "Pulse.Checker.Pure.fst"
                                  (Prims.of_int (107)) (Prims.of_int (2))
                                  (Prims.of_int (107)) (Prims.of_int (38)))))
                         (FStar_Sealed.seal
                            (Obj.magic
                               (FStar_Range.mk_range "Pulse.Checker.Pure.fst"
                                  (Prims.of_int (108)) (Prims.of_int (2))
                                  (Prims.of_int (114)) (Prims.of_int (5)))))
                         (Obj.magic uu___2)
                         (fun uu___3 ->
                            (fun uu___3 ->
                               let uu___4 =
                                 debug g
                                   (fun uu___5 ->
                                      let uu___6 =
                                        FStarC_Tactics_V2_Builtins.term_to_string
                                          t in
                                      FStar_Tactics_Effect.tac_bind
                                        (FStar_Sealed.seal
                                           (Obj.magic
                                              (FStar_Range.mk_range
                                                 "Pulse.Checker.Pure.fst"
                                                 (Prims.of_int (112))
                                                 (Prims.of_int (16))
                                                 (Prims.of_int (112))
                                                 (Prims.of_int (36)))))
                                        (FStar_Sealed.seal
                                           (Obj.magic
                                              (FStar_Range.mk_range
                                                 "Pulse.Checker.Pure.fst"
                                                 (Prims.of_int (109))
                                                 (Prims.of_int (4))
                                                 (Prims.of_int (112))
                                                 (Prims.of_int (36)))))
                                        (Obj.magic uu___6)
                                        (fun uu___7 ->
                                           (fun uu___7 ->
                                              let uu___8 =
                                                let uu___9 =
                                                  FStarC_Tactics_V2_Builtins.term_to_string
                                                    e in
                                                FStar_Tactics_Effect.tac_bind
                                                  (FStar_Sealed.seal
                                                     (Obj.magic
                                                        (FStar_Range.mk_range
                                                           "Pulse.Checker.Pure.fst"
                                                           (Prims.of_int (111))
                                                           (Prims.of_int (16))
                                                           (Prims.of_int (111))
                                                           (Prims.of_int (36)))))
                                                  (FStar_Sealed.seal
                                                     (Obj.magic
                                                        (FStar_Range.mk_range
                                                           "Pulse.Checker.Pure.fst"
                                                           (Prims.of_int (109))
                                                           (Prims.of_int (4))
                                                           (Prims.of_int (112))
                                                           (Prims.of_int (36)))))
                                                  (Obj.magic uu___9)
                                                  (fun uu___10 ->
                                                     (fun uu___10 ->
                                                        let uu___11 =
                                                          let uu___12 =
                                                            FStarC_Tactics_V2_Builtins.range_to_string
                                                              (Pulse_RuntimeUtils.range_of_term
                                                                 e) in
                                                          FStar_Tactics_Effect.tac_bind
                                                            (FStar_Sealed.seal
                                                               (Obj.magic
                                                                  (FStar_Range.mk_range
                                                                    "Pulse.Checker.Pure.fst"
                                                                    (Prims.of_int (110))
                                                                    (Prims.of_int (16))
                                                                    (Prims.of_int (110))
                                                                    (Prims.of_int (56)))))
                                                            (FStar_Sealed.seal
                                                               (Obj.magic
                                                                  (FStar_Range.mk_range
                                                                    "FStar.Printf.fst"
                                                                    (Prims.of_int (122))
                                                                    (Prims.of_int (8))
                                                                    (Prims.of_int (124))
                                                                    (Prims.of_int (44)))))
                                                            (Obj.magic
                                                               uu___12)
                                                            (fun uu___13 ->
                                                               FStar_Tactics_Effect.lift_div_tac
                                                                 (fun uu___14
                                                                    ->
                                                                    fun x ->
                                                                    fun x1 ->
                                                                    Prims.strcat
                                                                    (Prims.strcat
                                                                    (Prims.strcat
                                                                    "("
                                                                    (Prims.strcat
                                                                    uu___13
                                                                    ") Calling core_check_term on "))
                                                                    (Prims.strcat
                                                                    x " and "))
                                                                    (Prims.strcat
                                                                    x1 ""))) in
                                                        Obj.magic
                                                          (FStar_Tactics_Effect.tac_bind
                                                             (FStar_Sealed.seal
                                                                (Obj.magic
                                                                   (FStar_Range.mk_range
                                                                    "Pulse.Checker.Pure.fst"
                                                                    (Prims.of_int (109))
                                                                    (Prims.of_int (4))
                                                                    (Prims.of_int (112))
                                                                    (Prims.of_int (36)))))
                                                             (FStar_Sealed.seal
                                                                (Obj.magic
                                                                   (FStar_Range.mk_range
                                                                    "Pulse.Checker.Pure.fst"
                                                                    (Prims.of_int (109))
                                                                    (Prims.of_int (4))
                                                                    (Prims.of_int (112))
                                                                    (Prims.of_int (36)))))
                                                             (Obj.magic
                                                                uu___11)
                                                             (fun uu___12 ->
                                                                FStar_Tactics_Effect.lift_div_tac
                                                                  (fun
                                                                    uu___13
                                                                    ->
                                                                    uu___12
                                                                    uu___10))))
                                                       uu___10) in
                                              Obj.magic
                                                (FStar_Tactics_Effect.tac_bind
                                                   (FStar_Sealed.seal
                                                      (Obj.magic
                                                         (FStar_Range.mk_range
                                                            "Pulse.Checker.Pure.fst"
                                                            (Prims.of_int (109))
                                                            (Prims.of_int (4))
                                                            (Prims.of_int (112))
                                                            (Prims.of_int (36)))))
                                                   (FStar_Sealed.seal
                                                      (Obj.magic
                                                         (FStar_Range.mk_range
                                                            "Pulse.Checker.Pure.fst"
                                                            (Prims.of_int (109))
                                                            (Prims.of_int (4))
                                                            (Prims.of_int (112))
                                                            (Prims.of_int (36)))))
                                                   (Obj.magic uu___8)
                                                   (fun uu___9 ->
                                                      FStar_Tactics_Effect.lift_div_tac
                                                        (fun uu___10 ->
                                                           uu___9 uu___7))))
                                             uu___7)) in
                               Obj.magic
                                 (FStar_Tactics_Effect.tac_bind
                                    (FStar_Sealed.seal
                                       (Obj.magic
                                          (FStar_Range.mk_range
                                             "Pulse.Checker.Pure.fst"
                                             (Prims.of_int (108))
                                             (Prims.of_int (2))
                                             (Prims.of_int (112))
                                             (Prims.of_int (37)))))
                                    (FStar_Sealed.seal
                                       (Obj.magic
                                          (FStar_Range.mk_range
                                             "Pulse.Checker.Pure.fst"
                                             (Prims.of_int (112))
                                             (Prims.of_int (38))
                                             (Prims.of_int (114))
                                             (Prims.of_int (5)))))
                                    (Obj.magic uu___4)
                                    (fun uu___5 ->
                                       (fun uu___5 ->
                                          let uu___6 =
                                            Pulse_RuntimeUtils.with_context
                                              (Pulse_Typing_Env.get_context g)
                                              (fun uu___7 ->
                                                 FStarC_Tactics_V2_Builtins.core_check_term
                                                   f e t eff) in
                                          Obj.magic
                                            (FStar_Tactics_Effect.tac_bind
                                               (FStar_Sealed.seal
                                                  (Obj.magic
                                                     (FStar_Range.mk_range
                                                        "Pulse.Checker.Pure.fst"
                                                        (Prims.of_int (113))
                                                        (Prims.of_int (12))
                                                        (Prims.of_int (113))
                                                        (Prims.of_int (84)))))
                                               (FStar_Sealed.seal
                                                  (Obj.magic
                                                     (FStar_Range.mk_range
                                                        "Pulse.Checker.Pure.fst"
                                                        (Prims.of_int (113))
                                                        (Prims.of_int (6))
                                                        (Prims.of_int (113))
                                                        (Prims.of_int (9)))))
                                               (Obj.magic uu___6)
                                               (fun res ->
                                                  FStar_Tactics_Effect.lift_div_tac
                                                    (fun uu___7 -> res))))
                                         uu___5))) uu___3))) uu___1)
let (rtb_core_check_term_at_type :
  Pulse_Typing_Env.env ->
    FStarC_Reflection_Types.env ->
      FStarC_Reflection_Types.term ->
        FStarC_Reflection_Types.term ->
          ((FStarC_TypeChecker_Core.tot_or_ghost
             FStar_Pervasives_Native.option * FStar_Issue.issue Prims.list),
            unit) FStar_Tactics_Effect.tac_repr)
  =
  fun g ->
    fun f ->
      fun e ->
        fun t ->
          let uu___ =
            debug g
              (fun uu___1 ->
                 let uu___2 = FStarC_Tactics_V2_Builtins.term_to_string t in
                 FStar_Tactics_Effect.tac_bind
                   (FStar_Sealed.seal
                      (Obj.magic
                         (FStar_Range.mk_range "Pulse.Checker.Pure.fst"
                            (Prims.of_int (121)) (Prims.of_int (16))
                            (Prims.of_int (121)) (Prims.of_int (36)))))
                   (FStar_Sealed.seal
                      (Obj.magic
                         (FStar_Range.mk_range "Pulse.Checker.Pure.fst"
                            (Prims.of_int (118)) (Prims.of_int (4))
                            (Prims.of_int (121)) (Prims.of_int (36)))))
                   (Obj.magic uu___2)
                   (fun uu___3 ->
                      (fun uu___3 ->
                         let uu___4 =
                           let uu___5 =
                             FStarC_Tactics_V2_Builtins.term_to_string e in
                           FStar_Tactics_Effect.tac_bind
                             (FStar_Sealed.seal
                                (Obj.magic
                                   (FStar_Range.mk_range
                                      "Pulse.Checker.Pure.fst"
                                      (Prims.of_int (120))
                                      (Prims.of_int (16))
                                      (Prims.of_int (120))
                                      (Prims.of_int (36)))))
                             (FStar_Sealed.seal
                                (Obj.magic
                                   (FStar_Range.mk_range
                                      "Pulse.Checker.Pure.fst"
                                      (Prims.of_int (118)) (Prims.of_int (4))
                                      (Prims.of_int (121))
                                      (Prims.of_int (36)))))
                             (Obj.magic uu___5)
                             (fun uu___6 ->
                                (fun uu___6 ->
                                   let uu___7 =
                                     let uu___8 =
                                       FStarC_Tactics_V2_Builtins.range_to_string
                                         (Pulse_RuntimeUtils.range_of_term e) in
                                     FStar_Tactics_Effect.tac_bind
                                       (FStar_Sealed.seal
                                          (Obj.magic
                                             (FStar_Range.mk_range
                                                "Pulse.Checker.Pure.fst"
                                                (Prims.of_int (119))
                                                (Prims.of_int (16))
                                                (Prims.of_int (119))
                                                (Prims.of_int (56)))))
                                       (FStar_Sealed.seal
                                          (Obj.magic
                                             (FStar_Range.mk_range
                                                "FStar.Printf.fst"
                                                (Prims.of_int (122))
                                                (Prims.of_int (8))
                                                (Prims.of_int (124))
                                                (Prims.of_int (44)))))
                                       (Obj.magic uu___8)
                                       (fun uu___9 ->
                                          FStar_Tactics_Effect.lift_div_tac
                                            (fun uu___10 ->
                                               fun x ->
                                                 fun x1 ->
                                                   Prims.strcat
                                                     (Prims.strcat
                                                        (Prims.strcat "("
                                                           (Prims.strcat
                                                              uu___9
                                                              ") Calling core_check_term_at_type on "))
                                                        (Prims.strcat x
                                                           " and "))
                                                     (Prims.strcat x1 ""))) in
                                   Obj.magic
                                     (FStar_Tactics_Effect.tac_bind
                                        (FStar_Sealed.seal
                                           (Obj.magic
                                              (FStar_Range.mk_range
                                                 "Pulse.Checker.Pure.fst"
                                                 (Prims.of_int (118))
                                                 (Prims.of_int (4))
                                                 (Prims.of_int (121))
                                                 (Prims.of_int (36)))))
                                        (FStar_Sealed.seal
                                           (Obj.magic
                                              (FStar_Range.mk_range
                                                 "Pulse.Checker.Pure.fst"
                                                 (Prims.of_int (118))
                                                 (Prims.of_int (4))
                                                 (Prims.of_int (121))
                                                 (Prims.of_int (36)))))
                                        (Obj.magic uu___7)
                                        (fun uu___8 ->
                                           FStar_Tactics_Effect.lift_div_tac
                                             (fun uu___9 -> uu___8 uu___6))))
                                  uu___6) in
                         Obj.magic
                           (FStar_Tactics_Effect.tac_bind
                              (FStar_Sealed.seal
                                 (Obj.magic
                                    (FStar_Range.mk_range
                                       "Pulse.Checker.Pure.fst"
                                       (Prims.of_int (118))
                                       (Prims.of_int (4))
                                       (Prims.of_int (121))
                                       (Prims.of_int (36)))))
                              (FStar_Sealed.seal
                                 (Obj.magic
                                    (FStar_Range.mk_range
                                       "Pulse.Checker.Pure.fst"
                                       (Prims.of_int (118))
                                       (Prims.of_int (4))
                                       (Prims.of_int (121))
                                       (Prims.of_int (36)))))
                              (Obj.magic uu___4)
                              (fun uu___5 ->
                                 FStar_Tactics_Effect.lift_div_tac
                                   (fun uu___6 -> uu___5 uu___3)))) uu___3)) in
          FStar_Tactics_Effect.tac_bind
            (FStar_Sealed.seal
               (Obj.magic
                  (FStar_Range.mk_range "Pulse.Checker.Pure.fst"
                     (Prims.of_int (117)) (Prims.of_int (2))
                     (Prims.of_int (121)) (Prims.of_int (37)))))
            (FStar_Sealed.seal
               (Obj.magic
                  (FStar_Range.mk_range "Pulse.Checker.Pure.fst"
                     (Prims.of_int (121)) (Prims.of_int (38))
                     (Prims.of_int (123)) (Prims.of_int (5)))))
            (Obj.magic uu___)
            (fun uu___1 ->
               (fun uu___1 ->
                  let uu___2 =
                    Pulse_RuntimeUtils.with_context
                      (Pulse_Typing_Env.get_context g)
                      (fun uu___3 ->
                         FStarC_Tactics_V2_Builtins.core_check_term_at_type f
                           e t) in
                  Obj.magic
                    (FStar_Tactics_Effect.tac_bind
                       (FStar_Sealed.seal
                          (Obj.magic
                             (FStar_Range.mk_range "Pulse.Checker.Pure.fst"
                                (Prims.of_int (122)) (Prims.of_int (12))
                                (Prims.of_int (122)) (Prims.of_int (88)))))
                       (FStar_Sealed.seal
                          (Obj.magic
                             (FStar_Range.mk_range "Pulse.Checker.Pure.fst"
                                (Prims.of_int (122)) (Prims.of_int (6))
                                (Prims.of_int (122)) (Prims.of_int (9)))))
                       (Obj.magic uu___2)
                       (fun res ->
                          FStar_Tactics_Effect.lift_div_tac
                            (fun uu___3 -> res)))) uu___1)
let (mk_squash0 :
  FStarC_Reflection_Types.term -> FStarC_Reflection_Types.term) =
  fun t ->
    let sq =
      FStarC_Reflection_V2_Builtins.pack_ln
        (FStarC_Reflection_V2_Data.Tv_UInst
           ((FStarC_Reflection_V2_Builtins.pack_fv
               FStar_Reflection_Const.squash_qn), [Pulse_Syntax_Pure.u_zero])) in
    FStar_Reflection_V2_Derived.mk_e_app sq [t]

let (rtb_check_prop_validity :
  Pulse_Typing_Env.env ->
    Prims.bool ->
      FStarC_Reflection_Types.env ->
        FStarC_Reflection_Types.term ->
          ((unit FStar_Pervasives_Native.option * FStar_Issue.issue
             Prims.list),
            unit) FStar_Tactics_Effect.tac_repr)
  =
  fun g ->
    fun sync ->
      fun f ->
        fun p ->
          let uu___ = check_ln g "rtb_check_prop_validity" p in
          FStar_Tactics_Effect.tac_bind
            (FStar_Sealed.seal
               (Obj.magic
                  (FStar_Range.mk_range "Pulse.Checker.Pure.fst"
                     (Prims.of_int (134)) (Prims.of_int (2))
                     (Prims.of_int (134)) (Prims.of_int (40)))))
            (FStar_Sealed.seal
               (Obj.magic
                  (FStar_Range.mk_range "Pulse.Checker.Pure.fst"
                     (Prims.of_int (135)) (Prims.of_int (2))
                     (Prims.of_int (149)) (Prims.of_int (65)))))
            (Obj.magic uu___)
            (fun uu___1 ->
               (fun uu___1 ->
                  let uu___2 =
                    debug g
                      (fun uu___3 ->
                         let uu___4 =
                           FStarC_Tactics_V2_Builtins.term_to_string p in
                         FStar_Tactics_Effect.tac_bind
                           (FStar_Sealed.seal
                              (Obj.magic
                                 (FStar_Range.mk_range
                                    "Pulse.Checker.Pure.fst"
                                    (Prims.of_int (138)) (Prims.of_int (10))
                                    (Prims.of_int (138)) (Prims.of_int (30)))))
                           (FStar_Sealed.seal
                              (Obj.magic
                                 (FStar_Range.mk_range
                                    "Pulse.Checker.Pure.fst"
                                    (Prims.of_int (136)) (Prims.of_int (4))
                                    (Prims.of_int (138)) (Prims.of_int (30)))))
                           (Obj.magic uu___4)
                           (fun uu___5 ->
                              (fun uu___5 ->
                                 let uu___6 =
                                   let uu___7 =
                                     FStarC_Tactics_V2_Builtins.range_to_string
                                       (Pulse_RuntimeUtils.range_of_term p) in
                                   FStar_Tactics_Effect.tac_bind
                                     (FStar_Sealed.seal
                                        (Obj.magic
                                           (FStar_Range.mk_range
                                              "Pulse.Checker.Pure.fst"
                                              (Prims.of_int (137))
                                              (Prims.of_int (10))
                                              (Prims.of_int (137))
                                              (Prims.of_int (50)))))
                                     (FStar_Sealed.seal
                                        (Obj.magic
                                           (FStar_Range.mk_range
                                              "FStar.Printf.fst"
                                              (Prims.of_int (122))
                                              (Prims.of_int (8))
                                              (Prims.of_int (124))
                                              (Prims.of_int (44)))))
                                     (Obj.magic uu___7)
                                     (fun uu___8 ->
                                        FStar_Tactics_Effect.lift_div_tac
                                          (fun uu___9 ->
                                             fun x ->
                                               Prims.strcat
                                                 (Prims.strcat "("
                                                    (Prims.strcat uu___8
                                                       ") Calling check_prop_validity on "))
                                                 (Prims.strcat x ""))) in
                                 Obj.magic
                                   (FStar_Tactics_Effect.tac_bind
                                      (FStar_Sealed.seal
                                         (Obj.magic
                                            (FStar_Range.mk_range
                                               "Pulse.Checker.Pure.fst"
                                               (Prims.of_int (136))
                                               (Prims.of_int (4))
                                               (Prims.of_int (138))
                                               (Prims.of_int (30)))))
                                      (FStar_Sealed.seal
                                         (Obj.magic
                                            (FStar_Range.mk_range
                                               "Pulse.Checker.Pure.fst"
                                               (Prims.of_int (136))
                                               (Prims.of_int (4))
                                               (Prims.of_int (138))
                                               (Prims.of_int (30)))))
                                      (Obj.magic uu___6)
                                      (fun uu___7 ->
                                         FStar_Tactics_Effect.lift_div_tac
                                           (fun uu___8 -> uu___7 uu___5))))
                                uu___5)) in
                  Obj.magic
                    (FStar_Tactics_Effect.tac_bind
                       (FStar_Sealed.seal
                          (Obj.magic
                             (FStar_Range.mk_range "Pulse.Checker.Pure.fst"
                                (Prims.of_int (135)) (Prims.of_int (2))
                                (Prims.of_int (138)) (Prims.of_int (31)))))
                       (FStar_Sealed.seal
                          (Obj.magic
                             (FStar_Range.mk_range "Pulse.Checker.Pure.fst"
                                (Prims.of_int (138)) (Prims.of_int (32))
                                (Prims.of_int (149)) (Prims.of_int (65)))))
                       (Obj.magic uu___2)
                       (fun uu___3 ->
                          (fun uu___3 ->
                             let uu___4 =
                               Obj.magic
                                 (FStar_Tactics_Effect.lift_div_tac
                                    (fun uu___5 -> mk_squash0 p)) in
                             Obj.magic
                               (FStar_Tactics_Effect.tac_bind
                                  (FStar_Sealed.seal
                                     (Obj.magic
                                        (FStar_Range.mk_range
                                           "Pulse.Checker.Pure.fst"
                                           (Prims.of_int (139))
                                           (Prims.of_int (11))
                                           (Prims.of_int (139))
                                           (Prims.of_int (23)))))
                                  (FStar_Sealed.seal
                                     (Obj.magic
                                        (FStar_Range.mk_range
                                           "Pulse.Checker.Pure.fst"
                                           (Prims.of_int (139))
                                           (Prims.of_int (26))
                                           (Prims.of_int (149))
                                           (Prims.of_int (65)))))
                                  (Obj.magic uu___4)
                                  (fun uu___5 ->
                                     (fun sp ->
                                        let uu___5 =
                                          Pulse_RuntimeUtils.with_context
                                            (Pulse_Typing_Env.get_context g)
                                            (fun uu___6 ->
                                               if sync
                                               then
                                                 FStar_Tactics_V2_Derived.with_policy
                                                   FStarC_Tactics_Types.ForceSMT
                                                   (fun uu___7 ->
                                                      FStarC_Tactics_V2_Builtins.check_prop_validity
                                                        f sp)
                                               else
                                                 FStarC_Tactics_V2_Builtins.check_prop_validity
                                                   f sp) in
                                        Obj.magic
                                          (FStar_Tactics_Effect.tac_bind
                                             (FStar_Sealed.seal
                                                (Obj.magic
                                                   (FStar_Range.mk_range
                                                      "Pulse.Checker.Pure.fst"
                                                      (Prims.of_int (141))
                                                      (Prims.of_int (4))
                                                      (Prims.of_int (145))
                                                      (Prims.of_int (40)))))
                                             (FStar_Sealed.seal
                                                (Obj.magic
                                                   (FStar_Range.mk_range
                                                      "Pulse.Checker.Pure.fst"
                                                      (Prims.of_int (139))
                                                      (Prims.of_int (26))
                                                      (Prims.of_int (149))
                                                      (Prims.of_int (65)))))
                                             (Obj.magic uu___5)
                                             (fun uu___6 ->
                                                FStar_Tactics_Effect.lift_div_tac
                                                  (fun uu___7 ->
                                                     match uu___6 with
                                                     | (res, issues) ->
                                                         (match res with
                                                          | FStar_Pervasives_Native.None
                                                              ->
                                                              (FStar_Pervasives_Native.None,
                                                                issues)
                                                          | FStar_Pervasives_Native.Some
                                                              tok ->
                                                              ((FStar_Pervasives_Native.Some
                                                                  ()),
                                                                issues))))))
                                       uu___5))) uu___3))) uu___1)
let (exn_as_issue : Prims.exn -> FStar_Issue.issue) =
  fun e ->
    FStar_Issue.mk_issue_doc "Error"
      [FStarC_Pprint.arbitrary_string (Pulse_RuntimeUtils.print_exn e)]
      FStar_Pervasives_Native.None FStar_Pervasives_Native.None []
let catch_all :
  'a .
    (unit ->
       (('a FStar_Pervasives_Native.option * FStar_Issue.issue Prims.list),
         unit) FStar_Tactics_Effect.tac_repr)
      ->
      (('a FStar_Pervasives_Native.option * FStar_Issue.issue Prims.list),
        unit) FStar_Tactics_Effect.tac_repr
  =
  fun f ->
    let uu___ = FStarC_Tactics_V2_Builtins.catch f in
    FStar_Tactics_Effect.tac_bind
      (FStar_Sealed.seal
         (Obj.magic
            (FStar_Range.mk_range "Pulse.Checker.Pure.fst"
               (Prims.of_int (156)) (Prims.of_int (10)) (Prims.of_int (156))
               (Prims.of_int (19)))))
      (FStar_Sealed.seal
         (Obj.magic
            (FStar_Range.mk_range "Pulse.Checker.Pure.fst"
               (Prims.of_int (156)) (Prims.of_int (4)) (Prims.of_int (159))
               (Prims.of_int (16))))) (Obj.magic uu___)
      (fun uu___1 ->
         FStar_Tactics_Effect.lift_div_tac
           (fun uu___2 ->
              match uu___1 with
              | FStar_Pervasives.Inl exn ->
                  (FStar_Pervasives_Native.None, [exn_as_issue exn])
              | FStar_Pervasives.Inr v -> v))
let (readback_failure :
  FStarC_Reflection_Types.term ->
    (Prims.string, unit) FStar_Tactics_Effect.tac_repr)
  =
  fun s ->
    let uu___ = FStarC_Tactics_V2_Builtins.term_to_string s in
    FStar_Tactics_Effect.tac_bind
      (FStar_Sealed.seal
         (Obj.magic
            (FStar_Range.mk_range "Pulse.Checker.Pure.fst"
               (Prims.of_int (163)) (Prims.of_int (17)) (Prims.of_int (163))
               (Prims.of_int (37)))))
      (FStar_Sealed.seal
         (Obj.magic
            (FStar_Range.mk_range "Pulse.Checker.Pure.fst"
               (Prims.of_int (162)) (Prims.of_int (2)) (Prims.of_int (163))
               (Prims.of_int (37))))) (Obj.magic uu___)
      (fun uu___1 ->
         FStar_Tactics_Effect.lift_div_tac
           (fun uu___2 ->
              Prims.strcat "Internal error: failed to readback F* term "
                (Prims.strcat uu___1 "")))
let (ill_typed_term :
  Pulse_Syntax_Base.term ->
    Pulse_Syntax_Base.term FStar_Pervasives_Native.option ->
      Pulse_Syntax_Base.term FStar_Pervasives_Native.option ->
        (FStarC_Pprint.document Prims.list, unit)
          FStar_Tactics_Effect.tac_repr)
  =
  fun t ->
    fun expected_typ ->
      fun got_typ ->
        match (expected_typ, got_typ) with
        | (FStar_Pervasives_Native.None, uu___) ->
            let uu___1 =
              let uu___2 = Pulse_PP.pp Pulse_PP.printable_term t in
              FStar_Tactics_Effect.tac_bind
                (FStar_Sealed.seal
                   (Obj.magic
                      (FStar_Range.mk_range "Pulse.Checker.Pure.fst"
                         (Prims.of_int (169)) (Prims.of_int (32))
                         (Prims.of_int (169)) (Prims.of_int (36)))))
                (FStar_Sealed.seal
                   (Obj.magic
                      (FStar_Range.mk_range "Pulse.Checker.Pure.fst"
                         (Prims.of_int (169)) (Prims.of_int (5))
                         (Prims.of_int (169)) (Prims.of_int (36)))))
                (Obj.magic uu___2)
                (fun uu___3 ->
                   FStar_Tactics_Effect.lift_div_tac
                     (fun uu___4 ->
                        FStarC_Pprint.op_Hat_Hat
                          (Pulse_PP.text "Ill-typed term: ") uu___3)) in
            FStar_Tactics_Effect.tac_bind
              (FStar_Sealed.seal
                 (Obj.magic
                    (FStar_Range.mk_range "Pulse.Checker.Pure.fst"
                       (Prims.of_int (169)) (Prims.of_int (5))
                       (Prims.of_int (169)) (Prims.of_int (36)))))
              (FStar_Sealed.seal
                 (Obj.magic
                    (FStar_Range.mk_range "Pulse.Checker.Pure.fst"
                       (Prims.of_int (169)) (Prims.of_int (4))
                       (Prims.of_int (169)) (Prims.of_int (37)))))
              (Obj.magic uu___1)
              (fun uu___2 ->
                 FStar_Tactics_Effect.lift_div_tac (fun uu___3 -> [uu___2]))
        | (FStar_Pervasives_Native.Some ty, FStar_Pervasives_Native.None) ->
            let uu___ =
              let uu___1 =
                let uu___2 = Pulse_PP.pp Pulse_PP.printable_term ty in
                FStar_Tactics_Effect.tac_bind
                  (FStar_Sealed.seal
                     (Obj.magic
                        (FStar_Range.mk_range "Pulse.Checker.Pure.fst"
                           (Prims.of_int (171)) (Prims.of_int (47))
                           (Prims.of_int (171)) (Prims.of_int (54)))))
                  (FStar_Sealed.seal
                     (Obj.magic
                        (FStar_Range.mk_range "Pulse.Checker.Pure.fst"
                           (Prims.of_int (171)) (Prims.of_int (5))
                           (Prims.of_int (171)) (Prims.of_int (54)))))
                  (Obj.magic uu___2)
                  (fun uu___3 ->
                     FStar_Tactics_Effect.lift_div_tac
                       (fun uu___4 ->
                          FStarC_Pprint.prefix (Prims.of_int (2))
                            Prims.int_one
                            (Pulse_PP.text "Expected term of type") uu___3)) in
              FStar_Tactics_Effect.tac_bind
                (FStar_Sealed.seal
                   (Obj.magic
                      (FStar_Range.mk_range "Pulse.Checker.Pure.fst"
                         (Prims.of_int (171)) (Prims.of_int (5))
                         (Prims.of_int (171)) (Prims.of_int (54)))))
                (FStar_Sealed.seal
                   (Obj.magic
                      (FStar_Range.mk_range "Pulse.Checker.Pure.fst"
                         (Prims.of_int (171)) (Prims.of_int (5))
                         (Prims.of_int (172)) (Prims.of_int (40)))))
                (Obj.magic uu___1)
                (fun uu___2 ->
                   (fun uu___2 ->
                      let uu___3 =
                        let uu___4 = Pulse_PP.pp Pulse_PP.printable_term t in
                        FStar_Tactics_Effect.tac_bind
                          (FStar_Sealed.seal
                             (Obj.magic
                                (FStar_Range.mk_range
                                   "Pulse.Checker.Pure.fst"
                                   (Prims.of_int (172)) (Prims.of_int (34))
                                   (Prims.of_int (172)) (Prims.of_int (40)))))
                          (FStar_Sealed.seal
                             (Obj.magic
                                (FStar_Range.mk_range
                                   "Pulse.Checker.Pure.fst"
                                   (Prims.of_int (172)) (Prims.of_int (5))
                                   (Prims.of_int (172)) (Prims.of_int (40)))))
                          (Obj.magic uu___4)
                          (fun uu___5 ->
                             FStar_Tactics_Effect.lift_div_tac
                               (fun uu___6 ->
                                  FStarC_Pprint.prefix (Prims.of_int (2))
                                    Prims.int_one (Pulse_PP.text "got term")
                                    uu___5)) in
                      Obj.magic
                        (FStar_Tactics_Effect.tac_bind
                           (FStar_Sealed.seal
                              (Obj.magic
                                 (FStar_Range.mk_range
                                    "Pulse.Checker.Pure.fst"
                                    (Prims.of_int (172)) (Prims.of_int (5))
                                    (Prims.of_int (172)) (Prims.of_int (40)))))
                           (FStar_Sealed.seal
                              (Obj.magic
                                 (FStar_Range.mk_range
                                    "Pulse.Checker.Pure.fst"
                                    (Prims.of_int (171)) (Prims.of_int (5))
                                    (Prims.of_int (172)) (Prims.of_int (40)))))
                           (Obj.magic uu___3)
                           (fun uu___4 ->
                              FStar_Tactics_Effect.lift_div_tac
                                (fun uu___5 ->
                                   FStarC_Pprint.op_Hat_Slash_Hat uu___2
                                     uu___4)))) uu___2) in
            FStar_Tactics_Effect.tac_bind
              (FStar_Sealed.seal
                 (Obj.magic
                    (FStar_Range.mk_range "Pulse.Checker.Pure.fst"
                       (Prims.of_int (171)) (Prims.of_int (5))
                       (Prims.of_int (172)) (Prims.of_int (40)))))
              (FStar_Sealed.seal
                 (Obj.magic
                    (FStar_Range.mk_range "Pulse.Checker.Pure.fst"
                       (Prims.of_int (171)) (Prims.of_int (4))
                       (Prims.of_int (172)) (Prims.of_int (41)))))
              (Obj.magic uu___)
              (fun uu___1 ->
                 FStar_Tactics_Effect.lift_div_tac (fun uu___2 -> [uu___1]))
        | (FStar_Pervasives_Native.Some ty, FStar_Pervasives_Native.Some ty')
            ->
            let uu___ =
              let uu___1 =
                let uu___2 = Pulse_PP.pp Pulse_PP.printable_term ty in
                FStar_Tactics_Effect.tac_bind
                  (FStar_Sealed.seal
                     (Obj.magic
                        (FStar_Range.mk_range "Pulse.Checker.Pure.fst"
                           (Prims.of_int (174)) (Prims.of_int (47))
                           (Prims.of_int (174)) (Prims.of_int (54)))))
                  (FStar_Sealed.seal
                     (Obj.magic
                        (FStar_Range.mk_range "Pulse.Checker.Pure.fst"
                           (Prims.of_int (174)) (Prims.of_int (5))
                           (Prims.of_int (174)) (Prims.of_int (54)))))
                  (Obj.magic uu___2)
                  (fun uu___3 ->
                     FStar_Tactics_Effect.lift_div_tac
                       (fun uu___4 ->
                          FStarC_Pprint.prefix (Prims.of_int (2))
                            Prims.int_one
                            (Pulse_PP.text "Expected term of type") uu___3)) in
              FStar_Tactics_Effect.tac_bind
                (FStar_Sealed.seal
                   (Obj.magic
                      (FStar_Range.mk_range "Pulse.Checker.Pure.fst"
                         (Prims.of_int (174)) (Prims.of_int (5))
                         (Prims.of_int (174)) (Prims.of_int (54)))))
                (FStar_Sealed.seal
                   (Obj.magic
                      (FStar_Range.mk_range "Pulse.Checker.Pure.fst"
                         (Prims.of_int (174)) (Prims.of_int (5))
                         (Prims.of_int (176)) (Prims.of_int (41)))))
                (Obj.magic uu___1)
                (fun uu___2 ->
                   (fun uu___2 ->
                      let uu___3 =
                        let uu___4 =
                          let uu___5 = Pulse_PP.pp Pulse_PP.printable_term t in
                          FStar_Tactics_Effect.tac_bind
                            (FStar_Sealed.seal
                               (Obj.magic
                                  (FStar_Range.mk_range
                                     "Pulse.Checker.Pure.fst"
                                     (Prims.of_int (175)) (Prims.of_int (34))
                                     (Prims.of_int (175)) (Prims.of_int (40)))))
                            (FStar_Sealed.seal
                               (Obj.magic
                                  (FStar_Range.mk_range
                                     "Pulse.Checker.Pure.fst"
                                     (Prims.of_int (175)) (Prims.of_int (5))
                                     (Prims.of_int (175)) (Prims.of_int (40)))))
                            (Obj.magic uu___5)
                            (fun uu___6 ->
                               FStar_Tactics_Effect.lift_div_tac
                                 (fun uu___7 ->
                                    FStarC_Pprint.prefix (Prims.of_int (2))
                                      Prims.int_one
                                      (Pulse_PP.text "got term") uu___6)) in
                        FStar_Tactics_Effect.tac_bind
                          (FStar_Sealed.seal
                             (Obj.magic
                                (FStar_Range.mk_range
                                   "Pulse.Checker.Pure.fst"
                                   (Prims.of_int (175)) (Prims.of_int (5))
                                   (Prims.of_int (175)) (Prims.of_int (40)))))
                          (FStar_Sealed.seal
                             (Obj.magic
                                (FStar_Range.mk_range
                                   "Pulse.Checker.Pure.fst"
                                   (Prims.of_int (175)) (Prims.of_int (5))
                                   (Prims.of_int (176)) (Prims.of_int (41)))))
                          (Obj.magic uu___4)
                          (fun uu___5 ->
                             (fun uu___5 ->
                                let uu___6 =
                                  let uu___7 =
                                    Pulse_PP.pp Pulse_PP.printable_term ty' in
                                  FStar_Tactics_Effect.tac_bind
                                    (FStar_Sealed.seal
                                       (Obj.magic
                                          (FStar_Range.mk_range
                                             "Pulse.Checker.Pure.fst"
                                             (Prims.of_int (176))
                                             (Prims.of_int (33))
                                             (Prims.of_int (176))
                                             (Prims.of_int (41)))))
                                    (FStar_Sealed.seal
                                       (Obj.magic
                                          (FStar_Range.mk_range
                                             "Pulse.Checker.Pure.fst"
                                             (Prims.of_int (176))
                                             (Prims.of_int (5))
                                             (Prims.of_int (176))
                                             (Prims.of_int (41)))))
                                    (Obj.magic uu___7)
                                    (fun uu___8 ->
                                       FStar_Tactics_Effect.lift_div_tac
                                         (fun uu___9 ->
                                            FStarC_Pprint.prefix
                                              (Prims.of_int (2))
                                              Prims.int_one
                                              (Pulse_PP.text "of type")
                                              uu___8)) in
                                Obj.magic
                                  (FStar_Tactics_Effect.tac_bind
                                     (FStar_Sealed.seal
                                        (Obj.magic
                                           (FStar_Range.mk_range
                                              "Pulse.Checker.Pure.fst"
                                              (Prims.of_int (176))
                                              (Prims.of_int (5))
                                              (Prims.of_int (176))
                                              (Prims.of_int (41)))))
                                     (FStar_Sealed.seal
                                        (Obj.magic
                                           (FStar_Range.mk_range
                                              "Pulse.Checker.Pure.fst"
                                              (Prims.of_int (175))
                                              (Prims.of_int (5))
                                              (Prims.of_int (176))
                                              (Prims.of_int (41)))))
                                     (Obj.magic uu___6)
                                     (fun uu___7 ->
                                        FStar_Tactics_Effect.lift_div_tac
                                          (fun uu___8 ->
                                             FStarC_Pprint.op_Hat_Slash_Hat
                                               uu___5 uu___7)))) uu___5) in
                      Obj.magic
                        (FStar_Tactics_Effect.tac_bind
                           (FStar_Sealed.seal
                              (Obj.magic
                                 (FStar_Range.mk_range
                                    "Pulse.Checker.Pure.fst"
                                    (Prims.of_int (175)) (Prims.of_int (5))
                                    (Prims.of_int (176)) (Prims.of_int (41)))))
                           (FStar_Sealed.seal
                              (Obj.magic
                                 (FStar_Range.mk_range
                                    "Pulse.Checker.Pure.fst"
                                    (Prims.of_int (174)) (Prims.of_int (5))
                                    (Prims.of_int (176)) (Prims.of_int (41)))))
                           (Obj.magic uu___3)
                           (fun uu___4 ->
                              FStar_Tactics_Effect.lift_div_tac
                                (fun uu___5 ->
                                   FStarC_Pprint.op_Hat_Slash_Hat uu___2
                                     uu___4)))) uu___2) in
            FStar_Tactics_Effect.tac_bind
              (FStar_Sealed.seal
                 (Obj.magic
                    (FStar_Range.mk_range "Pulse.Checker.Pure.fst"
                       (Prims.of_int (174)) (Prims.of_int (5))
                       (Prims.of_int (176)) (Prims.of_int (41)))))
              (FStar_Sealed.seal
                 (Obj.magic
                    (FStar_Range.mk_range "Pulse.Checker.Pure.fst"
                       (Prims.of_int (174)) (Prims.of_int (4))
                       (Prims.of_int (176)) (Prims.of_int (42)))))
              (Obj.magic uu___)
              (fun uu___1 ->
                 FStar_Tactics_Effect.lift_div_tac (fun uu___2 -> [uu___1]))
let maybe_fail_doc :
  'uuuuu .
    FStar_Issue.issue Prims.list ->
      Pulse_Typing_Env.env ->
        Pulse_Syntax_Base.range ->
          FStarC_Pprint.document Prims.list ->
            ('uuuuu, unit) FStar_Tactics_Effect.tac_repr
  =
  fun issues ->
    fun g ->
      fun rng ->
        fun doc ->
          let uu___ =
            Obj.magic
              (FStar_Tactics_Effect.lift_div_tac
                 (fun uu___1 ->
                    FStar_List_Tot_Base.existsb
                      (fun i ->
                         ((FStar_Issue.level_of_issue i) = "Error") &&
                           (FStar_Pervasives_Native.uu___is_Some
                              (FStar_Issue.range_of_issue i))) issues)) in
          FStar_Tactics_Effect.tac_bind
            (FStar_Sealed.seal
               (Obj.magic
                  (FStar_Range.mk_range "Pulse.Checker.Pure.fst"
                     (Prims.of_int (181)) (Prims.of_int (6))
                     (Prims.of_int (185)) (Prims.of_int (14)))))
            (FStar_Sealed.seal
               (Obj.magic
                  (FStar_Range.mk_range "Pulse.Checker.Pure.fst"
                     (Prims.of_int (187)) (Prims.of_int (2))
                     (Prims.of_int (190)) (Prims.of_int (32)))))
            (Obj.magic uu___)
            (fun uu___1 ->
               (fun has_localized_error ->
                  if has_localized_error
                  then
                    let uu___1 =
                      Obj.magic
                        (FStar_Tactics_Effect.lift_div_tac
                           (fun uu___2 ->
                              FStarC_Pprint.pretty_string
                                Pulse_RuntimeUtils.float_one
                                (Prims.of_int (80))
                                (FStarC_Pprint.concat doc))) in
                    Obj.magic
                      (FStar_Tactics_Effect.tac_bind
                         (FStar_Sealed.seal
                            (Obj.magic
                               (FStar_Range.mk_range "Pulse.Checker.Pure.fst"
                                  (Prims.of_int (188)) (Prims.of_int (41))
                                  (Prims.of_int (188)) (Prims.of_int (83)))))
                         (FStar_Sealed.seal
                            (Obj.magic
                               (FStar_Range.mk_range "Pulse.Checker.Pure.fst"
                                  (Prims.of_int (189)) (Prims.of_int (7))
                                  (Prims.of_int (189)) (Prims.of_int (56)))))
                         (Obj.magic uu___1)
                         (fun message ->
                            FStar_Tactics_V2_Derived.fail_at message
                              (FStar_Pervasives_Native.Some
                                 (Pulse_RuntimeUtils.start_of_range rng))))
                  else
                    Obj.magic
                      (Pulse_Typing_Env.fail_doc g
                         (FStar_Pervasives_Native.Some rng) doc)) uu___1)
let (instantiate_term_implicits :
  Pulse_Typing_Env.env ->
    Pulse_Syntax_Base.term ->
      Pulse_Syntax_Base.typ FStar_Pervasives_Native.option ->
        ((Pulse_Syntax_Base.term * Pulse_Syntax_Base.term), unit)
          FStar_Tactics_Effect.tac_repr)
  =
  fun g ->
    fun t0 ->
      fun expected ->
        let uu___ =
          Obj.magic
            (FStar_Tactics_Effect.lift_div_tac
               (fun uu___1 -> Pulse_Typing.elab_env g)) in
        FStar_Tactics_Effect.tac_bind
          (FStar_Sealed.seal
             (Obj.magic
                (FStar_Range.mk_range "Pulse.Checker.Pure.fst"
                   (Prims.of_int (193)) (Prims.of_int (10))
                   (Prims.of_int (193)) (Prims.of_int (20)))))
          (FStar_Sealed.seal
             (Obj.magic
                (FStar_Range.mk_range "Pulse.Checker.Pure.fst"
                   (Prims.of_int (193)) (Prims.of_int (23))
                   (Prims.of_int (215)) (Prims.of_int (14)))))
          (Obj.magic uu___)
          (fun uu___1 ->
             (fun f ->
                let uu___1 =
                  Obj.magic
                    (FStar_Tactics_Effect.lift_div_tac
                       (fun uu___2 -> Pulse_RuntimeUtils.range_of_term t0)) in
                Obj.magic
                  (FStar_Tactics_Effect.tac_bind
                     (FStar_Sealed.seal
                        (Obj.magic
                           (FStar_Range.mk_range "Pulse.Checker.Pure.fst"
                              (Prims.of_int (194)) (Prims.of_int (12))
                              (Prims.of_int (194)) (Prims.of_int (31)))))
                     (FStar_Sealed.seal
                        (Obj.magic
                           (FStar_Range.mk_range "Pulse.Checker.Pure.fst"
                              (Prims.of_int (194)) (Prims.of_int (34))
                              (Prims.of_int (215)) (Prims.of_int (14)))))
                     (Obj.magic uu___1)
                     (fun uu___2 ->
                        (fun rng ->
                           let uu___2 =
                             let uu___3 =
                               Pulse_Typing_Env.get_range g
                                 (FStar_Pervasives_Native.Some rng) in
                             FStar_Tactics_Effect.tac_bind
                               (FStar_Sealed.seal
                                  (Obj.magic
                                     (FStar_Range.mk_range
                                        "Pulse.Checker.Pure.fst"
                                        (Prims.of_int (195))
                                        (Prims.of_int (29))
                                        (Prims.of_int (195))
                                        (Prims.of_int (70)))))
                               (FStar_Sealed.seal
                                  (Obj.magic
                                     (FStar_Range.mk_range
                                        "Pulse.Checker.Pure.fst"
                                        (Prims.of_int (195))
                                        (Prims.of_int (10))
                                        (Prims.of_int (195))
                                        (Prims.of_int (70)))))
                               (Obj.magic uu___3)
                               (fun uu___4 ->
                                  FStar_Tactics_Effect.lift_div_tac
                                    (fun uu___5 ->
                                       Pulse_RuntimeUtils.env_set_range f
                                         uu___4)) in
                           Obj.magic
                             (FStar_Tactics_Effect.tac_bind
                                (FStar_Sealed.seal
                                   (Obj.magic
                                      (FStar_Range.mk_range
                                         "Pulse.Checker.Pure.fst"
                                         (Prims.of_int (195))
                                         (Prims.of_int (10))
                                         (Prims.of_int (195))
                                         (Prims.of_int (70)))))
                                (FStar_Sealed.seal
                                   (Obj.magic
                                      (FStar_Range.mk_range
                                         "Pulse.Checker.Pure.fst"
                                         (Prims.of_int (195))
                                         (Prims.of_int (73))
                                         (Prims.of_int (215))
                                         (Prims.of_int (14)))))
                                (Obj.magic uu___2)
                                (fun uu___3 ->
                                   (fun f1 ->
                                      let uu___3 =
                                        catch_all
                                          (fun uu___4 ->
                                             rtb_instantiate_implicits g f1
                                               t0 expected) in
                                      Obj.magic
                                        (FStar_Tactics_Effect.tac_bind
                                           (FStar_Sealed.seal
                                              (Obj.magic
                                                 (FStar_Range.mk_range
                                                    "Pulse.Checker.Pure.fst"
                                                    (Prims.of_int (196))
                                                    (Prims.of_int (21))
                                                    (Prims.of_int (196))
                                                    (Prims.of_int (83)))))
                                           (FStar_Sealed.seal
                                              (Obj.magic
                                                 (FStar_Range.mk_range
                                                    "Pulse.Checker.Pure.fst"
                                                    (Prims.of_int (195))
                                                    (Prims.of_int (73))
                                                    (Prims.of_int (215))
                                                    (Prims.of_int (14)))))
                                           (Obj.magic uu___3)
                                           (fun uu___4 ->
                                              (fun uu___4 ->
                                                 match uu___4 with
                                                 | (topt, issues) ->
                                                     let uu___5 =
                                                       FStarC_Tactics_V2_Builtins.log_issues
                                                         issues in
                                                     Obj.magic
                                                       (FStar_Tactics_Effect.tac_bind
                                                          (FStar_Sealed.seal
                                                             (Obj.magic
                                                                (FStar_Range.mk_range
                                                                   "Pulse.Checker.Pure.fst"
                                                                   (Prims.of_int (197))
                                                                   (Prims.of_int (2))
                                                                   (Prims.of_int (197))
                                                                   (Prims.of_int (21)))))
                                                          (FStar_Sealed.seal
                                                             (Obj.magic
                                                                (FStar_Range.mk_range
                                                                   "Pulse.Checker.Pure.fst"
                                                                   (Prims.of_int (198))
                                                                   (Prims.of_int (2))
                                                                   (Prims.of_int (215))
                                                                   (Prims.of_int (14)))))
                                                          (Obj.magic uu___5)
                                                          (fun uu___6 ->
                                                             (fun uu___6 ->
                                                                match topt
                                                                with
                                                                | FStar_Pervasives_Native.None
                                                                    ->
                                                                    Obj.magic
                                                                    (Obj.repr
                                                                    (let uu___7
                                                                    =
                                                                    let uu___8
                                                                    =
                                                                    let uu___9
                                                                    =
                                                                    Pulse_PP.pp
                                                                    Pulse_PP.printable_term
                                                                    t0 in
                                                                    FStar_Tactics_Effect.tac_bind
                                                                    (FStar_Sealed.seal
                                                                    (Obj.magic
                                                                    (FStar_Range.mk_range
                                                                    "Pulse.Checker.Pure.fst"
                                                                    (Prims.of_int (204))
                                                                    (Prims.of_int (24))
                                                                    (Prims.of_int (204))
                                                                    (Prims.of_int (31)))))
                                                                    (FStar_Sealed.seal
                                                                    (Obj.magic
                                                                    (FStar_Range.mk_range
                                                                    "Pulse.Checker.Pure.fst"
                                                                    (Prims.of_int (203))
                                                                    (Prims.of_int (14))
                                                                    (Prims.of_int (204))
                                                                    (Prims.of_int (31)))))
                                                                    (Obj.magic
                                                                    uu___9)
                                                                    (fun
                                                                    uu___10
                                                                    ->
                                                                    FStar_Tactics_Effect.lift_div_tac
                                                                    (fun
                                                                    uu___11
                                                                    ->
                                                                    FStarC_Pprint.prefix
                                                                    (Prims.of_int (4))
                                                                    Prims.int_one
                                                                    (Pulse_PP.text
                                                                    "Could not check term:")
                                                                    uu___10)) in
                                                                    FStar_Tactics_Effect.tac_bind
                                                                    (FStar_Sealed.seal
                                                                    (Obj.magic
                                                                    (FStar_Range.mk_range
                                                                    "Pulse.Checker.Pure.fst"
                                                                    (Prims.of_int (203))
                                                                    (Prims.of_int (14))
                                                                    (Prims.of_int (204))
                                                                    (Prims.of_int (31)))))
                                                                    (FStar_Sealed.seal
                                                                    (Obj.magic
                                                                    (FStar_Range.mk_range
                                                                    "Pulse.Checker.Pure.fst"
                                                                    (Prims.of_int (202))
                                                                    (Prims.of_int (15))
                                                                    (Prims.of_int (205))
                                                                    (Prims.of_int (13)))))
                                                                    (Obj.magic
                                                                    uu___8)
                                                                    (fun
                                                                    uu___9 ->
                                                                    FStar_Tactics_Effect.lift_div_tac
                                                                    (fun
                                                                    uu___10
                                                                    ->
                                                                    [uu___9])) in
                                                                    FStar_Tactics_Effect.tac_bind
                                                                    (FStar_Sealed.seal
                                                                    (Obj.magic
                                                                    (FStar_Range.mk_range
                                                                    "Pulse.Checker.Pure.fst"
                                                                    (Prims.of_int (202))
                                                                    (Prims.of_int (15))
                                                                    (Prims.of_int (205))
                                                                    (Prims.of_int (13)))))
                                                                    (FStar_Sealed.seal
                                                                    (Obj.magic
                                                                    (FStar_Range.mk_range
                                                                    "Pulse.Checker.Pure.fst"
                                                                    (Prims.of_int (201))
                                                                    (Prims.of_int (4))
                                                                    (Prims.of_int (205))
                                                                    (Prims.of_int (13)))))
                                                                    (Obj.magic
                                                                    uu___7)
                                                                    (fun
                                                                    uu___8 ->
                                                                    (fun
                                                                    uu___8 ->
                                                                    Obj.magic
                                                                    (maybe_fail_doc
                                                                    issues g
                                                                    rng
                                                                    uu___8))
                                                                    uu___8)))
                                                                | FStar_Pervasives_Native.Some
                                                                    (namedvs,
                                                                    t, ty) ->
                                                                    Obj.magic
                                                                    (Obj.repr
                                                                    (if
                                                                    (FStar_List_Tot_Base.length
                                                                    namedvs)
                                                                    <>
                                                                    Prims.int_zero
                                                                    then
                                                                    Obj.repr
                                                                    (let uu___7
                                                                    =
                                                                    let uu___8
                                                                    =
                                                                    let uu___9
                                                                    =
                                                                    Pulse_PP.pp
                                                                    Pulse_PP.printable_term
                                                                    t0 in
                                                                    FStar_Tactics_Effect.tac_bind
                                                                    (FStar_Sealed.seal
                                                                    (Obj.magic
                                                                    (FStar_Range.mk_range
                                                                    "Pulse.Checker.Pure.fst"
                                                                    (Prims.of_int (213))
                                                                    (Prims.of_int (52))
                                                                    (Prims.of_int (213))
                                                                    (Prims.of_int (59)))))
                                                                    (FStar_Sealed.seal
                                                                    (Obj.magic
                                                                    (FStar_Range.mk_range
                                                                    "Pulse.Checker.Pure.fst"
                                                                    (Prims.of_int (213))
                                                                    (Prims.of_int (10))
                                                                    (Prims.of_int (213))
                                                                    (Prims.of_int (59)))))
                                                                    (Obj.magic
                                                                    uu___9)
                                                                    (fun
                                                                    uu___10
                                                                    ->
                                                                    FStar_Tactics_Effect.lift_div_tac
                                                                    (fun
                                                                    uu___11
                                                                    ->
                                                                    FStarC_Pprint.prefix
                                                                    (Prims.of_int (4))
                                                                    Prims.int_one
                                                                    (Pulse_PP.text
                                                                    "Could not check term:")
                                                                    uu___10)) in
                                                                    FStar_Tactics_Effect.tac_bind
                                                                    (FStar_Sealed.seal
                                                                    (Obj.magic
                                                                    (FStar_Range.mk_range
                                                                    "Pulse.Checker.Pure.fst"
                                                                    (Prims.of_int (213))
                                                                    (Prims.of_int (10))
                                                                    (Prims.of_int (213))
                                                                    (Prims.of_int (59)))))
                                                                    (FStar_Sealed.seal
                                                                    (Obj.magic
                                                                    (FStar_Range.mk_range
                                                                    "Pulse.Checker.Pure.fst"
                                                                    (Prims.of_int (212))
                                                                    (Prims.of_int (14))
                                                                    (Prims.of_int (214))
                                                                    (Prims.of_int (9)))))
                                                                    (Obj.magic
                                                                    uu___8)
                                                                    (fun
                                                                    uu___9 ->
                                                                    FStar_Tactics_Effect.lift_div_tac
                                                                    (fun
                                                                    uu___10
                                                                    ->
                                                                    [uu___9])) in
                                                                    FStar_Tactics_Effect.tac_bind
                                                                    (FStar_Sealed.seal
                                                                    (Obj.magic
                                                                    (FStar_Range.mk_range
                                                                    "Pulse.Checker.Pure.fst"
                                                                    (Prims.of_int (212))
                                                                    (Prims.of_int (14))
                                                                    (Prims.of_int (214))
                                                                    (Prims.of_int (9)))))
                                                                    (FStar_Sealed.seal
                                                                    (Obj.magic
                                                                    (FStar_Range.mk_range
                                                                    "Pulse.Checker.Pure.fst"
                                                                    (Prims.of_int (211))
                                                                    (Prims.of_int (6))
                                                                    (Prims.of_int (214))
                                                                    (Prims.of_int (9)))))
                                                                    (Obj.magic
                                                                    uu___7)
                                                                    (fun
                                                                    uu___8 ->
                                                                    (fun
                                                                    uu___8 ->
                                                                    Obj.magic
                                                                    (maybe_fail_doc
                                                                    [] g rng
                                                                    uu___8))
                                                                    uu___8))
                                                                    else
                                                                    Obj.repr
                                                                    (FStar_Tactics_Effect.lift_div_tac
                                                                    (fun
                                                                    uu___8 ->
                                                                    (t, ty))))))
                                                               uu___6)))
                                                uu___4))) uu___3))) uu___2)))
               uu___1)
let (instantiate_term_implicits_uvs :
  Pulse_Typing_Env.env ->
    Pulse_Syntax_Base.term ->
      ((Pulse_Typing_Env.env, Pulse_Syntax_Base.term, Pulse_Syntax_Base.term)
         FStar_Pervasives.dtuple3,
        unit) FStar_Tactics_Effect.tac_repr)
  =
  fun g ->
    fun t0 ->
      let uu___ =
        Obj.magic
          (FStar_Tactics_Effect.lift_div_tac
             (fun uu___1 -> Pulse_Typing.elab_env g)) in
      FStar_Tactics_Effect.tac_bind
        (FStar_Sealed.seal
           (Obj.magic
              (FStar_Range.mk_range "Pulse.Checker.Pure.fst"
                 (Prims.of_int (218)) (Prims.of_int (10))
                 (Prims.of_int (218)) (Prims.of_int (20)))))
        (FStar_Sealed.seal
           (Obj.magic
              (FStar_Range.mk_range "Pulse.Checker.Pure.fst"
                 (Prims.of_int (218)) (Prims.of_int (23))
                 (Prims.of_int (246)) (Prims.of_int (20)))))
        (Obj.magic uu___)
        (fun uu___1 ->
           (fun f ->
              let uu___1 =
                Obj.magic
                  (FStar_Tactics_Effect.lift_div_tac
                     (fun uu___2 -> Pulse_RuntimeUtils.range_of_term t0)) in
              Obj.magic
                (FStar_Tactics_Effect.tac_bind
                   (FStar_Sealed.seal
                      (Obj.magic
                         (FStar_Range.mk_range "Pulse.Checker.Pure.fst"
                            (Prims.of_int (219)) (Prims.of_int (12))
                            (Prims.of_int (219)) (Prims.of_int (31)))))
                   (FStar_Sealed.seal
                      (Obj.magic
                         (FStar_Range.mk_range "Pulse.Checker.Pure.fst"
                            (Prims.of_int (219)) (Prims.of_int (34))
                            (Prims.of_int (246)) (Prims.of_int (20)))))
                   (Obj.magic uu___1)
                   (fun uu___2 ->
                      (fun rng ->
                         let uu___2 =
                           let uu___3 =
                             Pulse_Typing_Env.get_range g
                               (FStar_Pervasives_Native.Some rng) in
                           FStar_Tactics_Effect.tac_bind
                             (FStar_Sealed.seal
                                (Obj.magic
                                   (FStar_Range.mk_range
                                      "Pulse.Checker.Pure.fst"
                                      (Prims.of_int (220))
                                      (Prims.of_int (29))
                                      (Prims.of_int (220))
                                      (Prims.of_int (70)))))
                             (FStar_Sealed.seal
                                (Obj.magic
                                   (FStar_Range.mk_range
                                      "Pulse.Checker.Pure.fst"
                                      (Prims.of_int (220))
                                      (Prims.of_int (10))
                                      (Prims.of_int (220))
                                      (Prims.of_int (70)))))
                             (Obj.magic uu___3)
                             (fun uu___4 ->
                                FStar_Tactics_Effect.lift_div_tac
                                  (fun uu___5 ->
                                     Pulse_RuntimeUtils.env_set_range f
                                       uu___4)) in
                         Obj.magic
                           (FStar_Tactics_Effect.tac_bind
                              (FStar_Sealed.seal
                                 (Obj.magic
                                    (FStar_Range.mk_range
                                       "Pulse.Checker.Pure.fst"
                                       (Prims.of_int (220))
                                       (Prims.of_int (10))
                                       (Prims.of_int (220))
                                       (Prims.of_int (70)))))
                              (FStar_Sealed.seal
                                 (Obj.magic
                                    (FStar_Range.mk_range
                                       "Pulse.Checker.Pure.fst"
                                       (Prims.of_int (220))
                                       (Prims.of_int (73))
                                       (Prims.of_int (246))
                                       (Prims.of_int (20)))))
                              (Obj.magic uu___2)
                              (fun uu___3 ->
                                 (fun f1 ->
                                    let uu___3 =
                                      catch_all
                                        (fun uu___4 ->
                                           rtb_instantiate_implicits g f1 t0
                                             FStar_Pervasives_Native.None) in
                                    Obj.magic
                                      (FStar_Tactics_Effect.tac_bind
                                         (FStar_Sealed.seal
                                            (Obj.magic
                                               (FStar_Range.mk_range
                                                  "Pulse.Checker.Pure.fst"
                                                  (Prims.of_int (221))
                                                  (Prims.of_int (21))
                                                  (Prims.of_int (221))
                                                  (Prims.of_int (79)))))
                                         (FStar_Sealed.seal
                                            (Obj.magic
                                               (FStar_Range.mk_range
                                                  "Pulse.Checker.Pure.fst"
                                                  (Prims.of_int (220))
                                                  (Prims.of_int (73))
                                                  (Prims.of_int (246))
                                                  (Prims.of_int (20)))))
                                         (Obj.magic uu___3)
                                         (fun uu___4 ->
                                            (fun uu___4 ->
                                               match uu___4 with
                                               | (topt, issues) ->
                                                   let uu___5 =
                                                     FStarC_Tactics_V2_Builtins.log_issues
                                                       issues in
                                                   Obj.magic
                                                     (FStar_Tactics_Effect.tac_bind
                                                        (FStar_Sealed.seal
                                                           (Obj.magic
                                                              (FStar_Range.mk_range
                                                                 "Pulse.Checker.Pure.fst"
                                                                 (Prims.of_int (222))
                                                                 (Prims.of_int (2))
                                                                 (Prims.of_int (222))
                                                                 (Prims.of_int (21)))))
                                                        (FStar_Sealed.seal
                                                           (Obj.magic
                                                              (FStar_Range.mk_range
                                                                 "Pulse.Checker.Pure.fst"
                                                                 (Prims.of_int (223))
                                                                 (Prims.of_int (2))
                                                                 (Prims.of_int (246))
                                                                 (Prims.of_int (20)))))
                                                        (Obj.magic uu___5)
                                                        (fun uu___6 ->
                                                           (fun uu___6 ->
                                                              match topt with
                                                              | FStar_Pervasives_Native.None
                                                                  ->
                                                                  let uu___7
                                                                    =
                                                                    let uu___8
                                                                    =
                                                                    let uu___9
                                                                    =
                                                                    Pulse_PP.pp
                                                                    Pulse_PP.printable_term
                                                                    t0 in
                                                                    FStar_Tactics_Effect.tac_bind
                                                                    (FStar_Sealed.seal
                                                                    (Obj.magic
                                                                    (FStar_Range.mk_range
                                                                    "Pulse.Checker.Pure.fst"
                                                                    (Prims.of_int (229))
                                                                    (Prims.of_int (24))
                                                                    (Prims.of_int (229))
                                                                    (Prims.of_int (31)))))
                                                                    (FStar_Sealed.seal
                                                                    (Obj.magic
                                                                    (FStar_Range.mk_range
                                                                    "Pulse.Checker.Pure.fst"
                                                                    (Prims.of_int (228))
                                                                    (Prims.of_int (14))
                                                                    (Prims.of_int (229))
                                                                    (Prims.of_int (31)))))
                                                                    (Obj.magic
                                                                    uu___9)
                                                                    (fun
                                                                    uu___10
                                                                    ->
                                                                    FStar_Tactics_Effect.lift_div_tac
                                                                    (fun
                                                                    uu___11
                                                                    ->
                                                                    FStarC_Pprint.prefix
                                                                    (Prims.of_int (4))
                                                                    Prims.int_one
                                                                    (Pulse_PP.text
                                                                    "Could not check term:")
                                                                    uu___10)) in
                                                                    FStar_Tactics_Effect.tac_bind
                                                                    (FStar_Sealed.seal
                                                                    (Obj.magic
                                                                    (FStar_Range.mk_range
                                                                    "Pulse.Checker.Pure.fst"
                                                                    (Prims.of_int (228))
                                                                    (Prims.of_int (14))
                                                                    (Prims.of_int (229))
                                                                    (Prims.of_int (31)))))
                                                                    (FStar_Sealed.seal
                                                                    (Obj.magic
                                                                    (FStar_Range.mk_range
                                                                    "Pulse.Checker.Pure.fst"
                                                                    (Prims.of_int (227))
                                                                    (Prims.of_int (15))
                                                                    (Prims.of_int (230))
                                                                    (Prims.of_int (13)))))
                                                                    (Obj.magic
                                                                    uu___8)
                                                                    (fun
                                                                    uu___9 ->
                                                                    FStar_Tactics_Effect.lift_div_tac
                                                                    (fun
                                                                    uu___10
                                                                    ->
                                                                    [uu___9])) in
                                                                  Obj.magic
                                                                    (
                                                                    FStar_Tactics_Effect.tac_bind
                                                                    (FStar_Sealed.seal
                                                                    (Obj.magic
                                                                    (FStar_Range.mk_range
                                                                    "Pulse.Checker.Pure.fst"
                                                                    (Prims.of_int (227))
                                                                    (Prims.of_int (15))
                                                                    (Prims.of_int (230))
                                                                    (Prims.of_int (13)))))
                                                                    (FStar_Sealed.seal
                                                                    (Obj.magic
                                                                    (FStar_Range.mk_range
                                                                    "Pulse.Checker.Pure.fst"
                                                                    (Prims.of_int (226))
                                                                    (Prims.of_int (4))
                                                                    (Prims.of_int (230))
                                                                    (Prims.of_int (13)))))
                                                                    (Obj.magic
                                                                    uu___7)
                                                                    (fun
                                                                    uu___8 ->
                                                                    (fun
                                                                    uu___8 ->
                                                                    Obj.magic
                                                                    (maybe_fail_doc
                                                                    issues g
                                                                    rng
                                                                    uu___8))
                                                                    uu___8))
                                                              | FStar_Pervasives_Native.Some
                                                                  (namedvs,
                                                                   t, ty)
                                                                  ->
                                                                  let uu___7
                                                                    =
                                                                    FStar_Tactics_Util.fold_left
                                                                    (fun
                                                                    uu___9 ->
                                                                    fun
                                                                    uu___8 ->
                                                                    (fun
                                                                    uu___8 ->
                                                                    fun
                                                                    uu___9 ->
                                                                    Obj.magic
                                                                    (FStar_Tactics_Effect.lift_div_tac
                                                                    (fun
                                                                    uu___10
                                                                    ->
                                                                    match 
                                                                    (uu___8,
                                                                    uu___9)
                                                                    with
                                                                    | 
                                                                    (FStar_Pervasives.Mkdtuple3
                                                                    (uvs, t1,
                                                                    ty1),
                                                                    (namedv,
                                                                    namedvt))
                                                                    ->
                                                                    let nview
                                                                    =
                                                                    FStarC_Reflection_V2_Builtins.inspect_namedv
                                                                    namedv in
                                                                    let ppname
                                                                    =
                                                                    {
                                                                    Pulse_Syntax_Base.name
                                                                    =
                                                                    (nview.FStarC_Reflection_V2_Data.ppname);
                                                                    Pulse_Syntax_Base.range
                                                                    = rng
                                                                    } in
                                                                    let x =
                                                                    Pulse_Typing_Env.fresh
                                                                    (Pulse_Typing_Env.push_env
                                                                    g uvs) in
                                                                    FStar_Pervasives.Mkdtuple3
                                                                    ((Pulse_Typing_Env.push_binding
                                                                    uvs x
                                                                    ppname
                                                                    namedvt),
                                                                    (Pulse_Syntax_Naming.subst_term
                                                                    t1
                                                                    [
                                                                    FStar_Reflection_Typing.NT
                                                                    ((nview.FStarC_Reflection_V2_Data.uniq),
                                                                    (Pulse_Syntax_Pure.tm_var
                                                                    {
                                                                    Pulse_Syntax_Base.nm_index
                                                                    = x;
                                                                    Pulse_Syntax_Base.nm_ppname
                                                                    = ppname
                                                                    }))]),
                                                                    (Pulse_Syntax_Naming.subst_term
                                                                    ty1
                                                                    [
                                                                    FStar_Reflection_Typing.NT
                                                                    ((nview.FStarC_Reflection_V2_Data.uniq),
                                                                    (Pulse_Syntax_Pure.tm_var
                                                                    {
                                                                    Pulse_Syntax_Base.nm_index
                                                                    = x;
                                                                    Pulse_Syntax_Base.nm_ppname
                                                                    = ppname
                                                                    }))])))))
                                                                    uu___9
                                                                    uu___8)
                                                                    (FStar_Pervasives.Mkdtuple3
                                                                    ((Pulse_Typing_Env.mk_env
                                                                    (Pulse_Typing_Env.fstar_env
                                                                    g)), t,
                                                                    ty))
                                                                    namedvs in
                                                                  Obj.magic
                                                                    (
                                                                    FStar_Tactics_Effect.tac_bind
                                                                    (FStar_Sealed.seal
                                                                    (Obj.magic
                                                                    (FStar_Range.mk_range
                                                                    "Pulse.Checker.Pure.fst"
                                                                    (Prims.of_int (237))
                                                                    (Prims.of_int (6))
                                                                    (Prims.of_int (245))
                                                                    (Prims.of_int (73)))))
                                                                    (FStar_Sealed.seal
                                                                    (Obj.magic
                                                                    (FStar_Range.mk_range
                                                                    "Pulse.Checker.Pure.fst"
                                                                    (Prims.of_int (232))
                                                                    (Prims.of_int (28))
                                                                    (Prims.of_int (246))
                                                                    (Prims.of_int (20)))))
                                                                    (Obj.magic
                                                                    uu___7)
                                                                    (fun
                                                                    uu___8 ->
                                                                    FStar_Tactics_Effect.lift_div_tac
                                                                    (fun
                                                                    uu___9 ->
                                                                    match uu___8
                                                                    with
                                                                    | 
                                                                    FStar_Pervasives.Mkdtuple3
                                                                    (uvs, t1,
                                                                    ty1) ->
                                                                    FStar_Pervasives.Mkdtuple3
                                                                    (uvs, t1,
                                                                    ty1)))))
                                                             uu___6))) uu___4)))
                                   uu___3))) uu___2))) uu___1)
let (check_universe :
  Pulse_Typing_Env.env ->
    Pulse_Syntax_Base.term ->
      ((Pulse_Syntax_Base.universe, unit) Prims.dtuple2, unit)
        FStar_Tactics_Effect.tac_repr)
  =
  fun g ->
    fun t ->
      let uu___ =
        Obj.magic
          (FStar_Tactics_Effect.lift_div_tac
             (fun uu___1 -> Pulse_Typing.elab_env g)) in
      FStar_Tactics_Effect.tac_bind
        (FStar_Sealed.seal
           (Obj.magic
              (FStar_Range.mk_range "Pulse.Checker.Pure.fst"
                 (Prims.of_int (250)) (Prims.of_int (12))
                 (Prims.of_int (250)) (Prims.of_int (22)))))
        (FStar_Sealed.seal
           (Obj.magic
              (FStar_Range.mk_range "Pulse.Checker.Pure.fst"
                 (Prims.of_int (250)) (Prims.of_int (25))
                 (Prims.of_int (264)) (Prims.of_int (23)))))
        (Obj.magic uu___)
        (fun uu___1 ->
           (fun f ->
              let uu___1 = catch_all (fun uu___2 -> rtb_universe_of g f t) in
              Obj.magic
                (FStar_Tactics_Effect.tac_bind
                   (FStar_Sealed.seal
                      (Obj.magic
                         (FStar_Range.mk_range "Pulse.Checker.Pure.fst"
                            (Prims.of_int (251)) (Prims.of_int (25))
                            (Prims.of_int (251)) (Prims.of_int (67)))))
                   (FStar_Sealed.seal
                      (Obj.magic
                         (FStar_Range.mk_range "Pulse.Checker.Pure.fst"
                            (Prims.of_int (250)) (Prims.of_int (25))
                            (Prims.of_int (264)) (Prims.of_int (23)))))
                   (Obj.magic uu___1)
                   (fun uu___2 ->
                      (fun uu___2 ->
                         match uu___2 with
                         | (ru_opt, issues) ->
                             let uu___3 =
                               FStarC_Tactics_V2_Builtins.log_issues issues in
                             Obj.magic
                               (FStar_Tactics_Effect.tac_bind
                                  (FStar_Sealed.seal
                                     (Obj.magic
                                        (FStar_Range.mk_range
                                           "Pulse.Checker.Pure.fst"
                                           (Prims.of_int (252))
                                           (Prims.of_int (4))
                                           (Prims.of_int (252))
                                           (Prims.of_int (23)))))
                                  (FStar_Sealed.seal
                                     (Obj.magic
                                        (FStar_Range.mk_range
                                           "Pulse.Checker.Pure.fst"
                                           (Prims.of_int (253))
                                           (Prims.of_int (4))
                                           (Prims.of_int (264))
                                           (Prims.of_int (23)))))
                                  (Obj.magic uu___3)
                                  (fun uu___4 ->
                                     (fun uu___4 ->
                                        match ru_opt with
                                        | FStar_Pervasives_Native.None ->
                                            Obj.magic
                                              (Obj.repr
                                                 (let uu___5 =
                                                    ill_typed_term t
                                                      (FStar_Pervasives_Native.Some
                                                         (Pulse_Syntax_Pure.tm_type
                                                            Pulse_Syntax_Pure.u_unknown))
                                                      FStar_Pervasives_Native.None in
                                                  FStar_Tactics_Effect.tac_bind
                                                    (FStar_Sealed.seal
                                                       (Obj.magic
                                                          (FStar_Range.mk_range
                                                             "Pulse.Checker.Pure.fst"
                                                             (Prims.of_int (257))
                                                             (Prims.of_int (31))
                                                             (Prims.of_int (257))
                                                             (Prims.of_int (81)))))
                                                    (FStar_Sealed.seal
                                                       (Obj.magic
                                                          (FStar_Range.mk_range
                                                             "Pulse.Checker.Pure.fst"
                                                             (Prims.of_int (255))
                                                             (Prims.of_int (6))
                                                             (Prims.of_int (257))
                                                             (Prims.of_int (81)))))
                                                    (Obj.magic uu___5)
                                                    (fun uu___6 ->
                                                       (fun uu___6 ->
                                                          Obj.magic
                                                            (maybe_fail_doc
                                                               issues g
                                                               (Pulse_RuntimeUtils.range_of_term
                                                                  t) uu___6))
                                                         uu___6)))
                                        | FStar_Pervasives_Native.Some ru ->
                                            Obj.magic
                                              (Obj.repr
                                                 (FStar_Tactics_Effect.lift_div_tac
                                                    (fun uu___5 ->
                                                       Prims.Mkdtuple2
                                                         (ru, ()))))) uu___4)))
                        uu___2))) uu___1)
let (tc_meta_callback :
  Pulse_Typing_Env.env ->
    FStarC_Reflection_Types.env ->
      FStarC_Reflection_Types.term ->
        (((FStarC_Reflection_Types.term,
           FStarC_TypeChecker_Core.tot_or_ghost,
           FStarC_Reflection_Types.term,
           (unit, unit, unit) FStar_Reflection_Typing.typing)
           FStar_Pervasives.dtuple4 FStar_Pervasives_Native.option *
           FStar_Issue.issue Prims.list),
          unit) FStar_Tactics_Effect.tac_repr)
  =
  fun g ->
    fun f ->
      fun e ->
        let uu___ =
          let uu___1 = catch_all (fun uu___2 -> rtb_tc_term g f e) in
          FStar_Tactics_Effect.tac_bind
            (FStar_Sealed.seal
               (Obj.magic
                  (FStar_Range.mk_range "Pulse.Checker.Pure.fst"
                     (Prims.of_int (269)) (Prims.of_int (12))
                     (Prims.of_int (269)) (Prims.of_int (50)))))
            (FStar_Sealed.seal
               (Obj.magic
                  (FStar_Range.mk_range "Pulse.Checker.Pure.fst"
                     (Prims.of_int (269)) (Prims.of_int (6))
                     (Prims.of_int (274)) (Prims.of_int (14)))))
            (Obj.magic uu___1)
            (fun uu___2 ->
               FStar_Tactics_Effect.lift_div_tac
                 (fun uu___3 ->
                    match uu___2 with
                    | (FStar_Pervasives_Native.None, issues) ->
                        (FStar_Pervasives_Native.None, issues)
                    | (FStar_Pervasives_Native.Some (e1, (eff, t)), issues)
                        ->
                        ((FStar_Pervasives_Native.Some
                            (FStar_Pervasives.Mkdtuple4
                               (e1, eff, t,
                                 (FStar_Reflection_Typing.T_Token
                                    (f, e1, (eff, t), ()))))), issues))) in
        FStar_Tactics_Effect.tac_bind
          (FStar_Sealed.seal
             (Obj.magic
                (FStar_Range.mk_range "Pulse.Checker.Pure.fst"
                   (Prims.of_int (269)) (Prims.of_int (6))
                   (Prims.of_int (274)) (Prims.of_int (14)))))
          (FStar_Sealed.seal
             (Obj.magic
                (FStar_Range.mk_range "Pulse.Checker.Pure.fst"
                   (Prims.of_int (268)) (Prims.of_int (8))
                   (Prims.of_int (268)) (Prims.of_int (11)))))
          (Obj.magic uu___)
          (fun res -> FStar_Tactics_Effect.lift_div_tac (fun uu___1 -> res))
let (compute_term_type :
  Pulse_Typing_Env.env ->
    Pulse_Syntax_Base.term ->
      ((Pulse_Syntax_Base.term, FStarC_TypeChecker_Core.tot_or_ghost,
         Pulse_Syntax_Base.term, unit) FStar_Pervasives.dtuple4,
        unit) FStar_Tactics_Effect.tac_repr)
  =
  fun g ->
    fun t ->
      let uu___ =
        Obj.magic
          (FStar_Tactics_Effect.lift_div_tac
             (fun uu___1 -> Pulse_Typing.elab_env g)) in
      FStar_Tactics_Effect.tac_bind
        (FStar_Sealed.seal
           (Obj.magic
              (FStar_Range.mk_range "Pulse.Checker.Pure.fst"
                 (Prims.of_int (283)) (Prims.of_int (13))
                 (Prims.of_int (283)) (Prims.of_int (23)))))
        (FStar_Sealed.seal
           (Obj.magic
              (FStar_Range.mk_range "Pulse.Checker.Pure.fst"
                 (Prims.of_int (284)) (Prims.of_int (4)) (Prims.of_int (294))
                 (Prims.of_int (63))))) (Obj.magic uu___)
        (fun uu___1 ->
           (fun fg ->
              let uu___1 =
                debug g
                  (fun uu___2 ->
                     let uu___3 = FStarC_Tactics_V2_Builtins.term_to_string t in
                     FStar_Tactics_Effect.tac_bind
                       (FStar_Sealed.seal
                          (Obj.magic
                             (FStar_Range.mk_range "Pulse.Checker.Pure.fst"
                                (Prims.of_int (287)) (Prims.of_int (22))
                                (Prims.of_int (287)) (Prims.of_int (42)))))
                       (FStar_Sealed.seal
                          (Obj.magic
                             (FStar_Range.mk_range "Pulse.Checker.Pure.fst"
                                (Prims.of_int (285)) (Prims.of_int (12))
                                (Prims.of_int (287)) (Prims.of_int (42)))))
                       (Obj.magic uu___3)
                       (fun uu___4 ->
                          (fun uu___4 ->
                             let uu___5 =
                               let uu___6 =
                                 Pulse_Syntax_Printer.term_to_string t in
                               FStar_Tactics_Effect.tac_bind
                                 (FStar_Sealed.seal
                                    (Obj.magic
                                       (FStar_Range.mk_range
                                          "Pulse.Checker.Pure.fst"
                                          (Prims.of_int (286))
                                          (Prims.of_int (22))
                                          (Prims.of_int (286))
                                          (Prims.of_int (42)))))
                                 (FStar_Sealed.seal
                                    (Obj.magic
                                       (FStar_Range.mk_range
                                          "FStar.Printf.fst"
                                          (Prims.of_int (122))
                                          (Prims.of_int (8))
                                          (Prims.of_int (124))
                                          (Prims.of_int (44)))))
                                 (Obj.magic uu___6)
                                 (fun uu___7 ->
                                    FStar_Tactics_Effect.lift_div_tac
                                      (fun uu___8 ->
                                         fun x ->
                                           Prims.strcat
                                             (Prims.strcat
                                                "check_tot : called on "
                                                (Prims.strcat uu___7
                                                   " elaborated to "))
                                             (Prims.strcat x ""))) in
                             Obj.magic
                               (FStar_Tactics_Effect.tac_bind
                                  (FStar_Sealed.seal
                                     (Obj.magic
                                        (FStar_Range.mk_range
                                           "Pulse.Checker.Pure.fst"
                                           (Prims.of_int (285))
                                           (Prims.of_int (12))
                                           (Prims.of_int (287))
                                           (Prims.of_int (42)))))
                                  (FStar_Sealed.seal
                                     (Obj.magic
                                        (FStar_Range.mk_range
                                           "Pulse.Checker.Pure.fst"
                                           (Prims.of_int (285))
                                           (Prims.of_int (12))
                                           (Prims.of_int (287))
                                           (Prims.of_int (42)))))
                                  (Obj.magic uu___5)
                                  (fun uu___6 ->
                                     FStar_Tactics_Effect.lift_div_tac
                                       (fun uu___7 -> uu___6 uu___4))))
                            uu___4)) in
              Obj.magic
                (FStar_Tactics_Effect.tac_bind
                   (FStar_Sealed.seal
                      (Obj.magic
                         (FStar_Range.mk_range "Pulse.Checker.Pure.fst"
                            (Prims.of_int (284)) (Prims.of_int (4))
                            (Prims.of_int (287)) (Prims.of_int (43)))))
                   (FStar_Sealed.seal
                      (Obj.magic
                         (FStar_Range.mk_range "Pulse.Checker.Pure.fst"
                            (Prims.of_int (287)) (Prims.of_int (44))
                            (Prims.of_int (294)) (Prims.of_int (63)))))
                   (Obj.magic uu___1)
                   (fun uu___2 ->
                      (fun uu___2 ->
                         let uu___3 = tc_meta_callback g fg t in
                         Obj.magic
                           (FStar_Tactics_Effect.tac_bind
                              (FStar_Sealed.seal
                                 (Obj.magic
                                    (FStar_Range.mk_range
                                       "Pulse.Checker.Pure.fst"
                                       (Prims.of_int (288))
                                       (Prims.of_int (22))
                                       (Prims.of_int (288))
                                       (Prims.of_int (45)))))
                              (FStar_Sealed.seal
                                 (Obj.magic
                                    (FStar_Range.mk_range
                                       "Pulse.Checker.Pure.fst"
                                       (Prims.of_int (287))
                                       (Prims.of_int (44))
                                       (Prims.of_int (294))
                                       (Prims.of_int (63)))))
                              (Obj.magic uu___3)
                              (fun uu___4 ->
                                 (fun uu___4 ->
                                    match uu___4 with
                                    | (res, issues) ->
                                        let uu___5 =
                                          FStarC_Tactics_V2_Builtins.log_issues
                                            issues in
                                        Obj.magic
                                          (FStar_Tactics_Effect.tac_bind
                                             (FStar_Sealed.seal
                                                (Obj.magic
                                                   (FStar_Range.mk_range
                                                      "Pulse.Checker.Pure.fst"
                                                      (Prims.of_int (289))
                                                      (Prims.of_int (4))
                                                      (Prims.of_int (289))
                                                      (Prims.of_int (23)))))
                                             (FStar_Sealed.seal
                                                (Obj.magic
                                                   (FStar_Range.mk_range
                                                      "Pulse.Checker.Pure.fst"
                                                      (Prims.of_int (290))
                                                      (Prims.of_int (4))
                                                      (Prims.of_int (294))
                                                      (Prims.of_int (63)))))
                                             (Obj.magic uu___5)
                                             (fun uu___6 ->
                                                (fun uu___6 ->
                                                   match res with
                                                   | FStar_Pervasives_Native.None
                                                       ->
                                                       Obj.magic
                                                         (Obj.repr
                                                            (let uu___7 =
                                                               ill_typed_term
                                                                 t
                                                                 FStar_Pervasives_Native.None
                                                                 FStar_Pervasives_Native.None in
                                                             FStar_Tactics_Effect.tac_bind
                                                               (FStar_Sealed.seal
                                                                  (Obj.magic
                                                                    (FStar_Range.mk_range
                                                                    "Pulse.Checker.Pure.fst"
                                                                    (Prims.of_int (293))
                                                                    (Prims.of_int (35))
                                                                    (Prims.of_int (293))
                                                                    (Prims.of_int (63)))))
                                                               (FStar_Sealed.seal
                                                                  (Obj.magic
                                                                    (FStar_Range.mk_range
                                                                    "Pulse.Checker.Pure.fst"
                                                                    (Prims.of_int (292))
                                                                    (Prims.of_int (6))
                                                                    (Prims.of_int (293))
                                                                    (Prims.of_int (63)))))
                                                               (Obj.magic
                                                                  uu___7)
                                                               (fun uu___8 ->
                                                                  (fun uu___8
                                                                    ->
                                                                    Obj.magic
                                                                    (maybe_fail_doc
                                                                    issues g
                                                                    (Pulse_RuntimeUtils.range_of_term
                                                                    t) uu___8))
                                                                    uu___8)))
                                                   | FStar_Pervasives_Native.Some
                                                       (FStar_Pervasives.Mkdtuple4
                                                       (rt, eff, ty', tok))
                                                       ->
                                                       Obj.magic
                                                         (Obj.repr
                                                            (FStar_Tactics_Effect.lift_div_tac
                                                               (fun uu___7 ->
                                                                  FStar_Pervasives.Mkdtuple4
                                                                    (rt, eff,
                                                                    ty', ())))))
                                                  uu___6))) uu___4))) uu___2)))
             uu___1)
let (compute_term_type_and_u :
  Pulse_Typing_Env.env ->
    Pulse_Syntax_Base.term ->
      ((Pulse_Syntax_Base.term, FStarC_TypeChecker_Core.tot_or_ghost,
         Pulse_Syntax_Base.term,
         (Pulse_Syntax_Base.universe, unit) Prims.dtuple2, unit)
         FStar_Pervasives.dtuple5,
        unit) FStar_Tactics_Effect.tac_repr)
  =
  fun g ->
    fun t ->
      let uu___ =
        Obj.magic
          (FStar_Tactics_Effect.lift_div_tac
             (fun uu___1 -> Pulse_Typing.elab_env g)) in
      FStar_Tactics_Effect.tac_bind
        (FStar_Sealed.seal
           (Obj.magic
              (FStar_Range.mk_range "Pulse.Checker.Pure.fst"
                 (Prims.of_int (303)) (Prims.of_int (13))
                 (Prims.of_int (303)) (Prims.of_int (23)))))
        (FStar_Sealed.seal
           (Obj.magic
              (FStar_Range.mk_range "Pulse.Checker.Pure.fst"
                 (Prims.of_int (303)) (Prims.of_int (26))
                 (Prims.of_int (313)) (Prims.of_int (45)))))
        (Obj.magic uu___)
        (fun uu___1 ->
           (fun fg ->
              let uu___1 = tc_meta_callback g fg t in
              Obj.magic
                (FStar_Tactics_Effect.tac_bind
                   (FStar_Sealed.seal
                      (Obj.magic
                         (FStar_Range.mk_range "Pulse.Checker.Pure.fst"
                            (Prims.of_int (304)) (Prims.of_int (22))
                            (Prims.of_int (304)) (Prims.of_int (45)))))
                   (FStar_Sealed.seal
                      (Obj.magic
                         (FStar_Range.mk_range "Pulse.Checker.Pure.fst"
                            (Prims.of_int (303)) (Prims.of_int (26))
                            (Prims.of_int (313)) (Prims.of_int (45)))))
                   (Obj.magic uu___1)
                   (fun uu___2 ->
                      (fun uu___2 ->
                         match uu___2 with
                         | (res, issues) ->
                             let uu___3 =
                               FStarC_Tactics_V2_Builtins.log_issues issues in
                             Obj.magic
                               (FStar_Tactics_Effect.tac_bind
                                  (FStar_Sealed.seal
                                     (Obj.magic
                                        (FStar_Range.mk_range
                                           "Pulse.Checker.Pure.fst"
                                           (Prims.of_int (305))
                                           (Prims.of_int (4))
                                           (Prims.of_int (305))
                                           (Prims.of_int (23)))))
                                  (FStar_Sealed.seal
                                     (Obj.magic
                                        (FStar_Range.mk_range
                                           "Pulse.Checker.Pure.fst"
                                           (Prims.of_int (306))
                                           (Prims.of_int (4))
                                           (Prims.of_int (313))
                                           (Prims.of_int (45)))))
                                  (Obj.magic uu___3)
                                  (fun uu___4 ->
                                     (fun uu___4 ->
                                        match res with
                                        | FStar_Pervasives_Native.None ->
                                            let uu___5 =
                                              ill_typed_term t
                                                FStar_Pervasives_Native.None
                                                FStar_Pervasives_Native.None in
                                            Obj.magic
                                              (FStar_Tactics_Effect.tac_bind
                                                 (FStar_Sealed.seal
                                                    (Obj.magic
                                                       (FStar_Range.mk_range
                                                          "Pulse.Checker.Pure.fst"
                                                          (Prims.of_int (310))
                                                          (Prims.of_int (31))
                                                          (Prims.of_int (310))
                                                          (Prims.of_int (59)))))
                                                 (FStar_Sealed.seal
                                                    (Obj.magic
                                                       (FStar_Range.mk_range
                                                          "Pulse.Checker.Pure.fst"
                                                          (Prims.of_int (308))
                                                          (Prims.of_int (6))
                                                          (Prims.of_int (310))
                                                          (Prims.of_int (59)))))
                                                 (Obj.magic uu___5)
                                                 (fun uu___6 ->
                                                    (fun uu___6 ->
                                                       Obj.magic
                                                         (maybe_fail_doc
                                                            issues g
                                                            (Pulse_RuntimeUtils.range_of_term
                                                               t) uu___6))
                                                      uu___6))
                                        | FStar_Pervasives_Native.Some
                                            (FStar_Pervasives.Mkdtuple4
                                            (rt, eff, ty', tok)) ->
                                            let uu___5 = check_universe g ty' in
                                            Obj.magic
                                              (FStar_Tactics_Effect.tac_bind
                                                 (FStar_Sealed.seal
                                                    (Obj.magic
                                                       (FStar_Range.mk_range
                                                          "Pulse.Checker.Pure.fst"
                                                          (Prims.of_int (312))
                                                          (Prims.of_int (25))
                                                          (Prims.of_int (312))
                                                          (Prims.of_int (45)))))
                                                 (FStar_Sealed.seal
                                                    (Obj.magic
                                                       (FStar_Range.mk_range
                                                          "Pulse.Checker.Pure.fst"
                                                          (Prims.of_int (311))
                                                          (Prims.of_int (37))
                                                          (Prims.of_int (313))
                                                          (Prims.of_int (45)))))
                                                 (Obj.magic uu___5)
                                                 (fun uu___6 ->
                                                    FStar_Tactics_Effect.lift_div_tac
                                                      (fun uu___7 ->
                                                         match uu___6 with
                                                         | Prims.Mkdtuple2
                                                             (u, uty) ->
                                                             FStar_Pervasives.Mkdtuple5
                                                               (rt, eff, ty',
                                                                 (Prims.Mkdtuple2
                                                                    (u, ())),
                                                                 ())))))
                                       uu___4))) uu___2))) uu___1)
let (check_term :
  Pulse_Typing_Env.env ->
    Pulse_Syntax_Base.term ->
      FStarC_TypeChecker_Core.tot_or_ghost ->
        Pulse_Syntax_Base.term ->
          ((Pulse_Syntax_Base.term, unit) Prims.dtuple2, unit)
            FStar_Tactics_Effect.tac_repr)
  =
  fun g ->
    fun e ->
      fun eff ->
        fun t ->
          let uu___ =
            instantiate_term_implicits g e (FStar_Pervasives_Native.Some t) in
          FStar_Tactics_Effect.tac_bind
            (FStar_Sealed.seal
               (Obj.magic
                  (FStar_Range.mk_range "Pulse.Checker.Pure.fst"
                     (Prims.of_int (318)) (Prims.of_int (13))
                     (Prims.of_int (318)) (Prims.of_int (52)))))
            (FStar_Sealed.seal
               (Obj.magic
                  (FStar_Range.mk_range "Pulse.Checker.Pure.fst"
                     (Prims.of_int (316)) (Prims.of_int (39))
                     (Prims.of_int (333)) (Prims.of_int (78)))))
            (Obj.magic uu___)
            (fun uu___1 ->
               (fun uu___1 ->
                  match uu___1 with
                  | (e1, uu___2) ->
                      let uu___3 =
                        Obj.magic
                          (FStar_Tactics_Effect.lift_div_tac
                             (fun uu___4 -> Pulse_Typing.elab_env g)) in
                      Obj.magic
                        (FStar_Tactics_Effect.tac_bind
                           (FStar_Sealed.seal
                              (Obj.magic
                                 (FStar_Range.mk_range
                                    "Pulse.Checker.Pure.fst"
                                    (Prims.of_int (320)) (Prims.of_int (11))
                                    (Prims.of_int (320)) (Prims.of_int (21)))))
                           (FStar_Sealed.seal
                              (Obj.magic
                                 (FStar_Range.mk_range
                                    "Pulse.Checker.Pure.fst"
                                    (Prims.of_int (320)) (Prims.of_int (24))
                                    (Prims.of_int (333)) (Prims.of_int (78)))))
                           (Obj.magic uu___3)
                           (fun uu___4 ->
                              (fun fg ->
                                 let uu___4 =
                                   catch_all
                                     (fun uu___5 ->
                                        rtb_core_check_term
                                          (Pulse_Typing_Env.push_context g
                                             "check_term_with_expected_type_and_effect"
                                             (FStarC_Reflection_V2_Builtins.range_of_term
                                                t)) fg e1 eff t) in
                                 Obj.magic
                                   (FStar_Tactics_Effect.tac_bind
                                      (FStar_Sealed.seal
                                         (Obj.magic
                                            (FStar_Range.mk_range
                                               "Pulse.Checker.Pure.fst"
                                               (Prims.of_int (323))
                                               (Prims.of_int (4))
                                               (Prims.of_int (326))
                                               (Prims.of_int (20)))))
                                      (FStar_Sealed.seal
                                         (Obj.magic
                                            (FStar_Range.mk_range
                                               "Pulse.Checker.Pure.fst"
                                               (Prims.of_int (320))
                                               (Prims.of_int (24))
                                               (Prims.of_int (333))
                                               (Prims.of_int (78)))))
                                      (Obj.magic uu___4)
                                      (fun uu___5 ->
                                         (fun uu___5 ->
                                            match uu___5 with
                                            | (topt, issues) ->
                                                let uu___6 =
                                                  FStarC_Tactics_V2_Builtins.log_issues
                                                    issues in
                                                Obj.magic
                                                  (FStar_Tactics_Effect.tac_bind
                                                     (FStar_Sealed.seal
                                                        (Obj.magic
                                                           (FStar_Range.mk_range
                                                              "Pulse.Checker.Pure.fst"
                                                              (Prims.of_int (327))
                                                              (Prims.of_int (2))
                                                              (Prims.of_int (327))
                                                              (Prims.of_int (21)))))
                                                     (FStar_Sealed.seal
                                                        (Obj.magic
                                                           (FStar_Range.mk_range
                                                              "Pulse.Checker.Pure.fst"
                                                              (Prims.of_int (328))
                                                              (Prims.of_int (2))
                                                              (Prims.of_int (333))
                                                              (Prims.of_int (78)))))
                                                     (Obj.magic uu___6)
                                                     (fun uu___7 ->
                                                        (fun uu___7 ->
                                                           match topt with
                                                           | FStar_Pervasives_Native.None
                                                               ->
                                                               Obj.magic
                                                                 (Obj.repr
                                                                    (
                                                                    let uu___8
                                                                    =
                                                                    ill_typed_term
                                                                    e1
                                                                    (FStar_Pervasives_Native.Some
                                                                    t)
                                                                    FStar_Pervasives_Native.None in
                                                                    FStar_Tactics_Effect.tac_bind
                                                                    (FStar_Sealed.seal
                                                                    (Obj.magic
                                                                    (FStar_Range.mk_range
                                                                    "Pulse.Checker.Pure.fst"
                                                                    (Prims.of_int (332))
                                                                    (Prims.of_int (29))
                                                                    (Prims.of_int (332))
                                                                    (Prims.of_int (61)))))
                                                                    (FStar_Sealed.seal
                                                                    (Obj.magic
                                                                    (FStar_Range.mk_range
                                                                    "Pulse.Checker.Pure.fst"
                                                                    (Prims.of_int (330))
                                                                    (Prims.of_int (4))
                                                                    (Prims.of_int (332))
                                                                    (Prims.of_int (61)))))
                                                                    (Obj.magic
                                                                    uu___8)
                                                                    (fun
                                                                    uu___9 ->
                                                                    (fun
                                                                    uu___9 ->
                                                                    Obj.magic
                                                                    (maybe_fail_doc
                                                                    issues g
                                                                    (Pulse_RuntimeUtils.range_of_term
                                                                    e1)
                                                                    uu___9))
                                                                    uu___9)))
                                                           | FStar_Pervasives_Native.Some
                                                               tok ->
                                                               Obj.magic
                                                                 (Obj.repr
                                                                    (
                                                                    FStar_Tactics_Effect.lift_div_tac
                                                                    (fun
                                                                    uu___8 ->
                                                                    Prims.Mkdtuple2
                                                                    (e1, ())))))
                                                          uu___7))) uu___5)))
                                uu___4))) uu___1)
let (check_term_at_type :
  Pulse_Typing_Env.env ->
    Pulse_Syntax_Base.term ->
      Pulse_Syntax_Base.term ->
        ((Pulse_Syntax_Base.term, FStarC_TypeChecker_Core.tot_or_ghost, 
           unit) FStar_Pervasives.dtuple3,
          unit) FStar_Tactics_Effect.tac_repr)
  =
  fun g ->
    fun e ->
      fun t ->
        let uu___ =
          instantiate_term_implicits g e (FStar_Pervasives_Native.Some t) in
        FStar_Tactics_Effect.tac_bind
          (FStar_Sealed.seal
             (Obj.magic
                (FStar_Range.mk_range "Pulse.Checker.Pure.fst"
                   (Prims.of_int (338)) (Prims.of_int (13))
                   (Prims.of_int (338)) (Prims.of_int (52)))))
          (FStar_Sealed.seal
             (Obj.magic
                (FStar_Range.mk_range "Pulse.Checker.Pure.fst"
                   (Prims.of_int (336)) (Prims.of_int (60))
                   (Prims.of_int (353)) (Prims.of_int (65)))))
          (Obj.magic uu___)
          (fun uu___1 ->
             (fun uu___1 ->
                match uu___1 with
                | (e1, uu___2) ->
                    let uu___3 =
                      Obj.magic
                        (FStar_Tactics_Effect.lift_div_tac
                           (fun uu___4 -> Pulse_Typing.elab_env g)) in
                    Obj.magic
                      (FStar_Tactics_Effect.tac_bind
                         (FStar_Sealed.seal
                            (Obj.magic
                               (FStar_Range.mk_range "Pulse.Checker.Pure.fst"
                                  (Prims.of_int (339)) (Prims.of_int (11))
                                  (Prims.of_int (339)) (Prims.of_int (21)))))
                         (FStar_Sealed.seal
                            (Obj.magic
                               (FStar_Range.mk_range "Pulse.Checker.Pure.fst"
                                  (Prims.of_int (339)) (Prims.of_int (24))
                                  (Prims.of_int (353)) (Prims.of_int (65)))))
                         (Obj.magic uu___3)
                         (fun uu___4 ->
                            (fun fg ->
                               let uu___4 =
                                 catch_all
                                   (fun uu___5 ->
                                      rtb_core_check_term_at_type
                                        (Pulse_Typing_Env.push_context g
                                           "check_term_with_expected_type"
                                           (FStarC_Reflection_V2_Builtins.range_of_term
                                              t)) fg e1 t) in
                               Obj.magic
                                 (FStar_Tactics_Effect.tac_bind
                                    (FStar_Sealed.seal
                                       (Obj.magic
                                          (FStar_Range.mk_range
                                             "Pulse.Checker.Pure.fst"
                                             (Prims.of_int (342))
                                             (Prims.of_int (4))
                                             (Prims.of_int (345))
                                             (Prims.of_int (13)))))
                                    (FStar_Sealed.seal
                                       (Obj.magic
                                          (FStar_Range.mk_range
                                             "Pulse.Checker.Pure.fst"
                                             (Prims.of_int (339))
                                             (Prims.of_int (24))
                                             (Prims.of_int (353))
                                             (Prims.of_int (65)))))
                                    (Obj.magic uu___4)
                                    (fun uu___5 ->
                                       (fun uu___5 ->
                                          match uu___5 with
                                          | (effopt, issues) ->
                                              let uu___6 =
                                                FStarC_Tactics_V2_Builtins.log_issues
                                                  issues in
                                              Obj.magic
                                                (FStar_Tactics_Effect.tac_bind
                                                   (FStar_Sealed.seal
                                                      (Obj.magic
                                                         (FStar_Range.mk_range
                                                            "Pulse.Checker.Pure.fst"
                                                            (Prims.of_int (346))
                                                            (Prims.of_int (2))
                                                            (Prims.of_int (346))
                                                            (Prims.of_int (21)))))
                                                   (FStar_Sealed.seal
                                                      (Obj.magic
                                                         (FStar_Range.mk_range
                                                            "Pulse.Checker.Pure.fst"
                                                            (Prims.of_int (347))
                                                            (Prims.of_int (2))
                                                            (Prims.of_int (353))
                                                            (Prims.of_int (65)))))
                                                   (Obj.magic uu___6)
                                                   (fun uu___7 ->
                                                      (fun uu___7 ->
                                                         match effopt with
                                                         | FStar_Pervasives_Native.None
                                                             ->
                                                             Obj.magic
                                                               (Obj.repr
                                                                  (let uu___8
                                                                    =
                                                                    ill_typed_term
                                                                    e1
                                                                    (FStar_Pervasives_Native.Some
                                                                    t)
                                                                    FStar_Pervasives_Native.None in
                                                                   FStar_Tactics_Effect.tac_bind
                                                                    (FStar_Sealed.seal
                                                                    (Obj.magic
                                                                    (FStar_Range.mk_range
                                                                    "Pulse.Checker.Pure.fst"
                                                                    (Prims.of_int (351))
                                                                    (Prims.of_int (29))
                                                                    (Prims.of_int (351))
                                                                    (Prims.of_int (61)))))
                                                                    (FStar_Sealed.seal
                                                                    (Obj.magic
                                                                    (FStar_Range.mk_range
                                                                    "Pulse.Checker.Pure.fst"
                                                                    (Prims.of_int (349))
                                                                    (Prims.of_int (4))
                                                                    (Prims.of_int (351))
                                                                    (Prims.of_int (61)))))
                                                                    (Obj.magic
                                                                    uu___8)
                                                                    (fun
                                                                    uu___9 ->
                                                                    (fun
                                                                    uu___9 ->
                                                                    Obj.magic
                                                                    (maybe_fail_doc
                                                                    issues g
                                                                    (Pulse_RuntimeUtils.range_of_term
                                                                    e1)
                                                                    uu___9))
                                                                    uu___9)))
                                                         | FStar_Pervasives_Native.Some
                                                             eff ->
                                                             Obj.magic
                                                               (Obj.repr
                                                                  (FStar_Tactics_Effect.lift_div_tac
                                                                    (fun
                                                                    uu___8 ->
                                                                    FStar_Pervasives.Mkdtuple3
                                                                    (e1, eff,
                                                                    ())))))
                                                        uu___7))) uu___5)))
                              uu___4))) uu___1)
let (tc_with_core :
  Pulse_Typing_Env.env ->
    FStarC_Reflection_Types.env ->
      FStarC_Reflection_Types.term ->
        (((FStarC_TypeChecker_Core.tot_or_ghost,
           FStarC_Reflection_Types.term,
           (unit, unit, unit) FStar_Reflection_Typing.typing)
           FStar_Pervasives.dtuple3 FStar_Pervasives_Native.option *
           FStar_Issue.issue Prims.list),
          unit) FStar_Tactics_Effect.tac_repr)
  =
  fun g ->
    fun f ->
      fun e ->
        let uu___ =
          catch_all
            (fun uu___1 ->
               rtb_core_compute_term_type
                 (Pulse_Typing_Env.push_context g "tc_with_core"
                    (FStarC_Reflection_V2_Builtins.range_of_term e)) f e) in
        FStar_Tactics_Effect.tac_bind
          (FStar_Sealed.seal
             (Obj.magic
                (FStar_Range.mk_range "Pulse.Checker.Pure.fst"
                   (Prims.of_int (357)) (Prims.of_int (23))
                   (Prims.of_int (357)) (Prims.of_int (124)))))
          (FStar_Sealed.seal
             (Obj.magic
                (FStar_Range.mk_range "Pulse.Checker.Pure.fst"
                   (Prims.of_int (357)) (Prims.of_int (3))
                   (Prims.of_int (361)) (Prims.of_int (76)))))
          (Obj.magic uu___)
          (fun uu___1 ->
             FStar_Tactics_Effect.lift_div_tac
               (fun uu___2 ->
                  match uu___1 with
                  | (ropt, issues) ->
                      (match ropt with
                       | FStar_Pervasives_Native.None ->
                           (FStar_Pervasives_Native.None, issues)
                       | FStar_Pervasives_Native.Some (eff, t) ->
                           ((FStar_Pervasives_Native.Some
                               (FStar_Pervasives.Mkdtuple3
                                  (eff, t,
                                    (FStar_Reflection_Typing.T_Token
                                       (f, e, (eff, t), ()))))), issues))))
let (core_compute_term_type :
  Pulse_Typing_Env.env ->
    Pulse_Syntax_Base.term ->
      ((FStarC_TypeChecker_Core.tot_or_ghost, Pulse_Syntax_Base.term, 
         unit) FStar_Pervasives.dtuple3,
        unit) FStar_Tactics_Effect.tac_repr)
  =
  fun g ->
    fun t ->
      let uu___ =
        Obj.magic
          (FStar_Tactics_Effect.lift_div_tac
             (fun uu___1 -> Pulse_Typing.elab_env g)) in
      FStar_Tactics_Effect.tac_bind
        (FStar_Sealed.seal
           (Obj.magic
              (FStar_Range.mk_range "Pulse.Checker.Pure.fst"
                 (Prims.of_int (367)) (Prims.of_int (13))
                 (Prims.of_int (367)) (Prims.of_int (23)))))
        (FStar_Sealed.seal
           (Obj.magic
              (FStar_Range.mk_range "Pulse.Checker.Pure.fst"
                 (Prims.of_int (367)) (Prims.of_int (26))
                 (Prims.of_int (375)) (Prims.of_int (55)))))
        (Obj.magic uu___)
        (fun uu___1 ->
           (fun fg ->
              let uu___1 =
                tc_with_core
                  (Pulse_Typing_Env.push_context g "core_check_term"
                     (FStarC_Reflection_V2_Builtins.range_of_term t)) fg t in
              Obj.magic
                (FStar_Tactics_Effect.tac_bind
                   (FStar_Sealed.seal
                      (Obj.magic
                         (FStar_Range.mk_range "Pulse.Checker.Pure.fst"
                            (Prims.of_int (368)) (Prims.of_int (22))
                            (Prims.of_int (368)) (Prims.of_int (92)))))
                   (FStar_Sealed.seal
                      (Obj.magic
                         (FStar_Range.mk_range "Pulse.Checker.Pure.fst"
                            (Prims.of_int (367)) (Prims.of_int (26))
                            (Prims.of_int (375)) (Prims.of_int (55)))))
                   (Obj.magic uu___1)
                   (fun uu___2 ->
                      (fun uu___2 ->
                         match uu___2 with
                         | (res, issues) ->
                             let uu___3 =
                               FStarC_Tactics_V2_Builtins.log_issues issues in
                             Obj.magic
                               (FStar_Tactics_Effect.tac_bind
                                  (FStar_Sealed.seal
                                     (Obj.magic
                                        (FStar_Range.mk_range
                                           "Pulse.Checker.Pure.fst"
                                           (Prims.of_int (369))
                                           (Prims.of_int (4))
                                           (Prims.of_int (369))
                                           (Prims.of_int (23)))))
                                  (FStar_Sealed.seal
                                     (Obj.magic
                                        (FStar_Range.mk_range
                                           "Pulse.Checker.Pure.fst"
                                           (Prims.of_int (370))
                                           (Prims.of_int (4))
                                           (Prims.of_int (375))
                                           (Prims.of_int (55)))))
                                  (Obj.magic uu___3)
                                  (fun uu___4 ->
                                     (fun uu___4 ->
                                        match res with
                                        | FStar_Pervasives_Native.None ->
                                            Obj.magic
                                              (Obj.repr
                                                 (let uu___5 =
                                                    ill_typed_term t
                                                      FStar_Pervasives_Native.None
                                                      FStar_Pervasives_Native.None in
                                                  FStar_Tactics_Effect.tac_bind
                                                    (FStar_Sealed.seal
                                                       (Obj.magic
                                                          (FStar_Range.mk_range
                                                             "Pulse.Checker.Pure.fst"
                                                             (Prims.of_int (374))
                                                             (Prims.of_int (31))
                                                             (Prims.of_int (374))
                                                             (Prims.of_int (59)))))
                                                    (FStar_Sealed.seal
                                                       (Obj.magic
                                                          (FStar_Range.mk_range
                                                             "Pulse.Checker.Pure.fst"
                                                             (Prims.of_int (372))
                                                             (Prims.of_int (6))
                                                             (Prims.of_int (374))
                                                             (Prims.of_int (59)))))
                                                    (Obj.magic uu___5)
                                                    (fun uu___6 ->
                                                       (fun uu___6 ->
                                                          Obj.magic
                                                            (maybe_fail_doc
                                                               issues g
                                                               (Pulse_RuntimeUtils.range_of_term
                                                                  t) uu___6))
                                                         uu___6)))
                                        | FStar_Pervasives_Native.Some
                                            (FStar_Pervasives.Mkdtuple3
                                            (eff, ty', tok)) ->
                                            Obj.magic
                                              (Obj.repr
                                                 (FStar_Tactics_Effect.lift_div_tac
                                                    (fun uu___5 ->
                                                       FStar_Pervasives.Mkdtuple3
                                                         (eff, ty', ())))))
                                       uu___4))) uu___2))) uu___1)
let (core_check_term :
  Pulse_Typing_Env.env ->
    Pulse_Syntax_Base.term ->
      FStarC_TypeChecker_Core.tot_or_ghost ->
        Pulse_Syntax_Base.term -> (unit, unit) FStar_Tactics_Effect.tac_repr)
  =
  fun g ->
    fun e ->
      fun eff ->
        fun t ->
          let uu___ =
            Obj.magic
              (FStar_Tactics_Effect.lift_div_tac
                 (fun uu___1 -> Pulse_Typing.elab_env g)) in
          FStar_Tactics_Effect.tac_bind
            (FStar_Sealed.seal
               (Obj.magic
                  (FStar_Range.mk_range "Pulse.Checker.Pure.fst"
                     (Prims.of_int (378)) (Prims.of_int (11))
                     (Prims.of_int (378)) (Prims.of_int (21)))))
            (FStar_Sealed.seal
               (Obj.magic
                  (FStar_Range.mk_range "Pulse.Checker.Pure.fst"
                     (Prims.of_int (378)) (Prims.of_int (24))
                     (Prims.of_int (390)) (Prims.of_int (69)))))
            (Obj.magic uu___)
            (fun uu___1 ->
               (fun fg ->
                  let uu___1 =
                    catch_all
                      (fun uu___2 ->
                         rtb_core_check_term
                           (Pulse_Typing_Env.push_context g "core_check_term"
                              (FStarC_Reflection_V2_Builtins.range_of_term t))
                           fg e eff t) in
                  Obj.magic
                    (FStar_Tactics_Effect.tac_bind
                       (FStar_Sealed.seal
                          (Obj.magic
                             (FStar_Range.mk_range "Pulse.Checker.Pure.fst"
                                (Prims.of_int (380)) (Prims.of_int (4))
                                (Prims.of_int (383)) (Prims.of_int (18)))))
                       (FStar_Sealed.seal
                          (Obj.magic
                             (FStar_Range.mk_range "Pulse.Checker.Pure.fst"
                                (Prims.of_int (378)) (Prims.of_int (24))
                                (Prims.of_int (390)) (Prims.of_int (69)))))
                       (Obj.magic uu___1)
                       (fun uu___2 ->
                          (fun uu___2 ->
                             match uu___2 with
                             | (topt, issues) ->
                                 let uu___3 =
                                   FStarC_Tactics_V2_Builtins.log_issues
                                     issues in
                                 Obj.magic
                                   (FStar_Tactics_Effect.tac_bind
                                      (FStar_Sealed.seal
                                         (Obj.magic
                                            (FStar_Range.mk_range
                                               "Pulse.Checker.Pure.fst"
                                               (Prims.of_int (384))
                                               (Prims.of_int (2))
                                               (Prims.of_int (384))
                                               (Prims.of_int (21)))))
                                      (FStar_Sealed.seal
                                         (Obj.magic
                                            (FStar_Range.mk_range
                                               "Pulse.Checker.Pure.fst"
                                               (Prims.of_int (385))
                                               (Prims.of_int (2))
                                               (Prims.of_int (390))
                                               (Prims.of_int (69)))))
                                      (Obj.magic uu___3)
                                      (fun uu___4 ->
                                         (fun uu___4 ->
                                            match topt with
                                            | FStar_Pervasives_Native.None ->
                                                Obj.magic
                                                  (Obj.repr
                                                     (let uu___5 =
                                                        ill_typed_term e
                                                          (FStar_Pervasives_Native.Some
                                                             t)
                                                          FStar_Pervasives_Native.None in
                                                      FStar_Tactics_Effect.tac_bind
                                                        (FStar_Sealed.seal
                                                           (Obj.magic
                                                              (FStar_Range.mk_range
                                                                 "Pulse.Checker.Pure.fst"
                                                                 (Prims.of_int (389))
                                                                 (Prims.of_int (29))
                                                                 (Prims.of_int (389))
                                                                 (Prims.of_int (61)))))
                                                        (FStar_Sealed.seal
                                                           (Obj.magic
                                                              (FStar_Range.mk_range
                                                                 "Pulse.Checker.Pure.fst"
                                                                 (Prims.of_int (387))
                                                                 (Prims.of_int (4))
                                                                 (Prims.of_int (389))
                                                                 (Prims.of_int (61)))))
                                                        (Obj.magic uu___5)
                                                        (fun uu___6 ->
                                                           (fun uu___6 ->
                                                              Obj.magic
                                                                (maybe_fail_doc
                                                                   issues g
                                                                   (Pulse_RuntimeUtils.range_of_term
                                                                    e) uu___6))
                                                             uu___6)))
                                            | FStar_Pervasives_Native.Some
                                                tok ->
                                                Obj.magic
                                                  (Obj.repr
                                                     (FStar_Tactics_Effect.lift_div_tac
                                                        (fun uu___5 -> ()))))
                                           uu___4))) uu___2))) uu___1)
let (core_check_term_at_type :
  Pulse_Typing_Env.env ->
    Pulse_Syntax_Base.term ->
      Pulse_Syntax_Base.term ->
        ((FStarC_TypeChecker_Core.tot_or_ghost, unit) Prims.dtuple2, 
          unit) FStar_Tactics_Effect.tac_repr)
  =
  fun g ->
    fun e ->
      fun t ->
        let uu___ =
          Obj.magic
            (FStar_Tactics_Effect.lift_div_tac
               (fun uu___1 -> Pulse_Typing.elab_env g)) in
        FStar_Tactics_Effect.tac_bind
          (FStar_Sealed.seal
             (Obj.magic
                (FStar_Range.mk_range "Pulse.Checker.Pure.fst"
                   (Prims.of_int (393)) (Prims.of_int (11))
                   (Prims.of_int (393)) (Prims.of_int (21)))))
          (FStar_Sealed.seal
             (Obj.magic
                (FStar_Range.mk_range "Pulse.Checker.Pure.fst"
                   (Prims.of_int (393)) (Prims.of_int (24))
                   (Prims.of_int (406)) (Prims.of_int (62)))))
          (Obj.magic uu___)
          (fun uu___1 ->
             (fun fg ->
                let uu___1 =
                  catch_all
                    (fun uu___2 ->
                       rtb_core_check_term_at_type
                         (Pulse_Typing_Env.push_context g
                            "core_check_term_at_type"
                            (FStarC_Reflection_V2_Builtins.range_of_term t))
                         fg e t) in
                Obj.magic
                  (FStar_Tactics_Effect.tac_bind
                     (FStar_Sealed.seal
                        (Obj.magic
                           (FStar_Range.mk_range "Pulse.Checker.Pure.fst"
                              (Prims.of_int (395)) (Prims.of_int (4))
                              (Prims.of_int (398)) (Prims.of_int (14)))))
                     (FStar_Sealed.seal
                        (Obj.magic
                           (FStar_Range.mk_range "Pulse.Checker.Pure.fst"
                              (Prims.of_int (393)) (Prims.of_int (24))
                              (Prims.of_int (406)) (Prims.of_int (62)))))
                     (Obj.magic uu___1)
                     (fun uu___2 ->
                        (fun uu___2 ->
                           match uu___2 with
                           | (effopt, issues) ->
                               let uu___3 =
                                 FStarC_Tactics_V2_Builtins.log_issues issues in
                               Obj.magic
                                 (FStar_Tactics_Effect.tac_bind
                                    (FStar_Sealed.seal
                                       (Obj.magic
                                          (FStar_Range.mk_range
                                             "Pulse.Checker.Pure.fst"
                                             (Prims.of_int (399))
                                             (Prims.of_int (2))
                                             (Prims.of_int (399))
                                             (Prims.of_int (21)))))
                                    (FStar_Sealed.seal
                                       (Obj.magic
                                          (FStar_Range.mk_range
                                             "Pulse.Checker.Pure.fst"
                                             (Prims.of_int (400))
                                             (Prims.of_int (2))
                                             (Prims.of_int (406))
                                             (Prims.of_int (62)))))
                                    (Obj.magic uu___3)
                                    (fun uu___4 ->
                                       (fun uu___4 ->
                                          match effopt with
                                          | FStar_Pervasives_Native.None ->
                                              Obj.magic
                                                (Obj.repr
                                                   (let uu___5 =
                                                      ill_typed_term e
                                                        (FStar_Pervasives_Native.Some
                                                           t)
                                                        FStar_Pervasives_Native.None in
                                                    FStar_Tactics_Effect.tac_bind
                                                      (FStar_Sealed.seal
                                                         (Obj.magic
                                                            (FStar_Range.mk_range
                                                               "Pulse.Checker.Pure.fst"
                                                               (Prims.of_int (404))
                                                               (Prims.of_int (29))
                                                               (Prims.of_int (404))
                                                               (Prims.of_int (61)))))
                                                      (FStar_Sealed.seal
                                                         (Obj.magic
                                                            (FStar_Range.mk_range
                                                               "Pulse.Checker.Pure.fst"
                                                               (Prims.of_int (402))
                                                               (Prims.of_int (4))
                                                               (Prims.of_int (404))
                                                               (Prims.of_int (61)))))
                                                      (Obj.magic uu___5)
                                                      (fun uu___6 ->
                                                         (fun uu___6 ->
                                                            Obj.magic
                                                              (maybe_fail_doc
                                                                 issues g
                                                                 (Pulse_RuntimeUtils.range_of_term
                                                                    e) uu___6))
                                                           uu___6)))
                                          | FStar_Pervasives_Native.Some eff
                                              ->
                                              Obj.magic
                                                (Obj.repr
                                                   (FStar_Tactics_Effect.lift_div_tac
                                                      (fun uu___5 ->
                                                         Prims.Mkdtuple2
                                                           (eff, ())))))
                                         uu___4))) uu___2))) uu___1)
let (check_slprop :
  Pulse_Typing_Env.env ->
    Pulse_Syntax_Base.term ->
      ((Pulse_Syntax_Base.term, unit) Prims.dtuple2, unit)
        FStar_Tactics_Effect.tac_repr)
  =
  fun g ->
    fun t ->
      check_term (Pulse_Typing_Env.push_context_no_range g "check_slprop") t
        FStarC_TypeChecker_Core.E_Total Pulse_Syntax_Pure.tm_slprop
let (check_slprop_with_core :
  Pulse_Typing_Env.env ->
    Pulse_Syntax_Base.term -> (unit, unit) FStar_Tactics_Effect.tac_repr)
  =
  fun g ->
    fun t ->
      core_check_term
        (Pulse_Typing_Env.push_context_no_range g "check_slprop_with_core") t
        FStarC_TypeChecker_Core.E_Total Pulse_Syntax_Pure.tm_slprop
let (try_get_non_informative_witness_aux :
  Pulse_Typing_Env.env ->
    Pulse_Syntax_Base.universe ->
      Pulse_Syntax_Base.term ->
        unit ->
          (((unit, unit, unit) Pulse_Typing.non_informative_t
             FStar_Pervasives_Native.option * FStar_Issue.issue Prims.list),
            unit) FStar_Tactics_Effect.tac_repr)
  =
  fun g ->
    fun u ->
      fun ty ->
        fun ty_typing ->
          let uu___ =
            Obj.magic
              (FStar_Tactics_Effect.lift_div_tac
                 (fun uu___1 -> Pulse_Typing.non_informative_class u ty)) in
          FStar_Tactics_Effect.tac_bind
            (FStar_Sealed.seal
               (Obj.magic
                  (FStar_Range.mk_range "Pulse.Checker.Pure.fst"
                     (Prims.of_int (435)) (Prims.of_int (15))
                     (Prims.of_int (435)) (Prims.of_int (41)))))
            (FStar_Sealed.seal
               (Obj.magic
                  (FStar_Range.mk_range "Pulse.Checker.Pure.fst"
                     (Prims.of_int (435)) (Prims.of_int (44))
                     (Prims.of_int (454)) (Prims.of_int (5)))))
            (Obj.magic uu___)
            (fun uu___1 ->
               (fun goal ->
                  let uu___1 =
                    Obj.magic
                      (FStar_Tactics_Effect.lift_div_tac
                         (fun uu___2 -> Pulse_Typing.elab_env g)) in
                  Obj.magic
                    (FStar_Tactics_Effect.tac_bind
                       (FStar_Sealed.seal
                          (Obj.magic
                             (FStar_Range.mk_range "Pulse.Checker.Pure.fst"
                                (Prims.of_int (436)) (Prims.of_int (16))
                                (Prims.of_int (436)) (Prims.of_int (26)))))
                       (FStar_Sealed.seal
                          (Obj.magic
                             (FStar_Range.mk_range "Pulse.Checker.Pure.fst"
                                (Prims.of_int (436)) (Prims.of_int (29))
                                (Prims.of_int (454)) (Prims.of_int (5)))))
                       (Obj.magic uu___1)
                       (fun uu___2 ->
                          (fun r_env ->
                             let uu___2 =
                               Obj.magic
                                 (FStar_Tactics_Effect.lift_div_tac
                                    (fun uu___3 -> ())) in
                             Obj.magic
                               (FStar_Tactics_Effect.tac_bind
                                  (FStar_Sealed.seal
                                     (Obj.magic
                                        (FStar_Range.mk_range
                                           "Pulse.Checker.Pure.fst"
                                           (Prims.of_int (437))
                                           (Prims.of_int (28))
                                           (Prims.of_int (437))
                                           (Prims.of_int (73)))))
                                  (FStar_Sealed.seal
                                     (Obj.magic
                                        (FStar_Range.mk_range
                                           "Pulse.Checker.Pure.fst"
                                           (Prims.of_int (440))
                                           (Prims.of_int (6))
                                           (Prims.of_int (454))
                                           (Prims.of_int (5)))))
                                  (Obj.magic uu___2)
                                  (fun uu___3 ->
                                     (fun constraint_typing ->
                                        let uu___3 =
                                          FStarC_Tactics_V2_Builtins.call_subtac
                                            r_env
                                            FStar_Tactics_Typeclasses.tcresolve
                                            u goal in
                                        Obj.magic
                                          (FStar_Tactics_Effect.tac_bind
                                             (FStar_Sealed.seal
                                                (Obj.magic
                                                   (FStar_Range.mk_range
                                                      "Pulse.Checker.Pure.fst"
                                                      (Prims.of_int (441))
                                                      (Prims.of_int (12))
                                                      (Prims.of_int (441))
                                                      (Prims.of_int (74)))))
                                             (FStar_Sealed.seal
                                                (Obj.magic
                                                   (FStar_Range.mk_range
                                                      "Pulse.Checker.Pure.fst"
                                                      (Prims.of_int (442))
                                                      (Prims.of_int (4))
                                                      (Prims.of_int (454))
                                                      (Prims.of_int (5)))))
                                             (Obj.magic uu___3)
                                             (fun r ->
                                                FStar_Tactics_Effect.lift_div_tac
                                                  (fun uu___4 ->
                                                     match r with
                                                     | (FStar_Pervasives_Native.None,
                                                        issues) ->
                                                         (FStar_Pervasives_Native.None,
                                                           issues)
                                                     | (FStar_Pervasives_Native.Some
                                                        r_dict, issues) ->
                                                         ((FStar_Pervasives_Native.Some
                                                             (Prims.Mkdtuple2
                                                                ((Pulse_Syntax_Pure.wr
                                                                    r_dict
                                                                    (
                                                                    Pulse_RuntimeUtils.range_of_term
                                                                    ty)), ()))),
                                                           issues))))) uu___3)))
                            uu___2))) uu___1)
let (try_get_non_informative_witness :
  Pulse_Typing_Env.env ->
    Pulse_Syntax_Base.universe ->
      Pulse_Syntax_Base.term ->
        unit ->
          ((unit, unit, unit) Pulse_Typing.non_informative_t
             FStar_Pervasives_Native.option,
            unit) FStar_Tactics_Effect.tac_repr)
  =
  fun g ->
    fun u ->
      fun ty ->
        fun ty_typing ->
          let uu___ = try_get_non_informative_witness_aux g u ty () in
          FStar_Tactics_Effect.tac_bind
            (FStar_Sealed.seal
               (Obj.magic
                  (FStar_Range.mk_range "Pulse.Checker.Pure.fst"
                     (Prims.of_int (457)) (Prims.of_int (16))
                     (Prims.of_int (457)) (Prims.of_int (68)))))
            (FStar_Sealed.seal
               (Obj.magic
                  (FStar_Range.mk_range "Pulse.Checker.Pure.fst"
                     (Prims.of_int (456)) (Prims.of_int (54))
                     (Prims.of_int (458)) (Prims.of_int (6)))))
            (Obj.magic uu___)
            (fun uu___1 ->
               FStar_Tactics_Effect.lift_div_tac
                 (fun uu___2 -> match uu___1 with | (ropt, uu___3) -> ropt))
let (get_non_informative_witness :
  Pulse_Typing_Env.env ->
    Pulse_Syntax_Base.universe ->
      Pulse_Syntax_Base.term ->
        unit ->
          ((unit, unit, unit) Pulse_Typing.non_informative_t, unit)
            FStar_Tactics_Effect.tac_repr)
  =
  fun g ->
    fun u ->
      fun t ->
        fun t_typing ->
          let uu___ = try_get_non_informative_witness_aux g u t () in
          FStar_Tactics_Effect.tac_bind
            (FStar_Sealed.seal
               (Obj.magic
                  (FStar_Range.mk_range "Pulse.Checker.Pure.fst"
                     (Prims.of_int (462)) (Prims.of_int (10))
                     (Prims.of_int (462)) (Prims.of_int (60)))))
            (FStar_Sealed.seal
               (Obj.magic
                  (FStar_Range.mk_range "Pulse.Checker.Pure.fst"
                     (Prims.of_int (462)) (Prims.of_int (4))
                     (Prims.of_int (473)) (Prims.of_int (7)))))
            (Obj.magic uu___)
            (fun uu___1 ->
               (fun uu___1 ->
                  match uu___1 with
                  | (FStar_Pervasives_Native.None, issues) ->
                      let uu___2 =
                        FStarC_Tactics_V2_Builtins.log_issues issues in
                      Obj.magic
                        (FStar_Tactics_Effect.tac_bind
                           (FStar_Sealed.seal
                              (Obj.magic
                                 (FStar_Range.mk_range
                                    "Pulse.Checker.Pure.fst"
                                    (Prims.of_int (464)) (Prims.of_int (6))
                                    (Prims.of_int (464)) (Prims.of_int (25)))))
                           (FStar_Sealed.seal
                              (Obj.magic
                                 (FStar_Range.mk_range
                                    "Pulse.Checker.Pure.fst"
                                    (Prims.of_int (466)) (Prims.of_int (6))
                                    (Prims.of_int (470)) (Prims.of_int (7)))))
                           (Obj.magic uu___2)
                           (fun uu___3 ->
                              (fun uu___3 ->
                                 let uu___4 =
                                   let uu___5 =
                                     let uu___6 =
                                       let uu___7 =
                                         Pulse_PP.pp Pulse_PP.printable_term
                                           t in
                                       FStar_Tactics_Effect.tac_bind
                                         (FStar_Sealed.seal
                                            (Obj.magic
                                               (FStar_Range.mk_range
                                                  "Pulse.Checker.Pure.fst"
                                                  (Prims.of_int (469))
                                                  (Prims.of_int (10))
                                                  (Prims.of_int (469))
                                                  (Prims.of_int (16)))))
                                         (FStar_Sealed.seal
                                            (Obj.magic
                                               (FStar_Range.mk_range
                                                  "Pulse.Checker.Pure.fst"
                                                  (Prims.of_int (468))
                                                  (Prims.of_int (8))
                                                  (Prims.of_int (469))
                                                  (Prims.of_int (16)))))
                                         (Obj.magic uu___7)
                                         (fun uu___8 ->
                                            FStar_Tactics_Effect.lift_div_tac
                                              (fun uu___9 ->
                                                 FStarC_Pprint.prefix
                                                   (Prims.of_int (2))
                                                   Prims.int_one
                                                   (Pulse_PP.text "Got:")
                                                   uu___8)) in
                                     FStar_Tactics_Effect.tac_bind
                                       (FStar_Sealed.seal
                                          (Obj.magic
                                             (FStar_Range.mk_range
                                                "Pulse.Checker.Pure.fst"
                                                (Prims.of_int (468))
                                                (Prims.of_int (8))
                                                (Prims.of_int (469))
                                                (Prims.of_int (16)))))
                                       (FStar_Sealed.seal
                                          (Obj.magic
                                             (FStar_Range.mk_range
                                                "Pulse.Checker.Pure.fst"
                                                (Prims.of_int (466))
                                                (Prims.of_int (45))
                                                (Prims.of_int (470))
                                                (Prims.of_int (7)))))
                                       (Obj.magic uu___6)
                                       (fun uu___7 ->
                                          FStar_Tactics_Effect.lift_div_tac
                                            (fun uu___8 -> [uu___7])) in
                                   FStar_Tactics_Effect.tac_bind
                                     (FStar_Sealed.seal
                                        (Obj.magic
                                           (FStar_Range.mk_range
                                              "Pulse.Checker.Pure.fst"
                                              (Prims.of_int (466))
                                              (Prims.of_int (45))
                                              (Prims.of_int (470))
                                              (Prims.of_int (7)))))
                                     (FStar_Sealed.seal
                                        (Obj.magic
                                           (FStar_Range.mk_range
                                              "Pulse.Checker.Pure.fst"
                                              (Prims.of_int (466))
                                              (Prims.of_int (45))
                                              (Prims.of_int (470))
                                              (Prims.of_int (7)))))
                                     (Obj.magic uu___5)
                                     (fun uu___6 ->
                                        FStar_Tactics_Effect.lift_div_tac
                                          (fun uu___7 ->
                                             (Pulse_PP.text
                                                "Expected a term with a non-informative (e.g., erased) type.")
                                             :: uu___6)) in
                                 Obj.magic
                                   (FStar_Tactics_Effect.tac_bind
                                      (FStar_Sealed.seal
                                         (Obj.magic
                                            (FStar_Range.mk_range
                                               "Pulse.Checker.Pure.fst"
                                               (Prims.of_int (466))
                                               (Prims.of_int (45))
                                               (Prims.of_int (470))
                                               (Prims.of_int (7)))))
                                      (FStar_Sealed.seal
                                         (Obj.magic
                                            (FStar_Range.mk_range
                                               "Pulse.Checker.Pure.fst"
                                               (Prims.of_int (466))
                                               (Prims.of_int (6))
                                               (Prims.of_int (470))
                                               (Prims.of_int (7)))))
                                      (Obj.magic uu___4)
                                      (fun uu___5 ->
                                         (fun uu___5 ->
                                            Obj.magic
                                              (Pulse_Typing_Env.fail_doc g
                                                 (FStar_Pervasives_Native.Some
                                                    (Pulse_RuntimeUtils.range_of_term
                                                       t)) uu___5)) uu___5)))
                                uu___3))
                  | (FStar_Pervasives_Native.Some e, issues) ->
                      let uu___2 =
                        FStarC_Tactics_V2_Builtins.log_issues issues in
                      Obj.magic
                        (FStar_Tactics_Effect.tac_bind
                           (FStar_Sealed.seal
                              (Obj.magic
                                 (FStar_Range.mk_range
                                    "Pulse.Checker.Pure.fst"
                                    (Prims.of_int (472)) (Prims.of_int (6))
                                    (Prims.of_int (472)) (Prims.of_int (25)))))
                           (FStar_Sealed.seal
                              (Obj.magic
                                 (FStar_Range.mk_range
                                    "Pulse.Checker.Pure.fst"
                                    (Prims.of_int (471)) (Prims.of_int (11))
                                    (Prims.of_int (471)) (Prims.of_int (12)))))
                           (Obj.magic uu___2)
                           (fun uu___3 ->
                              FStar_Tactics_Effect.lift_div_tac
                                (fun uu___4 -> e)))) uu___1)
let (try_check_prop_validity :
  Pulse_Typing_Env.env ->
    Pulse_Syntax_Base.term ->
      unit ->
        (unit FStar_Pervasives_Native.option, unit)
          FStar_Tactics_Effect.tac_repr)
  =
  fun g ->
    fun p ->
      fun uu___ ->
        let uu___1 =
          rtb_check_prop_validity g true (Pulse_Typing.elab_env g) p in
        FStar_Tactics_Effect.tac_bind
          (FStar_Sealed.seal
             (Obj.magic
                (FStar_Range.mk_range "Pulse.Checker.Pure.fst"
                   (Prims.of_int (477)) (Prims.of_int (24))
                   (Prims.of_int (477)) (Prims.of_int (69)))))
          (FStar_Sealed.seal
             (Obj.magic
                (FStar_Range.mk_range "Pulse.Checker.Pure.fst"
                   (Prims.of_int (477)) (Prims.of_int (3))
                   (Prims.of_int (478)) (Prims.of_int (9)))))
          (Obj.magic uu___1)
          (fun uu___2 ->
             FStar_Tactics_Effect.lift_div_tac
               (fun uu___3 -> match uu___2 with | (t_opt, issues) -> t_opt))
let (check_prop_validity :
  Pulse_Typing_Env.env ->
    Pulse_Syntax_Base.term ->
      unit -> (unit, unit) FStar_Tactics_Effect.tac_repr)
  =
  fun g ->
    fun p ->
      fun uu___ ->
        let uu___1 =
          rtb_check_prop_validity g false (Pulse_Typing.elab_env g) p in
        FStar_Tactics_Effect.tac_bind
          (FStar_Sealed.seal
             (Obj.magic
                (FStar_Range.mk_range "Pulse.Checker.Pure.fst"
                   (Prims.of_int (482)) (Prims.of_int (24))
                   (Prims.of_int (482)) (Prims.of_int (70)))))
          (FStar_Sealed.seal
             (Obj.magic
                (FStar_Range.mk_range "Pulse.Checker.Pure.fst"
                   (Prims.of_int (482)) (Prims.of_int (3))
                   (Prims.of_int (490)) (Prims.of_int (21)))))
          (Obj.magic uu___1)
          (fun uu___2 ->
             (fun uu___2 ->
                match uu___2 with
                | (t_opt, issues) ->
                    let uu___3 = FStarC_Tactics_V2_Builtins.log_issues issues in
                    Obj.magic
                      (FStar_Tactics_Effect.tac_bind
                         (FStar_Sealed.seal
                            (Obj.magic
                               (FStar_Range.mk_range "Pulse.Checker.Pure.fst"
                                  (Prims.of_int (483)) (Prims.of_int (4))
                                  (Prims.of_int (483)) (Prims.of_int (23)))))
                         (FStar_Sealed.seal
                            (Obj.magic
                               (FStar_Range.mk_range "Pulse.Checker.Pure.fst"
                                  (Prims.of_int (484)) (Prims.of_int (4))
                                  (Prims.of_int (490)) (Prims.of_int (21)))))
                         (Obj.magic uu___3)
                         (fun uu___4 ->
                            (fun uu___4 ->
                               match t_opt with
                               | FStar_Pervasives_Native.None ->
                                   Obj.magic
                                     (Obj.repr
                                        (let uu___5 =
                                           let uu___6 =
                                             let uu___7 =
                                               Pulse_PP.pp
                                                 Pulse_PP.printable_term p in
                                             FStar_Tactics_Effect.tac_bind
                                               (FStar_Sealed.seal
                                                  (Obj.magic
                                                     (FStar_Range.mk_range
                                                        "Pulse.Checker.Pure.fst"
                                                        (Prims.of_int (488))
                                                        (Prims.of_int (59))
                                                        (Prims.of_int (488))
                                                        (Prims.of_int (65)))))
                                               (FStar_Sealed.seal
                                                  (Obj.magic
                                                     (FStar_Range.mk_range
                                                        "Pulse.Checker.Pure.fst"
                                                        (Prims.of_int (488))
                                                        (Prims.of_int (8))
                                                        (Prims.of_int (488))
                                                        (Prims.of_int (65)))))
                                               (Obj.magic uu___7)
                                               (fun uu___8 ->
                                                  FStar_Tactics_Effect.lift_div_tac
                                                    (fun uu___9 ->
                                                       FStarC_Pprint.prefix
                                                         (Prims.of_int (2))
                                                         Prims.int_one
                                                         (Pulse_PP.text
                                                            "Failed to prove pure property:")
                                                         uu___8)) in
                                           FStar_Tactics_Effect.tac_bind
                                             (FStar_Sealed.seal
                                                (Obj.magic
                                                   (FStar_Range.mk_range
                                                      "Pulse.Checker.Pure.fst"
                                                      (Prims.of_int (488))
                                                      (Prims.of_int (8))
                                                      (Prims.of_int (488))
                                                      (Prims.of_int (65)))))
                                             (FStar_Sealed.seal
                                                (Obj.magic
                                                   (FStar_Range.mk_range
                                                      "Pulse.Checker.Pure.fst"
                                                      (Prims.of_int (487))
                                                      (Prims.of_int (51))
                                                      (Prims.of_int (489))
                                                      (Prims.of_int (7)))))
                                             (Obj.magic uu___6)
                                             (fun uu___7 ->
                                                FStar_Tactics_Effect.lift_div_tac
                                                  (fun uu___8 -> [uu___7])) in
                                         FStar_Tactics_Effect.tac_bind
                                           (FStar_Sealed.seal
                                              (Obj.magic
                                                 (FStar_Range.mk_range
                                                    "Pulse.Checker.Pure.fst"
                                                    (Prims.of_int (487))
                                                    (Prims.of_int (51))
                                                    (Prims.of_int (489))
                                                    (Prims.of_int (7)))))
                                           (FStar_Sealed.seal
                                              (Obj.magic
                                                 (FStar_Range.mk_range
                                                    "Pulse.Checker.Pure.fst"
                                                    (Prims.of_int (487))
                                                    (Prims.of_int (6))
                                                    (Prims.of_int (489))
                                                    (Prims.of_int (7)))))
                                           (Obj.magic uu___5)
                                           (fun uu___6 ->
                                              (fun uu___6 ->
                                                 Obj.magic
                                                   (maybe_fail_doc issues g
                                                      (Pulse_RuntimeUtils.range_of_term
                                                         p) uu___6)) uu___6)))
                               | FStar_Pervasives_Native.Some tok ->
                                   Obj.magic
                                     (Obj.repr
                                        (FStar_Tactics_Effect.lift_div_tac
                                           (fun uu___5 -> ())))) uu___4)))
               uu___2)
let fail_expected_tot_found_ghost :
  'uuuuu .
    Pulse_Typing_Env.env ->
      Pulse_Syntax_Base.term -> ('uuuuu, unit) FStar_Tactics_Effect.tac_repr
  =
  fun g ->
    fun t ->
      let uu___ =
        let uu___1 =
          let uu___2 = Pulse_PP.pp Pulse_PP.printable_term t in
          FStar_Tactics_Effect.tac_bind
            (FStar_Sealed.seal
               (Obj.magic
                  (FStar_Range.mk_range "Pulse.Checker.Pure.fst"
                     (Prims.of_int (495)) (Prims.of_int (6))
                     (Prims.of_int (495)) (Prims.of_int (12)))))
            (FStar_Sealed.seal
               (Obj.magic
                  (FStar_Range.mk_range "Pulse.Checker.Pure.fst"
                     (Prims.of_int (494)) (Prims.of_int (4))
                     (Prims.of_int (495)) (Prims.of_int (12)))))
            (Obj.magic uu___2)
            (fun uu___3 ->
               FStar_Tactics_Effect.lift_div_tac
                 (fun uu___4 ->
                    FStarC_Pprint.prefix (Prims.of_int (2)) Prims.int_one
                      (Pulse_PP.text
                         "Expected a total term, got found ghost term:")
                      uu___3)) in
        FStar_Tactics_Effect.tac_bind
          (FStar_Sealed.seal
             (Obj.magic
                (FStar_Range.mk_range "Pulse.Checker.Pure.fst"
                   (Prims.of_int (494)) (Prims.of_int (4))
                   (Prims.of_int (495)) (Prims.of_int (12)))))
          (FStar_Sealed.seal
             (Obj.magic
                (FStar_Range.mk_range "Pulse.Checker.Pure.fst"
                   (Prims.of_int (493)) (Prims.of_int (41))
                   (Prims.of_int (496)) (Prims.of_int (3)))))
          (Obj.magic uu___1)
          (fun uu___2 ->
             FStar_Tactics_Effect.lift_div_tac (fun uu___3 -> [uu___2])) in
      FStar_Tactics_Effect.tac_bind
        (FStar_Sealed.seal
           (Obj.magic
              (FStar_Range.mk_range "Pulse.Checker.Pure.fst"
                 (Prims.of_int (493)) (Prims.of_int (41))
                 (Prims.of_int (496)) (Prims.of_int (3)))))
        (FStar_Sealed.seal
           (Obj.magic
              (FStar_Range.mk_range "Pulse.Checker.Pure.fst"
                 (Prims.of_int (493)) (Prims.of_int (2)) (Prims.of_int (496))
                 (Prims.of_int (3))))) (Obj.magic uu___)
        (fun uu___1 ->
           (fun uu___1 ->
              Obj.magic
                (Pulse_Typing_Env.fail_doc g
                   (FStar_Pervasives_Native.Some
                      (Pulse_RuntimeUtils.range_of_term t)) uu___1)) uu___1)
let (compute_tot_term_type :
  Pulse_Typing_Env.env ->
    Pulse_Syntax_Base.term ->
      ((Pulse_Syntax_Base.term, Pulse_Syntax_Base.typ, unit)
         FStar_Pervasives.dtuple3,
        unit) FStar_Tactics_Effect.tac_repr)
  =
  fun g ->
    fun t ->
      let uu___ = compute_term_type g t in
      FStar_Tactics_Effect.tac_bind
        (FStar_Sealed.seal
           (Obj.magic
              (FStar_Range.mk_range "Pulse.Checker.Pure.fst"
                 (Prims.of_int (499)) (Prims.of_int (35))
                 (Prims.of_int (499)) (Prims.of_int (56)))))
        (FStar_Sealed.seal
           (Obj.magic
              (FStar_Range.mk_range "Pulse.Checker.Pure.fst"
                 (Prims.of_int (498)) (Prims.of_int (31))
                 (Prims.of_int (501)) (Prims.of_int (40)))))
        (Obj.magic uu___)
        (fun uu___1 ->
           (fun uu___1 ->
              match uu___1 with
              | FStar_Pervasives.Mkdtuple4 (t1, eff, ty, t_typing) ->
                  if eff = FStarC_TypeChecker_Core.E_Total
                  then
                    Obj.magic
                      (Obj.repr
                         (FStar_Tactics_Effect.lift_div_tac
                            (fun uu___2 ->
                               FStar_Pervasives.Mkdtuple3 (t1, ty, ()))))
                  else
                    Obj.magic (Obj.repr (fail_expected_tot_found_ghost g t1)))
             uu___1)
let (compute_tot_term_type_and_u :
  Pulse_Typing_Env.env ->
    Pulse_Syntax_Base.term ->
      ((Pulse_Syntax_Base.term, Pulse_Syntax_Base.universe,
         Pulse_Syntax_Base.typ, unit, unit) FStar_Pervasives.dtuple5,
        unit) FStar_Tactics_Effect.tac_repr)
  =
  fun g ->
    fun t ->
      let uu___ = compute_term_type_and_u g t in
      FStar_Tactics_Effect.tac_bind
        (FStar_Sealed.seal
           (Obj.magic
              (FStar_Range.mk_range "Pulse.Checker.Pure.fst"
                 (Prims.of_int (504)) (Prims.of_int (55))
                 (Prims.of_int (504)) (Prims.of_int (82)))))
        (FStar_Sealed.seal
           (Obj.magic
              (FStar_Range.mk_range "Pulse.Checker.Pure.fst"
                 (Prims.of_int (503)) (Prims.of_int (37))
                 (Prims.of_int (506)) (Prims.of_int (40)))))
        (Obj.magic uu___)
        (fun uu___1 ->
           (fun uu___1 ->
              match uu___1 with
              | FStar_Pervasives.Mkdtuple5
                  (t1, eff, ty, Prims.Mkdtuple2 (u, ty_typing), t_typing) ->
                  if eff = FStarC_TypeChecker_Core.E_Total
                  then
                    Obj.magic
                      (Obj.repr
                         (FStar_Tactics_Effect.lift_div_tac
                            (fun uu___2 ->
                               FStar_Pervasives.Mkdtuple5 (t1, u, ty, (), ()))))
                  else
                    Obj.magic (Obj.repr (fail_expected_tot_found_ghost g t1)))
             uu___1)
let (check_tot_term :
  Pulse_Typing_Env.env ->
    Pulse_Syntax_Base.term ->
      Pulse_Syntax_Base.term ->
        ((Pulse_Syntax_Base.term, unit) Prims.dtuple2, unit)
          FStar_Tactics_Effect.tac_repr)
  =
  fun g -> fun e -> fun t -> check_term g e FStarC_TypeChecker_Core.E_Total t
let (core_compute_tot_term_type :
  Pulse_Typing_Env.env ->
    Pulse_Syntax_Base.term ->
      ((Pulse_Syntax_Base.typ, unit) Prims.dtuple2, unit)
        FStar_Tactics_Effect.tac_repr)
  =
  fun g ->
    fun t ->
      let uu___ = core_compute_term_type g t in
      FStar_Tactics_Effect.tac_bind
        (FStar_Sealed.seal
           (Obj.magic
              (FStar_Range.mk_range "Pulse.Checker.Pure.fst"
                 (Prims.of_int (512)) (Prims.of_int (25))
                 (Prims.of_int (512)) (Prims.of_int (51)))))
        (FStar_Sealed.seal
           (Obj.magic
              (FStar_Range.mk_range "Pulse.Checker.Pure.fst"
                 (Prims.of_int (511)) (Prims.of_int (36))
                 (Prims.of_int (514)) (Prims.of_int (40)))))
        (Obj.magic uu___)
        (fun uu___1 ->
           (fun uu___1 ->
              match uu___1 with
              | FStar_Pervasives.Mkdtuple3 (eff, ty, d) ->
                  if eff = FStarC_TypeChecker_Core.E_Total
                  then
                    Obj.magic
                      (Obj.repr
                         (FStar_Tactics_Effect.lift_div_tac
                            (fun uu___2 -> Prims.Mkdtuple2 (ty, ()))))
                  else
                    Obj.magic (Obj.repr (fail_expected_tot_found_ghost g t)))
             uu___1)
let (core_check_tot_term :
  Pulse_Typing_Env.env ->
    Pulse_Syntax_Base.term ->
      Pulse_Syntax_Base.typ -> (unit, unit) FStar_Tactics_Effect.tac_repr)
  =
  fun g ->
    fun e -> fun t -> core_check_term g e FStarC_TypeChecker_Core.E_Total t
let (is_non_informative :
  Pulse_Typing_Env.env ->
    Pulse_Syntax_Base.comp ->
      ((unit, unit) FStarC_Tactics_Types.non_informative_token
         FStar_Pervasives_Native.option,
        unit) FStar_Tactics_Effect.tac_repr)
  =
  fun g ->
    fun c ->
      let uu___ =
        catch_all
          (fun uu___1 ->
             FStarC_Tactics_V2_Builtins.is_non_informative
               (Pulse_Typing.elab_env g) (Pulse_Elaborate_Pure.elab_comp c)) in
      FStar_Tactics_Effect.tac_bind
        (FStar_Sealed.seal
           (Obj.magic
              (FStar_Range.mk_range "Pulse.Checker.Pure.fst"
                 (Prims.of_int (520)) (Prims.of_int (21))
                 (Prims.of_int (520)) (Prims.of_int (89)))))
        (FStar_Sealed.seal
           (Obj.magic
              (FStar_Range.mk_range "Pulse.Checker.Pure.fst"
                 (Prims.of_int (519)) (Prims.of_int (28))
                 (Prims.of_int (522)) (Prims.of_int (6))))) (Obj.magic uu___)
        (fun uu___1 ->
           (fun uu___1 ->
              match uu___1 with
              | (ropt, issues) ->
                  let uu___2 = FStarC_Tactics_V2_Builtins.log_issues issues in
                  Obj.magic
                    (FStar_Tactics_Effect.tac_bind
                       (FStar_Sealed.seal
                          (Obj.magic
                             (FStar_Range.mk_range "Pulse.Checker.Pure.fst"
                                (Prims.of_int (521)) (Prims.of_int (2))
                                (Prims.of_int (521)) (Prims.of_int (21)))))
                       (FStar_Sealed.seal
                          (Obj.magic
                             (FStar_Range.mk_range "Pulse.Checker.Pure.fst"
                                (Prims.of_int (520)) (Prims.of_int (6))
                                (Prims.of_int (520)) (Prims.of_int (10)))))
                       (Obj.magic uu___2)
                       (fun uu___3 ->
                          FStar_Tactics_Effect.lift_div_tac
                            (fun uu___4 -> ropt)))) uu___1)
let (check_subtyping :
  Pulse_Typing_Env.env ->
    Pulse_Syntax_Base.term ->
      Pulse_Syntax_Base.term ->
        ((unit, unit, unit) Pulse_Typing.subtyping_token, unit)
          FStar_Tactics_Effect.tac_repr)
  =
  fun g ->
    fun t1 ->
      fun t2 ->
        FStar_Tactics_V2_Derived.with_policy FStarC_Tactics_Types.ForceSMT
          (fun uu___ ->
             let uu___1 = rtb_check_subtyping g t1 t2 in
             FStar_Tactics_Effect.tac_bind
               (FStar_Sealed.seal
                  (Obj.magic
                     (FStar_Range.mk_range "Pulse.Checker.Pure.fst"
                        (Prims.of_int (526)) (Prims.of_int (20))
                        (Prims.of_int (526)) (Prims.of_int (47)))))
               (FStar_Sealed.seal
                  (Obj.magic
                     (FStar_Range.mk_range "Pulse.Checker.Pure.fst"
                        (Prims.of_int (525)) (Prims.of_int (35))
                        (Prims.of_int (534)) (Prims.of_int (47)))))
               (Obj.magic uu___1)
               (fun uu___2 ->
                  (fun uu___2 ->
                     match uu___2 with
                     | (res, issues) ->
                         let uu___3 =
                           FStarC_Tactics_V2_Builtins.log_issues issues in
                         Obj.magic
                           (FStar_Tactics_Effect.tac_bind
                              (FStar_Sealed.seal
                                 (Obj.magic
                                    (FStar_Range.mk_range
                                       "Pulse.Checker.Pure.fst"
                                       (Prims.of_int (527))
                                       (Prims.of_int (2))
                                       (Prims.of_int (527))
                                       (Prims.of_int (21)))))
                              (FStar_Sealed.seal
                                 (Obj.magic
                                    (FStar_Range.mk_range
                                       "Pulse.Checker.Pure.fst"
                                       (Prims.of_int (528))
                                       (Prims.of_int (2))
                                       (Prims.of_int (534))
                                       (Prims.of_int (47)))))
                              (Obj.magic uu___3)
                              (fun uu___4 ->
                                 (fun uu___4 ->
                                    match res with
                                    | FStar_Pervasives_Native.Some tok ->
                                        Obj.magic
                                          (Obj.repr
                                             (FStar_Tactics_Effect.lift_div_tac
                                                (fun uu___5 -> tok)))
                                    | FStar_Pervasives_Native.None ->
                                        Obj.magic
                                          (Obj.repr
                                             (let uu___5 =
                                                let uu___6 =
                                                  let uu___7 =
                                                    let uu___8 =
                                                      Pulse_PP.pp
                                                        Pulse_PP.printable_term
                                                        t1 in
                                                    FStar_Tactics_Effect.tac_bind
                                                      (FStar_Sealed.seal
                                                         (Obj.magic
                                                            (FStar_Range.mk_range
                                                               "Pulse.Checker.Pure.fst"
                                                               (Prims.of_int (534))
                                                               (Prims.of_int (16))
                                                               (Prims.of_int (534))
                                                               (Prims.of_int (21)))))
                                                      (FStar_Sealed.seal
                                                         (Obj.magic
                                                            (FStar_Range.mk_range
                                                               "Pulse.Checker.Pure.fst"
                                                               (Prims.of_int (534))
                                                               (Prims.of_int (16))
                                                               (Prims.of_int (534))
                                                               (Prims.of_int (46)))))
                                                      (Obj.magic uu___8)
                                                      (fun uu___9 ->
                                                         (fun uu___9 ->
                                                            let uu___10 =
                                                              let uu___11 =
                                                                Pulse_PP.pp
                                                                  Pulse_PP.printable_term
                                                                  t2 in
                                                              FStar_Tactics_Effect.tac_bind
                                                                (FStar_Sealed.seal
                                                                   (Obj.magic
                                                                    (FStar_Range.mk_range
                                                                    "Pulse.Checker.Pure.fst"
                                                                    (Prims.of_int (534))
                                                                    (Prims.of_int (41))
                                                                    (Prims.of_int (534))
                                                                    (Prims.of_int (46)))))
                                                                (FStar_Sealed.seal
                                                                   (Obj.magic
                                                                    (FStar_Range.mk_range
                                                                    "Pulse.Checker.Pure.fst"
                                                                    (Prims.of_int (534))
                                                                    (Prims.of_int (26))
                                                                    (Prims.of_int (534))
                                                                    (Prims.of_int (46)))))
                                                                (Obj.magic
                                                                   uu___11)
                                                                (fun uu___12
                                                                   ->
                                                                   FStar_Tactics_Effect.lift_div_tac
                                                                    (fun
                                                                    uu___13
                                                                    ->
                                                                    FStarC_Pprint.op_Hat_Slash_Hat
                                                                    (Pulse_PP.text
                                                                    "and")
                                                                    uu___12)) in
                                                            Obj.magic
                                                              (FStar_Tactics_Effect.tac_bind
                                                                 (FStar_Sealed.seal
                                                                    (
                                                                    Obj.magic
                                                                    (FStar_Range.mk_range
                                                                    "Pulse.Checker.Pure.fst"
                                                                    (Prims.of_int (534))
                                                                    (Prims.of_int (26))
                                                                    (Prims.of_int (534))
                                                                    (Prims.of_int (46)))))
                                                                 (FStar_Sealed.seal
                                                                    (
                                                                    Obj.magic
                                                                    (FStar_Range.mk_range
                                                                    "Pulse.Checker.Pure.fst"
                                                                    (Prims.of_int (534))
                                                                    (Prims.of_int (16))
                                                                    (Prims.of_int (534))
                                                                    (Prims.of_int (46)))))
                                                                 (Obj.magic
                                                                    uu___10)
                                                                 (fun uu___11
                                                                    ->
                                                                    FStar_Tactics_Effect.lift_div_tac
                                                                    (fun
                                                                    uu___12
                                                                    ->
                                                                    FStarC_Pprint.op_Hat_Slash_Hat
                                                                    uu___9
                                                                    uu___11))))
                                                           uu___9) in
                                                  FStar_Tactics_Effect.tac_bind
                                                    (FStar_Sealed.seal
                                                       (Obj.magic
                                                          (FStar_Range.mk_range
                                                             "Pulse.Checker.Pure.fst"
                                                             (Prims.of_int (534))
                                                             (Prims.of_int (16))
                                                             (Prims.of_int (534))
                                                             (Prims.of_int (46)))))
                                                    (FStar_Sealed.seal
                                                       (Obj.magic
                                                          (FStar_Range.mk_range
                                                             "Pulse.Checker.Pure.fst"
                                                             (Prims.of_int (533))
                                                             (Prims.of_int (12))
                                                             (Prims.of_int (534))
                                                             (Prims.of_int (46)))))
                                                    (Obj.magic uu___7)
                                                    (fun uu___8 ->
                                                       FStar_Tactics_Effect.lift_div_tac
                                                         (fun uu___9 ->
                                                            FStarC_Pprint.op_Hat_Slash_Hat
                                                              (Pulse_PP.text
                                                                 "Could not prove subtyping of ")
                                                              uu___8)) in
                                                FStar_Tactics_Effect.tac_bind
                                                  (FStar_Sealed.seal
                                                     (Obj.magic
                                                        (FStar_Range.mk_range
                                                           "Pulse.Checker.Pure.fst"
                                                           (Prims.of_int (533))
                                                           (Prims.of_int (12))
                                                           (Prims.of_int (534))
                                                           (Prims.of_int (46)))))
                                                  (FStar_Sealed.seal
                                                     (Obj.magic
                                                        (FStar_Range.mk_range
                                                           "Pulse.Checker.Pure.fst"
                                                           (Prims.of_int (533))
                                                           (Prims.of_int (10))
                                                           (Prims.of_int (534))
                                                           (Prims.of_int (47)))))
                                                  (Obj.magic uu___6)
                                                  (fun uu___7 ->
                                                     FStar_Tactics_Effect.lift_div_tac
                                                       (fun uu___8 ->
                                                          [uu___7])) in
                                              FStar_Tactics_Effect.tac_bind
                                                (FStar_Sealed.seal
                                                   (Obj.magic
                                                      (FStar_Range.mk_range
                                                         "Pulse.Checker.Pure.fst"
                                                         (Prims.of_int (533))
                                                         (Prims.of_int (10))
                                                         (Prims.of_int (534))
                                                         (Prims.of_int (47)))))
                                                (FStar_Sealed.seal
                                                   (Obj.magic
                                                      (FStar_Range.mk_range
                                                         "Pulse.Checker.Pure.fst"
                                                         (Prims.of_int (532))
                                                         (Prims.of_int (4))
                                                         (Prims.of_int (534))
                                                         (Prims.of_int (47)))))
                                                (Obj.magic uu___5)
                                                (fun uu___6 ->
                                                   (fun uu___6 ->
                                                      Obj.magic
                                                        (maybe_fail_doc
                                                           issues g
                                                           (Pulse_RuntimeUtils.range_of_term
                                                              t1) uu___6))
                                                     uu___6)))) uu___4)))
                    uu___2))
let (check_equiv :
  Pulse_Typing_Env.env ->
    Pulse_Syntax_Base.term ->
      Pulse_Syntax_Base.term ->
        ((unit, unit, unit) FStarC_Tactics_Types.equiv_token
           FStar_Pervasives_Native.option,
          unit) FStar_Tactics_Effect.tac_repr)
  =
  fun g ->
    fun t1 ->
      fun t2 ->
        let uu___ =
          Pulse_Typing_Util.check_equiv_now (Pulse_Typing.elab_env g) t1 t2 in
        FStar_Tactics_Effect.tac_bind
          (FStar_Sealed.seal
             (Obj.magic
                (FStar_Range.mk_range "Pulse.Checker.Pure.fst"
                   (Prims.of_int (539)) (Prims.of_int (4))
                   (Prims.of_int (539)) (Prims.of_int (56)))))
          (FStar_Sealed.seal
             (Obj.magic
                (FStar_Range.mk_range "Pulse.Checker.Pure.fst"
                   (Prims.of_int (537)) (Prims.of_int (25))
                   (Prims.of_int (541)) (Prims.of_int (5)))))
          (Obj.magic uu___)
          (fun uu___1 ->
             (fun uu___1 ->
                match uu___1 with
                | (res, issues) ->
                    let uu___2 = FStarC_Tactics_V2_Builtins.log_issues issues in
                    Obj.magic
                      (FStar_Tactics_Effect.tac_bind
                         (FStar_Sealed.seal
                            (Obj.magic
                               (FStar_Range.mk_range "Pulse.Checker.Pure.fst"
                                  (Prims.of_int (540)) (Prims.of_int (2))
                                  (Prims.of_int (540)) (Prims.of_int (21)))))
                         (FStar_Sealed.seal
                            (Obj.magic
                               (FStar_Range.mk_range "Pulse.Checker.Pure.fst"
                                  (Prims.of_int (538)) (Prims.of_int (6))
                                  (Prims.of_int (538)) (Prims.of_int (9)))))
                         (Obj.magic uu___2)
                         (fun uu___3 ->
                            FStar_Tactics_Effect.lift_div_tac
                              (fun uu___4 -> res)))) uu___1)