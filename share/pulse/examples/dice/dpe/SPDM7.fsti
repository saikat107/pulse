module SPDM7

open Pulse.Lib.Pervasives
open PulseCore.Preorder

module G = FStar.Ghost

module U16 = FStar.UInt16
module U32 = FStar.UInt32
module U8 = FStar.UInt8

module V = Pulse.Lib.Vec
module FP = Pulse.Lib.PCM.FractionalPreorder
module L = FStar.List.Tot
module E = FStar.Endianness
module O = Pulse.Lib.OnRange
module R = Pulse.Lib.Reference


type u8 = FStar.UInt8.t
type u16 = FStar.UInt16.t
type u32 = FStar.UInt32.t

type u8_v = FStar.UInt8.v
type u16_v = FStar.UInt16.v
type u32_v = FStar.UInt32.v

open FStar.Mul

[@@CMacro]
let spdm_req_context_size = 8

//TODO this should not be hard coded. Based on the base asymmetric algorithm, the signature size should be selected.
[@@CMacro]
let signature_size = 256

//
// TODO: A configurable parameter that initializes the state machine without signature and transcript and key.
//

//
// Setu
// We will call a (possible empty) sequence of no_sign_resp messages, followed by a
//   sign_resp_message as a session
//

//
// Concrete state
// Only maintains the current session transcript
// This is the memory state associated with a state of the state machine. A state of the state machine takes
// the current memory state and returns a state of the state machine.
//

(*#define LIBSPDM_MAX_MESSAGE_M_BUFFER_SIZE (63 + SPDM_NONCE_SIZE + \
                                           LIBSPDM_MAX_MEASUREMENT_RECORD_SIZE + \
                                           LIBSPDM_MAX_ASYM_KEY_SIZE + SPDM_MAX_OPAQUE_DATA_SIZE)*)

let spdm_nonce_size = 32

let max_measurement_record_size = 0x1000

let max_asym_key_size = (48 * 2)

let max_opaque_data_size = 1024

let max_transcript_message_buffer_size = 
  63 + spdm_nonce_size  +  max_measurement_record_size  + max_asym_key_size + max_opaque_data_size

let max_transcript_message_buffer_size_u32 = U32.uint_to_t max_transcript_message_buffer_size

type g_transcript = Ghost.erased (Seq.seq u8)

// Ghost repr
//

(*When a new req and resp comes,
  the transcript is maintained as a hash always
  1. Req message hashed with hash of transcript ---> new hash
  2. new hash hashed with resp ---> new hash'
  3. new hash' final transcript*)

(*libspdm_hash_update (spdm_context->connection_info.algorithm.base_hash_algo,
                                          spdm_context->transcript.digest_context_l1l2, message,
                                          message_size);*)

let hash_size = 256

let hash_algo = 256ul

let all_zeros_hash_transcript (t:g_transcript) : prop =
    (forall i. i < Seq.length t ==> Seq.index t i == 0uy)

let hash_seq (algo:u32)

         (ts_digest: Seq.seq u8{Seq.length ts_digest == hash_size})
         (msg_size: u32{u32_v msg_size > 0})
         (msg: Seq.seq u8{Seq.length msg == u32_v msg_size})
  : (t:(G.erased (Seq.seq u8)){Seq.length t== hash_size /\
                  ~(all_zeros_hash_transcript t)})  = admit()
        


val hash (hash_algo: u32)
         (ts_digest: V.vec u8{V.length ts_digest == hash_size})
         (msg_size: u32{u32_v msg_size > 0})
         (msg: V.vec u8{V.length msg == u32_v msg_size})
         (#ts_seq: (G.erased (Seq.seq u8)){Seq.length ts_seq == hash_size})
         (#msg_seq: (G.erased (Seq.seq u8)){Seq.length msg_seq == u32_v msg_size})
         (#p_msg:perm)

     : stt unit
    (requires V.pts_to ts_digest ts_seq **
              V.pts_to msg #p_msg msg_seq)
    (ensures fun _ -> (exists* new_ts_seq. V.pts_to ts_digest new_ts_seq **
                                           V.pts_to msg #p_msg msg_seq **
                                           pure (Seq.equal new_ts_seq (hash_seq hash_algo ts_seq msg_size msg_seq))))

let hash_of (hash_algo: u32)
            (s0:Seq.seq u8{Seq.length s0 == hash_size })
            (req_size:u32{u32_v req_size > 0})
            (req:Seq.seq u8{Seq.length req == u32_v req_size})
            (resp_size:u32{u32_v resp_size > 0})
            (resp:Seq.seq u8{Seq.length resp == u32_v resp_size})
            (s1:Seq.seq u8{Seq.length s1 == hash_size})
                  : prop =
 Seq.equal s1 (hash_seq hash_algo (hash_seq hash_algo s0 req_size req) resp_size resp)




[@@ erasable]
noeq
type repr = {
  key_size_repr : u32;
  signing_pub_key_repr : Seq.seq u8;
  transcript : g:g_transcript{Seq.length g == hash_size};
}

//let g_transcript_non_empty (t:g_transcript) : prop =
  //Seq.length t > 0

//let g_transcript_empty (t:g_transcript) : prop =
  //Seq.length t == 0

(*let g_sign_non_empty (s:Seq.seq u8) : prop =
  Seq.length s > 0

let g_sign_empty (s:Seq.seq u8) : prop =
  Seq.length s == 0*)

//let is_initialized_transcript (t:g_transcript) : prop =
  //Seq.equal t Seq.empty

//let is_initialized_sign (s:Seq.seq u8) : prop =
  //Seq.equal s Seq.empty

//
// Corresponding ghost states
//
[@@ erasable]
noeq
type g_state : Type u#1 =
  | G_UnInitialized : g_state
  | G_Initialized :  repr:repr{all_zeros_hash_transcript repr.transcript} -> g_state
  | G_Recv_no_sign_resp : repr:repr{~(all_zeros_hash_transcript repr.transcript)} ->  g_state
  | G_Recv_sign_resp : repr:repr{~(all_zeros_hash_transcript repr.transcript)} -> g_state

(*let is_prefix_of (#a:Type) (s0 s1:Seq.seq a) : prop =
  Seq.length s0 < Seq.length s1 /\
  s0 == Seq.slice s1 0 (Seq.length s0)*)

//
// The transition function
// sign data is associated with G_Recv_sign_resp _ only. Therefore, sign data has no connection between different states.
// Therefore, sign data is not stated in the next relation.
//

let next (s0 s1:g_state) : prop =
  match s0, s1 with
  //Uninit ---> initial (upon init call)
  | G_UnInitialized, G_Initialized _ -> True

  //initial ---> no_sign (upon no_sign call)
  | G_Initialized k , G_Recv_no_sign_resp r
  // initial ---> sign (upon sign call)
  | G_Initialized k, G_Recv_sign_resp r ->
    k.signing_pub_key_repr == r.signing_pub_key_repr /\
    k.key_size_repr == r.key_size_repr


  // no_sign --> no_sign (upon no_sign call)
  | G_Recv_no_sign_resp r0,  G_Recv_no_sign_resp r1
  //no_sign ---> sign (upon sign call)
  | G_Recv_no_sign_resp r0, G_Recv_sign_resp r1  ->
    r0.signing_pub_key_repr == r1.signing_pub_key_repr /\
    r0.key_size_repr = r1.key_size_repr /\
    (*is_prefix_of r0.transcript r1.transcript*)
    (exists req_size req resp_size resp hash_algo. 
         hash_of hash_algo r0.transcript req_size req resp_size resp r1.transcript)
        
  //sign ---> initial (no call is needed)
  | G_Recv_sign_resp r, G_Initialized k
  //no_sign --> initial (upon reset call)
  | G_Recv_no_sign_resp r, G_Initialized k ->
    r.signing_pub_key_repr == k.signing_pub_key_repr /\
    r.key_size_repr == k.key_size_repr 

  | _ -> False


//
// Until gref, this is setting up the trace PCM
//
noextract
let rec well_formed_trace (l:list g_state) : prop =
  match l with
  | []
  | [G_Initialized _] -> True
  | s1::s0::tl -> next s0 s1 /\ well_formed_trace (s0::tl)
  | _ -> False

noextract
type trace_elt : Type u#1 = l:list g_state { well_formed_trace l }

noextract
let trace_extension (t0 t1:trace_elt) : prop =
  Cons? t1 /\ t0 == List.Tot.tail t1

noextract
let trace_preorder : FStar.Preorder.preorder trace_elt =
  FStar.ReflexiveTransitiveClosure.closure trace_extension

noextract
type trace = hist trace_preorder

noextract
type trace_pcm_t : Type u#1 = FP.pcm_carrier trace_preorder

noextract
let trace_pcm : FStar.PCM.pcm trace_pcm_t = FP.fp_pcm trace_preorder

noextract
type pcm_t : Type u#1 = trace_pcm_t

noextract
type gref = ghost_pcm_ref trace_pcm

let pcm_elt (p:perm) (t:trace) : pcm_t = Some p, t

noextract
let current_state (t:trace) : g_state =
  match t with
  | [] -> G_UnInitialized
  | hd::_ ->
    match hd with
    | [] -> G_UnInitialized
    | s::_ -> s

noextract
let previous_current_state (t:trace) : g_state =
  match t with
  | []
  | []::_
  | [_]::_ -> G_UnInitialized 
  | (_::t::_)::_ -> t


noextract
let valid_transition (t:trace) (s:g_state) : prop =
  next (current_state t) s

noextract
let next_trace (t:trace) (s:g_state { valid_transition t s }) : trace =
  match t with
  | [] -> [[s]]
  | hd::tl ->
    match hd with
    | [] -> [s]::t
    | l -> (s::l)::t //t == l::tl

//previous_trace should remove the current_state from trace. Current state is the head of the head of the trace.
//head of the trace is list g_state. So head of the head of the trace is g_state
noextract
let previous_trace (t:trace): trace =
  match t with
  | [] -> []
  | hd::tl -> tl
    // match hd with
    // | [] -> tl
    // | l -> admit()

noextract
let emp_trace : trace = []

noextract
let emp_trace_pcm  (p:perm) (t:trace) : GTot pcm_t =
   (None, emp_trace)

//
// A frame preserving update in the trace PCM,
//   given a valid transition
//
noextract
let mk_frame_preserving_upd
  (t:trace)
  (s:g_state { valid_transition t s})
  : FStar.PCM.frame_preserving_upd trace_pcm (Some 1.0R, t) (Some 1.0R, next_trace t s) =
  fun _ -> Some 1.0R, next_trace t s


//The vector append or vector reallocation issues can be resolved if we can keep the transcript as a hash
//The req message should be hashed with the digset context
//The resp message - signature field should be hashed with the digest context
//session_transcript is a fixed length buffer to hold the hash
//The length of the session_trasncript is determined by the hash algorithm.

noeq
type st = {
  key_size : u32;
  signing_pub_key : v:V.vec u8 { V.length v == U32.v key_size };
  session_transcript : v:V.vec u8{V.is_full_vec v /\ V.length v == hash_size};
  g_trace_ref:gref
}

//
// States of the state machine
//
noeq
type state =
  | Initialized : st -> state
  | Recv_no_sign_resp : st -> state



// noextract
// let singleton (p:perm) (t:trace) : GTot pcm_t =
//   Map.upd (Map.const (None, emp_trace)) (Some p, t)

let session_state_related (s:state) (gs:g_state) : slprop =
  match s, gs with
  | Initialized st, G_Initialized repr ->
    V.pts_to st.signing_pub_key repr.signing_pub_key_repr **
    V.pts_to st.session_transcript repr.transcript **
    pure (st.key_size == repr.key_size_repr)

  | Recv_no_sign_resp st, G_Recv_no_sign_resp repr ->
    V.pts_to st.signing_pub_key repr.signing_pub_key_repr **
    V.pts_to st.session_transcript repr.transcript **
    pure (st.key_size == repr.key_size_repr)

  | _ -> pure False

//
// The main invariant
// The session_state_related connects the concrete state with the current ghost state of the trace.
// r is the trace pointer with permission
//

//r is the ghost ptr to trace t with full permission.
// state s and current state of trace t are session_state_related.

let spdm_inv (s:state) (r:gref) (t:trace) : slprop =
  ghost_pcm_pts_to r (Some 1.0R, t) **
  session_state_related s (current_state t)

//trace_ref should create a gref and return it.
//val trace_ref : gref

(*let has_transcript (s:g_state) :prop =
  G_Recv_no_sign_resp? s \/ G_Recv_sign_resp? s \/ G_Initialized?s*)

let has_full_state_info (s:g_state) :prop =
  G_Recv_no_sign_resp? s \/ G_Recv_sign_resp? s \/ G_Initialized?s

let g_transcript_of_gst (s:g_state {has_full_state_info s})
  : GTot g_transcript =
  match s with
  | G_Initialized r
  | G_Recv_no_sign_resp r
  | G_Recv_sign_resp r -> r.transcript

let g_key_of_gst (s:g_state {has_full_state_info s})
  : GTot (Seq.seq u8) =
  match s with
  | G_Initialized r
  | G_Recv_no_sign_resp r
  | G_Recv_sign_resp r -> r.signing_pub_key_repr

let g_key_len_of_gst (s:g_state {has_full_state_info s})
  : GTot u32 =
  match s with
  | G_Initialized r
  | G_Recv_no_sign_resp r
  | G_Recv_sign_resp r -> r.key_size_repr

let current_transcript (t:trace {has_full_state_info (current_state t) }) : GTot g_transcript =
  g_transcript_of_gst (current_state t)

let current_key (t:trace { has_full_state_info (current_state t) }) : GTot (Ghost.erased(Seq.seq u8)) =
  g_key_of_gst (current_state t)

let current_key_size (t:trace { has_full_state_info (current_state t) }) : GTot (Ghost.erased u32) =
  g_key_len_of_gst (current_state t)

(*let init_client_perm (s:state) (b:Seq.seq u8) (key_len:u32): slprop =
  exists* (t:trace). spdm_inv s trace_ref t ** 
                                   pure (G_Initialized? (current_state t) /\
                                        g_key_of_gst (current_state t) == b /\
                                        g_key_len_of_gst (current_state t) == key_len
                                        )*)

let get_state_data (c:state) : st =
 match c with
 | Initialized s -> s
 |Recv_no_sign_resp s -> s

let init_inv (key_len:u32) (b:Seq.seq u8) (s:state) : slprop =
  exists* (t:trace).
    spdm_inv s (get_state_data s).g_trace_ref t ** 
    pure (G_Initialized? (current_state t) /\
          g_key_of_gst (current_state t) == b /\
          g_key_len_of_gst (current_state t) == key_len)

 val init0 (key_size:u32) (signing_pub_key:V.vec u8 { V.length signing_pub_key == U32.v key_size }) (#s:Seq.seq u8)
   : stt (state)
    (requires V.pts_to signing_pub_key s)
    (ensures fun res -> init_inv key_size s res)

//
// TODO: think about how you want to state this relation. Because state will be abstract to the client
// If the state info details are abstracted behind init_client_perm, will that be sufficient?
//
(*val init (key_len:u32) (signing_key:V.vec u8 { V.length signing_key == U32.v key_len })
  : stt state (requires exists* p b. V.pts_to signing_key #p b)
              (ensures fun s -> exists* p b. V.pts_to signing_key #p b ** 
                                        init_client_perm s b key_len
                                       )*)

//
// TODO: add DMTF and other structure in it - Added
//

noeq
type parser_context = {
  req_param1 : u8;
  req_param2 : u8;
  resp_size : u32;
  req_context : s:Seq.seq u8{Seq.length s == 8};
  resp : v:V.vec u8 { V.length v == u32_v resp_size};
  m_spec : u8
}

let measurement_size_select (measurement_specification:u8) (measurement_size:u16) (dmtf_spec_measurement_value_size:u16)
        : u16 =
  let last_bit_m = U8.logand measurement_specification 1uy in
  if (u8_v last_bit_m = 1) then
    dmtf_spec_measurement_value_size
  else
    measurement_size

noeq
type spdm_measurement_block_t  = {
  index : u8 ;
  measurement_specification : u8;
  measurement_size : u16;
  dmtf_spec_measurement_value_type : u8;
  dmtf_spec_measurement_value_size : u16;
  measurement : v:V.vec u8{V.length v == 
                                u16_v(measurement_size_select measurement_specification 
                                                                      measurement_size 
                                                                      dmtf_spec_measurement_value_size) }
}

let index_req_param2_relation (i:u8) (r:u8) : prop =
  if (u8_v r = 0x1 || u8_v r = 0xFE) then
   (i == r)
  else
   True

type measurement_block_repr (ctx:parser_context) = {
  index : i:u8 {index_req_param2_relation i ctx.req_param2};
  measurement_specification : m:u8{m == ctx.m_spec} ;
  measurement_size : u16;
  dmtf_spec_measurement_value_type : u8;
  dmtf_spec_measurement_value_size : u16;
  measurement : s:Seq.seq u8{Seq.length s == 
                                u16_v(measurement_size_select measurement_specification 
                                                                      measurement_size 
                                                                      dmtf_spec_measurement_value_size) }
}

let measurement_block_repr_related (ctx:parser_context) 
                                   (s:spdm_measurement_block_t) 
                                   (r:measurement_block_repr ctx) : slprop =
 V.pts_to s.measurement r.measurement

let read_measurement_record_length_seq (l:Seq.seq u8{Seq.length l == 3})
      : (u32) =  // TODO: this is a spec only function, why don't return just nat here
  let index0 = Seq.index l 0 in
  let index1 = Seq.index l 1 in
  let index2 = Seq.index l 2 in
  let index_0_nat = u8_v index0 in
  let index_1_nat = u8_v index1 in
  let index_2_nat = u8_v index2 in
  let index_0_uint32 = U32.uint_to_t index_0_nat in
  let index_1_uint32 = U32.uint_to_t index_1_nat in
  let index_2_uint32 = U32.uint_to_t index_2_nat in
  
  let l2 = U32.shift_left index_2_uint32 16ul in
  let l1 = U32.shift_left index_2_uint32 8ul in
  let length = U32.logor (U32.logor index_0_uint32 l1) l2 in
  length

let num_blocks_param2_relation (n:u8) (r:u8): u8 =
  if r = 0uy then 0uy else n

let measurement_record_length_param2_relation (l:u32) (r:u8): u32 =
  if r = 0uy then 0ul else l

let signature_length_param1_relation (l:nat) (r:u8): nat =
  if r = 0uy then 0 else l

noeq
type resp_repr (ctx:parser_context) = {
  spdm_version : u8;
  request_response_code : r:u8{u8_v r == 0x60};
  param1 : u8;
  param2 : u8;//TODO param2 relation to be added
  number_of_blocks : n:u8{n == num_blocks_param2_relation n ctx.req_param2}; 
  measurement_record_length: m:Seq.seq u8{Seq.length m == 3 /\
                                          read_measurement_record_length_seq m == 
                                          measurement_record_length_param2_relation (read_measurement_record_length_seq m) ctx.req_param2}; 
  measurement_record : v:Seq.seq (measurement_block_repr ctx)
                       {Seq.length v == u32_v (read_measurement_record_length_seq measurement_record_length)};
  nonce: n:Seq.seq u8 {Seq.length n == 32};
  opaque_data_length : o:u16{u16_v o <= 1024}; 
  opaque_data : o:Seq.seq u8 { Seq.length o == u16_v opaque_data_length};
  requester_context : r:Seq.seq u8 { Seq.length r == spdm_req_context_size /\ r == ctx.req_context};
  signature : s:Seq.seq u8 {Seq.length s == signature_size /\
                            Seq.length s == signature_length_param1_relation (Seq.length s) ctx.req_param1}  // TODO: relation to param1
}

val b_resp_resp_repr_relation (ctx:parser_context)
                              (r:resp_repr ctx) 
                              (s:Seq.seq u8) : prop
  

//
// Related to parser
//
let valid_resp (ctx:parser_context)
               (repr:resp_repr ctx)  : slprop =
 exists* p_resp b_resp.
   V.pts_to ctx.resp #p_resp b_resp **
   pure (b_resp_resp_repr_relation ctx repr b_resp) 

type result =
  | Success
  | Parse_error
  //| Signature_verification_error

//
//Measurement block structure
//

let res_err_no_measurement (count:u8) (status:result) =
  match status with
  | Success -> true
  | Parse_error -> u8_v count = 0
  //| Signature_verification_error -> u8_v count = 0

//
//result structure
//
noeq
type spdm_measurement_result_t  = {
  measurement_block_count : u8;
  measurement_block_vector : v:V.vec spdm_measurement_block_t {
    V.length v == u8_v measurement_block_count
  };
  sign: s:V.vec u8{V.length s == signature_size};
  status : r:result{res_err_no_measurement measurement_block_count r}
}

noeq
type spdm_measurement_result_repr = {
  measurement_block_count : u8;
  measurement_block_seq : v:Seq.seq spdm_measurement_block_t {
    Seq.length v == u8_v measurement_block_count
  };
  sign_repr: s:Seq.seq u8{Seq.length s == signature_size};
  status : r:result{res_err_no_measurement measurement_block_count r}

}

let spdm_measurement_result_related (s:spdm_measurement_result_t) 
                                    (r:spdm_measurement_result_repr) : slprop =
  V.pts_to s.sign r.sign_repr


let valid_measurement_block_repr (ctx:parser_context)
                                 (blk:spdm_measurement_block_t) 
                                 (repr:measurement_block_repr ctx) : slprop =
  measurement_block_repr_related ctx blk repr **
  pure (blk.index ==  repr.index /\
        blk. measurement_specification == repr.measurement_specification /\
        blk.dmtf_spec_measurement_value_type == repr.dmtf_spec_measurement_value_type /\
        blk.dmtf_spec_measurement_value_size == repr.dmtf_spec_measurement_value_size)

module SZ = FStar.SizeT

let aux (ctx:parser_context)
        (blk:Seq.seq spdm_measurement_block_t) 
        (repr:Seq.seq (measurement_block_repr ctx))
        (i:nat)  : slprop =
 if (i < Seq.length blk && i < Seq.length repr) then
   valid_measurement_block_repr ctx (Seq.index blk i) (Seq.index repr i)
 else
  emp

let valid_measurement_blocks (ctx:parser_context)
                             (blks:V.vec spdm_measurement_block_t) 
                             (repr:Seq.seq (measurement_block_repr ctx))
                      : slprop =
  pure(V.length blks == Seq.length repr) **
  (exists* s. V.pts_to blks s **
  (O.on_range (aux ctx s repr) 0 (V.length blks))) 


module C = Pulse.Lib.Core 
//
//Signature for parser
//

let valid_resp0 (ctx:parser_context)
                (repr:resp_repr ctx)  : slprop =
 exists* p_resp b_resp.
   V.pts_to ctx.resp #p_resp b_resp **
   pure (b_resp_resp_repr_relation ctx repr b_resp) 

let parser_post (ctx:parser_context) (res:spdm_measurement_result_t)
                 (#b_resp: G.erased (Seq.seq u8)) =
  match res.status with
  | Parse_error -> pure True
  | Success ->
    exists* resp_repr. valid_resp0 ctx resp_repr **
                       valid_measurement_blocks ctx res.measurement_block_vector resp_repr.measurement_record

let parser_success_post (ctx:parser_context) (res:spdm_measurement_result_t)
                       (is_sign_resp:bool) =
   if is_sign_resp then 
    (
      exists* resp_repr. valid_resp0 ctx resp_repr **
              valid_measurement_blocks ctx 
              res.measurement_block_vector 
              resp_repr.measurement_record **
              V.pts_to res.sign resp_repr.signature **
              pure (V.length res.sign == signature_size /\
                     V.length res.sign <> 0) 
                                                           
    )
    else
    (
      exists* resp_repr. valid_resp0 ctx resp_repr **
                         valid_measurement_blocks ctx (res.measurement_block_vector) (resp_repr.measurement_record)
    )

let parser_parse_error_post (ctx:parser_context) (res:spdm_measurement_result_t)
                       (is_sign_resp:bool) =
   if is_sign_resp then 
    (
      exists* s_sign. 
              V.pts_to res.sign s_sign **
              pure (V.length res.sign == signature_size /\
                     V.length res.sign <> 0) 
                                                           
    )
    else
    (
      pure True
    )

let parser_post1 (ctx:parser_context) (res:spdm_measurement_result_t)
                 (is_sign_resp:bool) =
  match res.status with
  | Parse_error -> pure True//parser_parse_error_post ctx res is_sign_resp
  
  | Success ->     parser_success_post ctx res is_sign_resp                 
                               


val valid_resp_bytes  (ctx:parser_context)
                      (b:Seq.seq u8) 
                      (r:resp_repr ctx) : slprop

val parser 
(ctx:parser_context)
(#p:perm)
(#b_resp: G.erased (Seq.seq u8))
(with_sign:bool)
  : stt (spdm_measurement_result_t)
    (requires V.pts_to ctx.resp #p b_resp)
    (ensures fun res -> V.pts_to ctx.resp #p b_resp **
                        parser_post1 ctx res with_sign)

//
//Signature of get_measurement_blocks_without_signature
//
(*let g_transcript_current_session_grows (t0 t1:g_transcript) : prop =
  is_prefix_of t0 t1 

let g_append (t0:g_transcript) (s:Seq.seq u8) : g_transcript =
 Seq.append t0 s

let g_slice (t0:g_transcript) (s:Seq.seq u8) : (G.erased (Seq.seq u8)) = 
  Seq.slice (g_append t0 s) 0 (Seq.length t0)
   

let slice_append (s1: Seq.seq u8) (s2: Seq.seq u8) 
     : Lemma
       (ensures s1 == Seq.slice (Seq.append s1 s2) 0 (Seq.length s1)) =
  assert (Seq.length s1 == Seq.length (Seq.slice (Seq.append s1 s2) 0 (Seq.length s1)));
  assume (forall i. i < Seq.length s1 ==> 
            Seq.index s1 i == Seq.index (Seq.slice (Seq.append s1 s2) 0 (Seq.length s1)) i);
  admit()

let g_append_lemma (t0:g_transcript) (s:Seq.seq u8)
      : Lemma
        (ensures t0 == g_slice t0 s) =
  slice_append t0 s;
  ()

let g_transcript_current_session_grows_by (t0 t1:g_transcript) (s:Seq.seq u8) : prop =
   t1 == g_append t0 s
  
let g_seq_empty : g_transcript =
 Seq.empty

*)