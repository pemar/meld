
#ifndef SCHED_TYPES_HPP
#define SCHED_TYPES_HPP

#include "conf.hpp"

namespace sched
{
   
enum scheduler_type {
   SCHED_UNKNOWN,
   SCHED_THREADS,
   SCHED_THREADS_PRIO,
   SCHED_SERIAL
#ifdef USE_UI
	, SCHED_SERIAL_UI
#endif
#ifdef USE_SIM
	, SCHED_SIM
#endif
};

inline bool is_serial_sched(const scheduler_type type)
{
   return type == SCHED_SERIAL
#ifdef USE_UI
      || type == SCHED_SERIAL_UI
#endif
#ifdef USE_SIM
      || type == SCHED_SIM
#endif
      ;
}

inline bool is_mpi_sched(const scheduler_type)
{
   return false;
}

inline bool is_work_stealing_sched(const scheduler_type type)
{
   return type == SCHED_THREADS || type == SCHED_THREADS_PRIO;
}

inline bool is_priority_sched(const scheduler_type type)
{
   return type == SCHED_THREADS_PRIO;
}

}

#endif
