using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Campus_test1.BAL
{
    public class first
    {
       public string aa;
        public int b;
        public first(String fi,int se)
        {
            this.aa = fi;
            this.b = se;
        }
        public first(first a_objs)
        {
            aa = a_objs.A;
            b = a_objs.b;
        }

        public string A {

            get { return aa; }
            set { aa = value; }
        }
    }
}