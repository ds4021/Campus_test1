using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Campus_test1
{
    public partial class Index1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            BAL.first obn = new BAL.first("stringgss", 2);
            BAL.first ob1 = obn;
            ob1.b = 34;
            Response.Write(obn.b);
            //BAL.first obj_second = new BAL.first(obn);

        }
    }
}