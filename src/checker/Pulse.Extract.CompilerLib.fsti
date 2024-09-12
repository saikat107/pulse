(*
   Copyright 2023 Microsoft Research

   Licensed under the Apache License, Version 2.0 (the "License");
   you may not use this file except in compliance with the License.
   You may obtain a copy of the License at

       http://www.apache.org/licenses/LICENSE-2.0

   Unless required by applicable law or agreed to in writing, software
   distributed under the License is distributed on an "AS IS" BASIS,
   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
   See the License for the specific language governing permissions and
   limitations under the License.
*)

module Pulse.Extract.CompilerLib

module R = FStar.Reflection.V2

val const : Type0
type term = R.term
val binder : Type0
val unit_tm : term
val unit_ty : term
val binder_qualifier : Type0
val implicit_qual : binder_qualifier
val mk_binder (sort:term) (ppname:string) (q:option binder_qualifier) (attrs:list term)
  : Dv binder
val mk_abs (b:binder) (body:term) : Dv term
val mk_return (t:term) : Dv term
val mk_meta_monadic : term -> Dv term
val mk_let (b:binder) (head body:term) : Dv term
val mk_if (b then_ else_:term) : Dv term
val mk_const (c:R.vconst) : Dv const

val mk_extracted_as_attr (impl: term) : Dv term
