
#ifndef INSTR_HPP
#define INSTR_HPP

#include <cstring>
#include <ostream>
#include <stdexcept>

#include "vm/defs.hpp"
#include "vm/program.hpp"

namespace vm {

typedef const unsigned char instr_val;
typedef unsigned char reg_num;

namespace instr {

const size_t field_size = 2;
const size_t iter_match_size = 2;
const size_t int_size = sizeof(int_val);
const size_t float_size = sizeof(float_val);
const size_t addr_size = sizeof(addr_val);

const size_t SEND_BASE = 4;
const size_t OP_BASE = 5;
const size_t MOVE_BASE = 3;
const size_t ITER_BASE = 4;
const size_t ALLOC_BASE = 3;
const size_t CALL_BASE = 3;
const size_t IF_BASE = 4;
const size_t MOVE_NIL_BASE = 2;
const size_t TEST_NIL_BASE = 3;
const size_t CONS_BASE = 5;
const size_t HEAD_BASE = 4;
const size_t TAIL_BASE = 4;
const size_t NOT_BASE = 3;
const size_t RETURN_BASE = 1;
const size_t NEXT_BASE = 1;

enum instr_type {
   RETURN_INSTR	=  0x00,
   NEXT_INSTR		=  0x01,
   ELSE_INSTR 		=  0x02,
   TEST_NIL_INSTR	=  0x03,
   CONS_INSTR		=  0x04,
   HEAD_INSTR		=  0x05,
   TAIL_INSTR		=  0x06,
   NOT_INSTR		=  0x07,
   SEND_INSTR 		=  0x08,
   CALL_INSTR		=  0x20,
   MOVE_INSTR		=  0x30,
   ALLOC_INSTR		=  0x40,
   IF_INSTR 		=  0x60,
   MOVE_NIL_INSTR	=  0x70,
   REMOVE_INSTR 	=  0x80,
   ITER_INSTR		=  0xa0,
   OP_INSTR			=  0xc0
};

enum instr_op {
   OP_NEQF       = 0x0,
   OP_NEQI       = 0x1,
   OP_EQF        = 0x2,
   OP_EQI        = 0x3,
   OP_LESSF      = 0x4,
   OP_LESSI      = 0x5,
   OP_LESSEQF    = 0x6,
   OP_LESSEQI    = 0x7,
   OP_GREATERF   = 0x8,
   OP_GREATERI   = 0x9,
   OP_GREATEREQF = 0xa,
   OP_GREATEREQI = 0xb,
   OP_MODF       = 0xc,
   OP_MODI       = 0xd,
   OP_PLUSF      = 0xe,
   OP_PLUSI      = 0xf,
   OP_MINUSF     = 0x10,
   OP_MINUSI     = 0x11,
   OP_TIMESF     = 0x12,
   OP_TIMESI     = 0x13,
   OP_DIVF       = 0x14,
   OP_DIVI       = 0x15,
   OP_NEQA       = 0x16,
   OP_EQA        = 0x17,
   OP_EQLINT	  = 0x18
};

std::string op_string(const instr_op op);

class malformed_instr_error : public std::runtime_error {
 public:
    explicit malformed_instr_error(const std::string& msg) :
         std::runtime_error(msg)
    {}
};

inline instr_type fetch(pcounter pc) { return (instr_type)*pc; }

/* val related functions */

inline bool val_is_reg(const instr_val x) { return x & 0x20; }
inline bool val_is_tuple(const instr_val x) { return x == 0x1f; }
inline bool val_is_float(const instr_val x) { return x == 0x00; }
inline bool val_is_int(const instr_val x) { return x == 0x01; }
inline bool val_is_field(const instr_val x) { return x == 0x02; }
inline bool val_is_host(const instr_val x) { return x == 0x03; }
inline bool val_is_nil(const instr_val x) { return x == 0x04; }
inline bool val_is_addr(const instr_val x) { return x == 0x05; }

inline reg_num val_reg(const instr_val x) { return x & 0x1f; }
inline field_num val_field_num(const pcounter x) { return *x & 0xff; }
inline reg_num val_field_reg(const pcounter x) { return *(x + 1) & 0x1f; }

inline int_val pcounter_int(pcounter pc) { return *(int_val *)pc; }
inline float_val pcounter_float(pcounter pc) { return *(float_val *)pc; }
inline addr_val pcounter_addr(pcounter pc) { return *(addr_val *)pc; }

inline void pcounter_move_field(pcounter *pc) { *pc = *pc + field_size; }
inline void pcounter_move_int(pcounter *pc) { *pc = *pc + int_size; }
inline void pcounter_move_float(pcounter *pc) { *pc = *pc + float_size; }
inline void pcounter_move_match(pcounter *pc) { *pc = *pc + iter_match_size; }
inline void pcounter_move_addr(pcounter *pc) { *pc = *pc + addr_size; }

/* common instruction functions */

inline size_t jump_get(pcounter x, size_t off) { return (size_t)*(unsigned short*)(x + off); }

inline reg_num reg_get(pcounter x, size_t off) { return (reg_num)(*(x + off) & 0x1f); }
inline instr_val val_get(pcounter x, size_t off) { return (instr_val)(*(x + off) & 0x3f); }
inline predicate_id predicate_get(pcounter x, size_t off) { return (predicate_id)(*(x + off) & 0x7f); }

/* IF reg THEN ... ENDIF */

inline reg_num if_reg(pcounter pc) { return reg_get(pc, 1); }
inline size_t if_jump(pcounter pc) { return jump_get(pc, 2); }

/* SEND a TO B */

inline reg_num send_msg(pcounter pc) { return reg_get(pc, 1); }
inline reg_num send_dest(pcounter pc) { return reg_get(pc, 2); }
inline instr_val send_delay(pcounter pc) { return val_get(pc, 3); }

/* OP a op b TO c */

inline instr_val op_arg1(pcounter pc) { return val_get(pc, 1); }
inline instr_val op_arg2(pcounter pc) { return val_get(pc, 2); }
inline instr_val op_dest(pcounter pc) { return val_get(pc, 3); }
inline instr_op op_op(pcounter pc) { return (instr_op)(*(pc + 4) & 0x1f); }

/* MOVE a TO b */

inline instr_val move_from(pcounter pc) { return val_get(pc, 1); }
inline instr_val move_to(pcounter pc) { return val_get(pc, 2); }

/* ITERATE pred MATCHING */

typedef pcounter iter_match;

inline predicate_id iter_predicate(pcounter pc) { return predicate_get(pc, 1); }
inline size_t iter_jump(pcounter pc) { return (size_t)jump_get(pc, 2); }
inline bool iter_match_end(iter_match m) { return (*(m + 1) & 0xc0) == 0x40; }
inline bool iter_match_none(iter_match m) { return (*(m + 1) & 0xc0) == 0xc0; }
inline instr_val iter_match_val(iter_match m) { return val_get((pcounter)m, 1); }
inline field_num iter_match_field(iter_match m) { return (field_num)*m; }

/* ALLOC pred to reg */

inline predicate_id alloc_predicate(pcounter pc) { return predicate_get(pc, 1); }
inline instr_val alloc_dest(pcounter pc) { return val_get(pc, 2); }

/* CALL */

typedef size_t call_id;

inline instr_val call_val(pcounter pc) { return val_get(pc, 0); }
inline call_id call_extern_id(pcounter pc) { (void)pc; return 0; }
inline reg_num call_dest(pcounter pc) { return reg_get(pc, 2); }
inline size_t call_num_args(pcounter pc) { (void)pc; return 0; }

/* MOVE-NIL TO dst */

inline instr_val move_nil_dest(pcounter pc) { return val_get(pc, 1); }

/* TEST-NIL a TO b */

inline instr_val test_nil_op(pcounter pc) { return val_get(pc, 1); }
inline instr_val test_nil_dest(pcounter pc) { return val_get(pc, 2); }

/* CONS (a :: b) TO c */

inline field_type get_list_type(pcounter pc, size_t off) {
   switch(*(pc + off)) {
      case 0: return FIELD_LIST_INT;
      case 1: return FIELD_LIST_FLOAT;
      case 2: return FIELD_LIST_ADDR;
   }
   return FIELD_LIST_INT;
}

inline field_type cons_type(pcounter pc) { return get_list_type(pc, 1); }
inline instr_val cons_head(pcounter pc) { return val_get(pc, 2); }
inline instr_val cons_tail(pcounter pc) { return val_get(pc, 3); }
inline instr_val cons_dest(pcounter pc) { return val_get(pc, 4); }

/* HEAD list TO a */

inline field_type head_type(pcounter pc) { return get_list_type(pc, 1); }
inline instr_val head_cons(pcounter pc) { return val_get(pc, 2); }
inline instr_val head_dest(pcounter pc) { return val_get(pc, 3); }

/* TAIL list TO a */

inline field_type tail_type(pcounter pc) { return get_list_type(pc, 1); }
inline instr_val tail_cons(pcounter pc) { return val_get(pc, 2); }
inline instr_val tail_dest(pcounter pc) { return val_get(pc, 3); }

/* NOT a TO b */

inline instr_val not_op(pcounter pc) { return val_get(pc, 1); }
inline instr_val not_dest(pcounter pc) { return val_get(pc, 2); }

/* advance function */

enum instr_argument_type {
   ARGUMENT_ANYTHING,
   ARGUMENT_ANYTHING_NOT_NIL,
   ARGUMENT_INT,
   ARGUMENT_WRITABLE,
   ARGUMENT_LIST,
   ARGUMENT_NON_LIST,
   ARGUMENT_BOOL
};

template <instr_argument_type type>
static inline size_t arg_size(instr_val v);

template <>
static inline size_t arg_size<ARGUMENT_ANYTHING>(instr_val v)
{
   if(val_is_float(v))
      return float_size;
   else if(val_is_int(v))
      return int_size;
   else if(val_is_field(v))
      return field_size;
   else if(val_is_nil(v))
      return 0;
   else if(val_is_reg(v))
      return 0;
   else if(val_is_host(v))
      return 0;
   else if(val_is_tuple(v))
      return 0;
   else if(val_is_addr(v))
      return addr_size;
   else {
      printf("%d\n", v);
      throw malformed_instr_error("invalid instruction argument value");
   }
}

template <>
static inline size_t arg_size<ARGUMENT_ANYTHING_NOT_NIL>(instr_val v)
{
   if(val_is_float(v))
      return float_size;
   else if(val_is_int(v))
      return int_size;
   else if(val_is_field(v))
      return field_size;
   else if(val_is_reg(v))
      return 0;
   else if(val_is_host(v))
      return 0;
   else if(val_is_tuple(v))
      return 0;
   else if(val_is_addr(v))
      return addr_size;
   else {
      throw malformed_instr_error("invalid instruction argument value");
   }
}

template <>
static inline size_t arg_size<ARGUMENT_INT>(instr_val v)
{
   if(val_is_int(v))
      return int_size;
   else
      throw malformed_instr_error("invalid instruction int value");
}

template <>
static inline size_t arg_size<ARGUMENT_WRITABLE>(instr_val v)
{
   if(val_is_reg(v))
      return 0;
   else if(val_is_field(v))
      return field_size;
   else
      throw malformed_instr_error("invalid instruction writable value");
}

template <>
static inline size_t arg_size<ARGUMENT_LIST>(instr_val v)
{
   if(val_is_reg(v))
      return 0;
   else if(val_is_field(v))
      return field_size;
   else if(val_is_nil(v))
      return 0;
   else
      throw malformed_instr_error("invalid instruction list value");
}

template <>
static inline size_t arg_size<ARGUMENT_NON_LIST>(instr_val v)
{
   if(val_is_float(v))
      return float_size;
   else if(val_is_int(v))
      return int_size;
   else if(val_is_field(v))
      return field_size;
   else if(val_is_reg(v))
      return 0;
   else if(val_is_host(v))
      return 0;
   else if(val_is_addr(v))
      return addr_size;
   else
      throw malformed_instr_error("invalid instruction non-list value");
}

template <>
static inline size_t arg_size<ARGUMENT_BOOL>(instr_val v)
{
   if(val_is_reg(v))
      return 0;
   else if(val_is_field(v))
      return field_size;
   else
      throw malformed_instr_error("invalid instruction bool value");
}

inline size_t
iter_matches_size(pcounter pc)
{
   if(iter_match_none(pc))
      return iter_match_size;
   
   size_t size = 0;
   size_t match_size;
   
   while(true) {
    
      match_size = iter_match_size;
      match_size += arg_size<ARGUMENT_ANYTHING>(iter_match_val(pc));
      size += match_size;
      
      if(iter_match_end(pc))
         return size;
      else
         pc += match_size;
   }
}

inline size_t
instr_call_args_size(pcounter arg, size_t num)
{
   size_t size;
   size_t total = 0;
   
   for(size_t i = 0; i < num; ++i) {
      size = 1 + arg_size<ARGUMENT_ANYTHING>(call_val(arg));
      arg += size;
      total += size;
   }
   
   return total;
}

inline pcounter
advance(pcounter pc)
{
	switch(fetch(pc)) {
		case SEND_INSTR:
		   return pc + SEND_BASE
                   + arg_size<ARGUMENT_INT>(send_delay(pc));
                   
      case OP_INSTR:
         return pc + OP_BASE
                   + arg_size<ARGUMENT_ANYTHING>(op_arg1(pc))
                   + arg_size<ARGUMENT_ANYTHING>(op_arg2(pc))
                   + arg_size<ARGUMENT_WRITABLE>(op_dest(pc));
                   
      case MOVE_INSTR:
         return pc + MOVE_BASE
                   + arg_size<ARGUMENT_ANYTHING_NOT_NIL>(move_from(pc))
                   + arg_size<ARGUMENT_WRITABLE>(move_to(pc));
                   
      case ITER_INSTR:
         return pc + ITER_BASE
                   + iter_matches_size(pc + ITER_BASE);
                   
      case ALLOC_INSTR:
         return pc + ALLOC_BASE
                   + arg_size<ARGUMENT_WRITABLE>(alloc_dest(pc)); // XXX: should be always a register
                   
      case CALL_INSTR:
         return pc + CALL_BASE
                   + instr_call_args_size(pc + CALL_BASE, call_num_args(pc));
                   
      case IF_INSTR:
         return pc + IF_BASE;
         
      case MOVE_NIL_INSTR:
         return pc + MOVE_NIL_BASE
                   + arg_size<ARGUMENT_WRITABLE>(move_nil_dest(pc));
                   
      case TEST_NIL_INSTR:
         return pc + TEST_NIL_BASE
                   + arg_size<ARGUMENT_LIST>(test_nil_op(pc))
                   + arg_size<ARGUMENT_WRITABLE>(test_nil_dest(pc));
      
      case CONS_INSTR:
         return pc + CONS_BASE
                   + arg_size<ARGUMENT_NON_LIST>(cons_head(pc))
                   + arg_size<ARGUMENT_LIST>(cons_tail(pc))
                   + arg_size<ARGUMENT_WRITABLE>(cons_dest(pc));
                   
      case HEAD_INSTR:
         return pc + HEAD_BASE
                   + arg_size<ARGUMENT_LIST>(head_cons(pc))
                   + arg_size<ARGUMENT_WRITABLE>(head_dest(pc));
                   
      case TAIL_INSTR:
         return pc + TAIL_BASE
                   + arg_size<ARGUMENT_LIST>(tail_cons(pc))
                   + arg_size<ARGUMENT_WRITABLE>(tail_dest(pc));
                   
      case NOT_INSTR:
         return pc + NOT_BASE
                   + arg_size<ARGUMENT_BOOL>(not_op(pc))
                   + arg_size<ARGUMENT_WRITABLE>(not_dest(pc));
                   
      case RETURN_INSTR:
         return pc + RETURN_BASE;
         
      case NEXT_INSTR:
         return pc + NEXT_BASE;
         
      case ELSE_INSTR:
      case REMOVE_INSTR:
      default:
         throw malformed_instr_error("unknown instruction code");
   }
}

/* instruction print functions */
std::string val_string(const instr_val, pcounter *);

}

/* byte code print functions */
pcounter instr_print(pcounter, const bool, const program *, std::ostream&);
pcounter instr_print_simple(pcounter, const program *, std::ostream&);
byte_code instrs_print(const byte_code, const size_t, const program*, std::ostream&);

}

#endif
