using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Configuration;

namespace Campus_test1.DAL
{
    public class registraion_DAO
    {
        SqlConnection con;
        public registraion_DAO()
        {
            con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
        }
        public int insert_row(entity.user_entity reg_entity)
        {
            int ret_val = 0;
            int id = 0;
            //try
            //{
                con.Open();
            
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = con;
                cmd.CommandText = "insert into users (name,phone2,city,gender,email,photo,technology) values('" + reg_entity.name + "','" + reg_entity.ph_no + "','" + reg_entity.city + "','" + reg_entity.gender + "','" + reg_entity.email + "','" + reg_entity.photo_path + "','"+reg_entity.tech+"')";
                ret_val = cmd.ExecuteNonQuery();
            con.Close();
            //}catch(Exception ex)
            //{

            //}
            return ret_val;
        }
        public DataTable Getgrid_data()
        {
            SqlDataReader rr;
            DataTable dt = new DataTable();
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandText = "select id,name,phone2,photo from users";
            rr = cmd.ExecuteReader();
            dt.Load(rr);
            con.Close();

            return dt;
   
        }
        public int delete_row(int id)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandText = "delete from users where id="+id;
            int ret_val = cmd.ExecuteNonQuery();
           con.Close();
            return ret_val;
        }
    }
}