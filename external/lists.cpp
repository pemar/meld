
#include <algorithm>
#include <cmath>

#include "db/node.hpp"
#include "runtime/objs.hpp"
#include "external/lists.hpp"
#include "utils/utils.hpp"

using namespace std;
using namespace runtime;
using namespace utils;

namespace vm
{
namespace external
{

argument
listcount(EXTERNAL_ARG(ls), EXTERNAL_ARG(i))
{
   DECLARE_LIST(ls);
   int_val total(0);
   runtime::cons *p((runtime::cons *)ls);
   if(runtime::cons::is_null(p)) {
      RETURN_INT(total);
   }
   vm::list_type *lt(p->get_type());
   vm::type *t(lt->get_subtype());

   switch(t->get_type()) {
      case FIELD_INT: {
            DECLARE_INT(i);
            while(!runtime::cons::is_null(p)) {
               if(FIELD_INT(p->get_head()) == i)
                  total++;
               p = p->get_tail();
            }
         }
         break;
      case FIELD_FLOAT: {
            DECLARE_FLOAT(i);
            while(!runtime::cons::is_null(p)) {
               if(FIELD_FLOAT(p->get_head()) == i)
                  total++;
               p = p->get_tail();
            }
         }
         break;
      case FIELD_NODE: {
            DECLARE_NODE(i);
            while(!runtime::cons::is_null(p)) {
               if(FIELD_NODE(p->get_head()) == i)
                  total++;
               p = p->get_tail();
            }
         }
         break;
      default:
         cerr << "cannot count types in listcount\n";
         abort();
         break;
   }

   RETURN_INT(total);
}

argument
listexists(EXTERNAL_ARG(ls), EXTERNAL_ARG(i))
{
   DECLARE_LIST(ls);
   runtime::cons *p((runtime::cons *)ls);
   if(runtime::cons::is_null(p))
      RETURN_BOOL(false);
   vm::list_type *lt(p->get_type());
   vm::type *t(lt->get_subtype());

   switch(t->get_type()) {
      case FIELD_INT: {
            DECLARE_INT(i);
            while(!runtime::cons::is_null(p)) {
               if(FIELD_INT(p->get_head()) == i)
                  RETURN_BOOL(true);
               p = p->get_tail();
            }
         }
         break;
      case FIELD_FLOAT: {
            DECLARE_FLOAT(i);
            while(!runtime::cons::is_null(p)) {
               if(FIELD_FLOAT(p->get_head()) == i)
                  RETURN_BOOL(true);
               p = p->get_tail();
            }
         }
         break;
      case FIELD_NODE: {
            DECLARE_NODE(i);
            while(!runtime::cons::is_null(p)) {
               if(FIELD_NODE(p->get_head()) == i)
                  RETURN_BOOL(true);
               p = p->get_tail();
            }
         }
         break;
      default:
         cerr << "cannot count types in listexists\n";
         abort();
         break;
   }

   RETURN_BOOL(false);
}
   
argument
listlength(EXTERNAL_ARG(ls))
{
	DECLARE_LIST(ls);
   int_val total(0);
   runtime::cons *p((runtime::cons *)ls);

   while(!runtime::cons::is_null(p)) {
      total++;
      p = p->get_tail();
   }

	RETURN_INT(total);
}

static bool inline
has_value(const runtime::cons *_l, int_val v)
{
   runtime::cons *l((runtime::cons*)_l);

   while(!runtime::cons::is_null(l)) {
      if(FIELD_INT(l->get_head()) == v) {
         return true;
      }

      l = l->get_tail();
   }

   return false;
}

argument
intlistdiff(EXTERNAL_ARG(ls1), EXTERNAL_ARG(ls2))
{
   DECLARE_LIST(ls1);
   DECLARE_LIST(ls2);
   
   runtime::cons *p((runtime::cons*)ls1);

   stack_int_list s;

   while(!runtime::cons::is_null(p)) {

      if(!has_value(ls2, FIELD_INT(p->get_head())))
         s.push(FIELD_INT(p->get_head()));

      p = p->get_tail();
   }

   runtime::cons *ptr(from_int_stack_to_list(s));
      
   RETURN_LIST(ptr);
}

argument
listnth(EXTERNAL_ARG(ls), EXTERNAL_ARG(v))
{
   DECLARE_LIST(ls);
   DECLARE_INT(v);

   runtime::cons *p((runtime::cons*)ls);
   int_val count(0);

   while(!runtime::cons::is_null(p)) {

      if(count == v)
         return p->get_head();

      count++;
      p = p->get_tail();
   }

   cerr << "listnth: not enough list values\n";
   abort();
   RETURN_INT(-1);
}

argument
listremove(EXTERNAL_ARG(ls), EXTERNAL_ARG(n))
{
	DECLARE_LIST(ls);
   runtime::cons *p((runtime::cons*)ls);

   if(runtime::cons::is_null(p))
      RETURN_LIST(p);

   list_type *ltyp(p->get_type());
   type *t(ltyp->get_subtype());

   switch(t->get_type()) {
      case FIELD_NODE: {
         DECLARE_NODE(n);

         runtime::cons *nl(runtime::cons::null_list());
         stack_node_list s;

         while(!runtime::cons::is_null(p)) {

            if(FIELD_NODE(p->get_head()) != n)
               s.push(FIELD_NODE(p->get_head()));

            p = p->get_tail();
         }

         runtime::cons *ptr(from_node_stack_to_list(s));
      
         RETURN_LIST(ptr);
      }
      break;
      default:
         cerr << "listremove: cannot remove elements from this type.\n";
         abort();
         RETURN_LIST(p);
   }
}

argument
intlistsub(EXTERNAL_ARG(p), EXTERNAL_ARG(a), EXTERNAL_ARG(b))
{
   DECLARE_LIST(p);
   DECLARE_INT(a);
   DECLARE_INT(b);
   runtime::cons *ls((runtime::cons*)p);

   int_val ctn(0);

   while(!runtime::cons::is_null(ls) && ctn < a) {
      ls = ls->get_tail();
      ++ctn;
   }

   stack_int_list s;

   while(!runtime::cons::is_null(ls) && ctn < b) {
      s.push(FIELD_INT(ls->get_head()));

      ls = ls->get_tail();
      ++ctn;
   }

   runtime::cons *ptr(from_int_stack_to_list(s));

   RETURN_LIST(ptr);
}

argument
listappend(EXTERNAL_ARG(ls1), EXTERNAL_ARG(ls2))
{
   DECLARE_LIST(ls1);
   DECLARE_LIST(ls2);

   if(runtime::cons::is_null(ls1) && runtime::cons::is_null(ls2)) {
      RETURN_LIST(runtime::cons::null_list());
   } else {
      runtime::cons *p1((runtime::cons*)ls1);
      runtime::cons *p2((runtime::cons*)ls2);

      stack_general_list s;

      while(!runtime::cons::is_null(p1)) {
         s.push(p1->get_head());
         p1 = p1->get_tail();
      }

      while(!runtime::cons::is_null(p2)) {
         s.push(p2->get_head());
         p2 = p2->get_tail();
      }

      list_type *t(nullptr);
      if(ls1)
         t = ls1->get_type();
      if(t == nullptr)
         t = ls2->get_type();

      runtime::cons *ptr(from_general_stack_to_list(s, t));
      RETURN_LIST(ptr);
   }
}

argument
listsort(EXTERNAL_ARG(ls))
{
   DECLARE_LIST(ls);

   runtime::cons *p((runtime::cons*)ls);
   if(runtime::cons::is_null(p))
      RETURN_LIST(p);

   list_type *ltype((list_type*)p->get_type());
   type *t(ltype->get_subtype());

   switch(t->get_type()) {
      case FIELD_INT: {
         vector_int_list vec;

         while(!runtime::cons::is_null(p)) {
            vec.push_back(FIELD_INT(p->get_head()));
            p = p->get_tail();
         }

         sort(vec.begin(), vec.end(), [](const vm::int_val a1, const vm::int_val a2) { return a1 > a2; });

         runtime::cons *ptr(from_int_vector_to_reverse_list(vec));

         RETURN_LIST(ptr);
      }
      break;
      case FIELD_FLOAT: {
         vector_float_list vec;

         while(!runtime::cons::is_null(p)) {
            vec.push_back(FIELD_FLOAT(p->get_head()));
            p = p->get_tail();
         }

         sort(vec.begin(), vec.end(), [](const vm::float_val a1, const vm::float_val a2) { return a1 > a2; });

         runtime::cons *ptr(from_float_vector_to_reverse_list(vec));

         RETURN_LIST(ptr);
      }
      break;
      case FIELD_NODE: {
         vector_node_list vec;

         while(!runtime::cons::is_null(p)) {
            vec.push_back(FIELD_NODE(p->get_head()));
            p = p->get_tail();
         }

         sort(vec.begin(), vec.end(), [](const vm::node_val a1, const vm::node_val a2) {
               vm::node_val a, b;
#ifdef USE_REAL_NODES
               a = ((db::node*)a1)->get_id();
               b = ((db::node*)a2)->get_id();
#else
               a = a1;
               b = a2;
#endif
               return a > b;
               });
    }
      break;
      default:
         cerr << "listsort: cannot sort this list type.\n";
         abort();
         RETURN_LIST(runtime::cons::null_list());
   }
   RETURN_LIST(runtime::cons::null_list());
}

argument
listremoveduplicates(EXTERNAL_ARG(ls))
{
   DECLARE_LIST(ls);

   runtime::cons *p((runtime::cons*)ls);
   if(runtime::cons::is_null(p))
      RETURN_LIST(p);

   list_type *ltype(p->get_type());
   type *t(ltype->get_subtype());
   runtime::cons *nl(runtime::cons::null_list());

   switch(t->get_type()) {
      case FIELD_INT: {
         std::unordered_set<vm::int_val, std::hash<vm::int_val>,
            std::equal_to<vm::int_val>, mem::allocator<vm::int_val>> set;

         while(!runtime::cons::is_null(p)) {
            auto it(set.find(FIELD_INT(p->get_head())));
            if(it == set.end())
               set.insert(FIELD_INT(p->get_head()));
            p = p->get_tail();
         }

         for(vm::int_val v : set)
            nl = runtime::cons::create(nl, build_from_int(v), vm::TYPE_LIST_INT);
      }
      break;
      default:
         cerr << "listremoveduplicates: cannot remove duplicates of this list type.\n";
         abort();
         break;
   }

   RETURN_LIST(nl);
}

argument
intlistequal(EXTERNAL_ARG(l1), EXTERNAL_ARG(l2))
{
   DECLARE_LIST(l1);
   DECLARE_LIST(l2);
   runtime::cons *ls1((runtime::cons*)l1);
   runtime::cons *ls2((runtime::cons*)l2);
   int_val ret(1);
   while(!runtime::cons::is_null(ls1)) {
      if(runtime::cons::is_null(ls2)) {
         ret = 0;
         RETURN_INT(ret);
      }

      if(FIELD_INT(ls1->get_head()) != FIELD_INT(ls2->get_head())) {
         ret = 0;
         RETURN_INT(ret);
      }

      ls1 = ls1->get_tail();
      ls2 = ls2->get_tail();
   }

   if(!runtime::cons::is_null(ls2)) {
      ret = 0;
      RETURN_INT(ret);
   }

   RETURN_INT(ret);
}

argument
str2intlist(EXTERNAL_ARG(str))
{
   DECLARE_STRING(str);

   stack_int_list st;
   const string s(str->get_content());

   istringstream f(s);
   string part;
   while(getline(f, part, ',')) {
      int_val i;
      from_string(i, part, std::dec);
      st.push(i);
   }

   runtime::cons *ptr(from_int_stack_to_list(st));

   RETURN_LIST(ptr);
}

argument
listreverse(EXTERNAL_ARG(ls))
{
   DECLARE_LIST(ls);
   runtime::cons *p((runtime::cons *)ls);
   if(runtime::cons::is_null(p))
      RETURN_LIST(p);

   runtime::cons *nl(runtime::cons::null_list());

   while(!runtime::cons::is_null(p)) {
      nl = runtime::cons::create(nl, p->get_head(), p->get_type());
      p = p->get_tail();
   }

   RETURN_LIST(nl);
}

argument
listlast(EXTERNAL_ARG(ls))
{
   DECLARE_LIST(ls);
   runtime::cons *p((runtime::cons*)(ls));

   if(runtime::cons::is_null(p)) {
      cerr << "listlast: list has no elements.\n";
      abort();
   }

   while(!runtime::cons::is_null(p->get_tail()))
      p = p->get_tail();

   return p->get_head();
}

}
}
