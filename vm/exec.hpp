
#ifndef VM_EXEC_HPP
#define VM_EXEC_HPP

#include <stdexcept>

#include "vm/state.hpp"
#include "vm/defs.hpp"
#include "vm/instr.hpp"

namespace vm
{

void execute_bytecode(byte_code, state&);

class vm_exec_error : public std::runtime_error {
 public:
    explicit vm_exec_error(const std::string& msg) :
         std::runtime_error(msg)
    {}
};

}

#endif
