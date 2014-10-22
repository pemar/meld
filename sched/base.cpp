
#include <algorithm>

#include "sched/base.hpp"
#include "vm/exec.hpp"
#include "machine.hpp"

using namespace std;
using namespace vm;
using namespace process;
using namespace db;

namespace sched
{
	
std::atomic<bool> base::stop_flag(false);

void
base::do_loop(void)
{
   db::node *node(NULL);

   while(true) {
      node = get_work();
      if(node == NULL)
         break;
      assert(node != NULL);
      state.run_node(node);
      if(stop_flag) {
         killed_while_active();
         return;
      }
   }
   if(stop_flag) {
      killed_while_active();
      return;
   }
}
	
void
base::loop(void)
{
   init(All->NUM_THREADS);

   do_loop();

   assert_end();
   end();
   // cout << "DONE " << id << endl;
}

}
