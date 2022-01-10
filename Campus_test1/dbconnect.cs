using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;



namespace Campus_test1
{
    public class dbconnect
    {
        SqlConnection con;
        public dbconnect()
            {
            con = new SqlConnection("server=localhost;database=campusdb;uid=root;pwd='';");
             }
        public int insertrow()
        {
            int ret_val = 0;

            con.Open();
            ret_val = 1;
            con.Close();
            return ret_val;

        }
    }
}