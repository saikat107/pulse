/* 
  This file was generated by KaRaMeL <https://github.com/FStarLang/karamel>
  KaRaMeL invocation: /home/REDACTED/everest/steel/karamel/krml -ccopt -Ofast -drop FStar.Tactics.\* -drop FStar.Tactics -drop FStar.Reflection.\* -tmpdir out -skip-linking -warn-error @2@4@15 -bundle CBOR.SteelST+CBOR.Spec.Constants+CBOR.SteelST.Type.Base+CBOR.SteelST.Type.Def+CBOR.SteelST.Match+CBOR.SteelST.Type+CBOR.SteelST.Array+CBOR.SteelST.String+CBOR.SteelST.SimpleValue+CBOR.SteelST.Int64+CBOR.SteelST.Tagged+CBOR.SteelST.Map.Base+CBOR.SteelST.Map+CBOR.SteelST.Parse=CBOR.\*,Steel.\*,C,LowStar.\*,LowParse.\*[rename=CBOR] -no-prefix CBOR.* prims.krml FStar_Pervasives_Native.krml FStar_Pervasives.krml FStar_Mul.krml FStar_Squash.krml FStar_Classical.krml FStar_Preorder.krml FStar_Sealed.krml FStar_Range.krml FStar_Calc.krml FStar_StrongExcludedMiddle.krml FStar_Classical_Sugar.krml FStar_List_Tot_Base.krml FStar_List_Tot_Properties.krml FStar_List_Tot.krml FStar_Seq_Base.krml FStar_Seq_Properties.krml FStar_Seq.krml FStar_Math_Lib.krml FStar_Math_Lemmas.krml FStar_BitVector.krml FStar_UInt.krml FStar_UInt32.krml FStar_Int.krml FStar_Int16.krml FStar_UInt64.krml FStar_Ghost.krml FStar_Int64.krml FStar_Int32.krml FStar_Int8.krml FStar_UInt16.krml FStar_UInt8.krml FStar_Int_Cast.krml FStar_SizeT.krml FStar_Universe.krml FStar_Monotonic_Pure.krml FStar_Witnessed_Core.krml FStar_MSTTotal.krml FStar_NMSTTotal.krml FStar_PCM.krml FStar_Float.krml FStar_Char.krml FStar_Pprint.krml FStar_Issue.krml FStar_TypeChecker_Core.krml FStar_Tactics_Common.krml FStar_Reflection_Types.krml FStar_Tactics_Types.krml FStar_Tactics_Result.krml FStar_Sealed_Inhabited.krml FStar_Syntax_Syntax.krml FStar_Reflection_V2_Data.krml FStar_VConfig.krml FStar_Order.krml FStar_Reflection_V2_Builtins.krml FStar_Reflection_Const.krml FStar_Tactics_V2_Builtins.krml FStar_FunctionalExtensionality.krml FStar_Set.krml FStar_IndefiniteDescription.krml FStar_Real.krml Steel_FractionalPermission.krml Steel_Preorder.krml FStar_PropositionalExtensionality.krml FStar_PredicateExtensionality.krml FStar_WellFounded.krml Steel_Heap.krml Steel_Memory.krml FStar_MST.krml FStar_NMST.krml FStar_Reflection_V2_Derived.krml FStar_Reflection_V2_Compare.krml FStar_Reflection_V2_Derived_Lemmas.krml FStar_Reflection_V2.krml FStar_Reflection_V1_Data.krml FStar_Reflection_V1_Builtins.krml FStar_Tactics_V1_Builtins.krml FStar_Reflection_V2_Formula.krml FStar_Reflection_V1_Derived.krml FStar_Reflection_V1_Formula.krml FStar_Reflection_V1_Compare.krml FStar_Reflection_V1_Derived_Lemmas.krml FStar_Reflection_V1.krml Steel_Semantics_Hoare_MST.krml Steel_Semantics_Instantiate.krml FStar_Exn.krml FStar_Monotonic_Witnessed.krml FStar_ErasedLogic.krml FStar_TSet.krml FStar_Monotonic_Heap.krml FStar_Heap.krml FStar_ST.krml FStar_All.krml FStar_List.krml FStar_String.krml FStar_Algebra_CommMonoid_Equiv.krml Steel_Effect_Common.krml Steel_Effect.krml Steel_Effect_Atomic.krml Steel_PCMReference.krml Steel_PCMFrac.krml Steel_HigherReference.krml Steel_Reference.krml Steel_ST_Effect.krml Steel_ST_Effect_AtomicAndGhost.krml Steel_ST_Effect_Atomic.krml Steel_ST_Effect_Ghost.krml Steel_ST_Coercions.krml Steel_ST_Util.krml Steel_ST_Reference.krml FStar_Reflection.krml Steel_ST_GenElim_Base.krml Steel_ST_GenElim.krml Steel_Loops.krml Steel_ST_Loops.krml FStar_Map.krml Steel_PCMMap.krml Steel_ST_PCMReference.krml FStar_PtrdiffT.krml Steel_ST_HigherArray.krml Steel_ST_Array.krml LowParse_SteelST_ArrayPtr.krml LowParse_Bytes.krml LowParse_SteelST_R2LOutput.krml FStar_Algebra_CommMonoid.krml Steel_ST_GenArraySwap_Proof.krml Steel_ST_GenArraySwap.krml LowParse_SteelST_ArrayPtrSwap.krml LowParse_Norm.krml LowParse_Spec_Base.krml LowParse_SteelST_Parse.krml LowParse_SteelST_Swap.krml LowParse_Spec_Sorted.krml LowParse_Math.krml LowParse_Spec_Combinators.krml LowParse_Spec_List.krml FStar_Endianness.krml LowParse_Spec_FLData.krml LowParse_Spec_SeqBytes_Base.krml LowParse_Spec_Seq.krml LowParse_Spec_Int.krml LowParse_Spec_BoundedInt.krml LowParse_Spec_DER.krml LowParse_Spec_BCVLI.krml LowParse_Spec_AllIntegers.krml LowParse_Spec_VLData.krml LowParse_Spec_Array.krml LowParse_Spec_VCList.krml Steel_ST_GhostReference.krml LowParse_CLens.krml LowParse_SteelST_Access.krml LowParse_SteelST_Validate.krml LowParse_SteelST_List_Base.krml LowParse_SteelST_VCList.krml LowParse_SteelST_VCList_Iterator.krml LowParse_SteelST_VCList_Sorted.krml LowParse_Endianness.krml LowParse_Spec_Endianness.krml LowParse_Spec_Endianness_Instances.krml LowParse_SteelST_Endianness.krml LowParse_SteelST_L2ROutput.krml LowParse_SteelST_Write.krml LowParse_SteelST_Int.krml LowParse_Spec_SeqBytes.krml LowParse_SteelST_SeqBytes.krml LowParse_SteelST_ValidateAndRead.krml LowParse_SteelST_Combinators.krml LowParse_BitFields.krml LowParse_Spec_Enum.krml LowParse_Spec_BitSum.krml LowParse_SteelST_BitSum.krml LowParse_WellFounded.krml LowParse_Spec_Fuel.krml LowParse_Spec_Recursive.krml LowParse_SteelST_Recursive_Base.krml LowParse_SteelST_Recursive_Fold.krml LowParse_SteelST_Recursive_Jump.krml LowParse_SteelST_Recursive_Validate.krml LowParse_SteelST_Recursive.krml LowParse_Spec_Assoc.krml LowParse_SteelST_Assoc.krml FStar_Ghost_Pull.krml LowParse_Spec_VLGen.krml LowParse_Spec_IfThenElse.krml LowParse_Spec_Option.krml FStar_Monotonic_HyperHeap.krml FStar_Monotonic_HyperStack.krml FStar_HyperStack.krml FStar_HyperStack_ST.krml FStar_GSet.krml FStar_ModifiesGen.krml FStar_BigOps.krml LowStar_Monotonic_Buffer.krml LowStar_Buffer.krml LowStar_Modifies.krml FStar_Bytes.krml LowParse_Bytes32.krml LowParse_Spec_Bytes.krml LowParse_TacLib.krml LowParse_Spec_Sum.krml LowParse_Spec_Tac_Enum.krml LowParse_Spec_Tac_Sum.krml LowParse_Spec.krml CBOR_Spec_Constants.krml CBOR_Spec_Type.krml CBOR_Spec_Format.krml CBOR_SteelST_Raw_Base.krml CBOR_SteelST_Raw_Validate.krml CBOR_SteelST_Raw_Read.krml CBOR_SteelST_Raw_Write.krml LowParse_SteelST_L2ROutput_IntroElim.krml Steel_ST_OnRange.krml Steel_ST_SeqMatch.krml LowParse_SteelST_SeqMatch.krml LowParse_SteelST_ArrayPtr_IntroElim.krml CBOR_SteelST_Raw_Map.krml CBOR_SteelST_Raw_Array.krml CBOR_SteelST_Raw.krml CBOR_Spec_Map.krml CBOR_Spec.krml CBOR_SteelST_Type_Base.krml CBOR_SteelST_Type_Def.krml CBOR_SteelST_Type.krml CBOR_SteelST_Match.krml CBOR_SteelST_Map_Base.krml CBOR_SteelST_Map_Iterator_Next_Serialized.krml CBOR_SteelST_Map_Iterator_Next_Map.krml CBOR_SteelST_Map_Iterator_Init_Serialized.krml CBOR_SteelST_Map_Iterator_Init_Map.krml CBOR_SteelST_Map.krml Steel_ST_C_Types_Base.krml Steel_ST_C_Types_Scalar.krml Steel_C_Typestring.krml Steel_ST_C_Types_Fields.krml Steel_ST_C_Types_Struct.krml Steel_C_Typenat.krml CBOR_SteelST_Int64.krml CBOR_SteelST_String.krml Steel_ST_C_Types_Array_Base.krml LowParse_SteelST_List_Nth.krml CBOR_SteelST_Array.krml Steel_ST_C_Types_Array.krml CBOR_SteelST_SimpleValue.krml CBOR_SteelST_Tagged.krml CBOR_SteelST_Perm.krml CBOR_SteelST_Parse.krml CBOR_SteelST.krml Steel_ST_C_Types_Union.krml Steel_ST_C_Types.krml
  F* version: a780656d
  KaRaMeL version: 4ad70196
 */

#ifndef __internal_CBOR_H
#define __internal_CBOR_H

#include "krmllib.h"

#include "../CBOR.h"

typedef struct LowParse_SteelST_L2ROutput_t_s
{
  uint8_t **ptr;
  size_t *len;
}
LowParse_SteelST_L2ROutput_t;

size_t cbor_size_comp(cbor c, size_t sz, bool *perr);

uint8_t *cbor_l2r_write(cbor c, LowParse_SteelST_L2ROutput_t out);

cbor read_valid_cbor_from_buffer_with_size_strong(uint8_t *a, size_t alen);

cbor_serialized destr_cbor_serialized(cbor c);

size_t size_comp_for_serialized(cbor c, size_t sz, bool *perr);

uint8_t *l2r_writer_for_serialized(cbor c, LowParse_SteelST_L2ROutput_t out);

cbor_array cbor_destr_array(cbor a);

size_t size_comp_for_string(cbor c, size_t sz, bool *perr);

uint8_t *l2r_write_cbor_string(cbor c, LowParse_SteelST_L2ROutput_t out);

size_t size_comp_for_simple_value(cbor c, size_t sz, bool *perr);

uint8_t *l2r_writer_for_simple_value(cbor c, LowParse_SteelST_L2ROutput_t out);

size_t size_comp_for_int64(cbor c, size_t sz, bool *perr);

uint8_t *l2r_writer_for_int64(cbor c, LowParse_SteelST_L2ROutput_t out);

cbor_map destr_cbor_map(cbor a);


#define __internal_CBOR_H_DEFINED
#endif
