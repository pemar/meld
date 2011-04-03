#ifndef TYPES_HPP
#define TYPES_HPP

#include <cstring>
#include <string>

namespace vm {
   
enum field_type {
   FIELD_INT = 0x0,
   FIELD_FLOAT = 0x1,
   FIELD_ADDR = 0x2,
   FIELD_OTHER = 0x2,
   FIELD_LIST_INT = 0x3,
   FIELD_LIST_FLOAT = 0x4,
   FIELD_LIST_ADDR = 0x5,
   FIELD_SET_INT = 0x6,
   FIELD_SET_FLOAT = 0x7,
   FIELD_TYPE = 0x8
};

enum aggregate_type {
   AGG_FIRST = 1,
   AGG_MAX_INT = 2,
   AGG_MIN_INT = 3,
   AGG_SUM_INT = 4,
   AGG_MAX_FLOAT = 5,
   AGG_MIN_FLOAT = 6,
   AGG_SUM_FLOAT = 7,
   AGG_SET_UNION_INT = 8,
   AGG_SET_UNION_FLOAT = 9,
   AGG_SUM_LIST_INT = 10,
   AGG_SUM_LIST_FLOAT = 11
};

size_t field_type_size(field_type type);
std::string field_type_string(field_type type);
std::string aggregate_type_string(aggregate_type type);
}

#endif
