
#ifndef SCHED_MPI_MESSAGE_BUFFER_HPP
#define SCHED_MPI_MESSAGE_BUFFER_HPP

#include <list>
#ifdef COMPILE_MPI
#include <boost/mpi.hpp>
#endif

#include "vm/defs.hpp"
#include "mem/base.hpp"
#include "utils/types.hpp"
#include "sched/mpi/message.hpp"
#include "sched/mpi/request.hpp"

namespace process
{
   class remote;
}

namespace sched
{

#ifdef COMPILE_MPI

class message_buffer: public mem::base<message_buffer>
{
private:
   
   typedef std::map<vm::process_id, message_set, std::less<vm::process_id>,
      mem::allocator< std::pair<vm::process_id, message_set> > > map_procs;
   typedef std::map<process::remote*, map_procs, std::less<process::remote*>,
      mem::allocator< std::pair<process::remote*, map_procs> > > map_messages;
   
   map_messages map_rem;
   vector_reqs reqs;
   size_t total;
   
   void transmit_list(process::remote *, const vm::process_id, message_set&);
   
public:
   
   inline const bool empty(void) const { return total == 0; }
   
   inline const bool all_received(void) const { return reqs.empty(); }
   
   void update_received(const bool);
   
   bool insert(process::remote *, const vm::process_id, message *);
   
   size_t transmit(void);
   
   explicit message_buffer(void): total(0) {}
   
   ~message_buffer(void) {}
};
#endif

}

#endif