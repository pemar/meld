
#ifndef PROCESS_ROUTER_HPP
#define PROCESS_ROUTER_HPP

#include "conf.hpp"

#include <vector>
#include <list>
#include <stdexcept>
#ifdef COMPILE_MPI
#include <boost/mpi.hpp>
#endif

#include "process/remote.hpp"
#include "process/process.hpp"
#include "db/tuple.hpp"
#include "db/node.hpp"
#include "vm/defs.hpp"
#include "utils/time.hpp"
#include "utils/types.hpp"
#include "sched/mpi/message.hpp"
#include "sched/mpi/request.hpp"
#include "sched/mpi/token.hpp"

namespace process
{

class router
{
public:
   
   typedef bool remote_state;
   static const bool REMOTE_IDLE = true;
   static const bool REMOTE_ACTIVE = false;
   
private:
   
   typedef int remote_tag;
   
   static const remote_tag STATUS_TAG = 0;
   static const remote_tag THREAD_TAG = 100;
   static const remote_tag THREAD_DELAY_TAG = 500;
   static const remote_tag TOKEN_TAG = 200;
   static const remote_tag TERMINATE_ITERATION_TAG = 201;
   static const remote_tag PRINT_TAG = 202;
   
   static inline const remote_tag get_thread_tag(const vm::process_id id)
   {
      return THREAD_TAG + id;
   }
   
   static inline const remote_tag get_thread_delay_tag(const vm::process_id id)
   {
      return THREAD_DELAY_TAG + id;
   }
   
   std::vector<remote*> remote_list;
   
   size_t world_size;
   size_t nodes_per_remote;

#ifdef COMPILE_MPI
   typedef std::list<boost::mpi::request> list_state_reqs;
   
   boost::mpi::environment *env;
   boost::mpi::communicator *world;
#ifdef DEBUG_SERIALIZATION_TIME
   utils::execution_time serial_time;
#endif
   list_state_reqs state_reqs;

   utils::byte recv_buf[MPI_BUF_SIZE];
#endif 

   void base_constructor(const size_t, int, char **, const bool);
   
public:
   
   inline const bool use_mpi(void) const { return world_size > 1; }
   
   void set_nodes_total(const size_t);
   
#ifdef COMPILE_MPI

   inline void barrier(void) { world->barrier(); }
   
   sched::pair_req send(remote *, const vm::process_id&, const sched::message_set&);
   
   void check_requests(sched::vector_reqs&, const bool);
   
   sched::message_set* recv_attempt(const vm::process_id);

   void send_token(const sched::token&);
   
   bool receive_token(sched::token&);
   
   void send_end_iteration(const size_t, const remote::remote_id);
   
   bool received_end_iteration(size_t&, const remote::remote_id);
   void receive_end_iteration(const remote::remote_id);
   
   bool reduce_continue(const bool);
#endif
   
   remote* find_remote(const db::node::node_id) const;
   
   explicit router(const size_t, int, char**, const bool);
   explicit router(void);
   
   ~router(void);
};

}

#endif
