using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Campus_test1
{

    public partial class Index : System.Web.UI.Page
    {

        DAL.registraion_DAO reg_dao;
        protected void Page_Load(object sender, EventArgs e)
        {
            reg_dao = new DAL.registraion_DAO();
            
            if(IsPostBack!=true)
            {
                Disp_Grid();
            }
        }

        protected void DropDownList_city_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void Button_sub_Click(object sender, EventArgs e)
        {
            entity.user_entity reg_entity = new entity.user_entity();
            reg_entity.name = TextBox_name.Text;
            reg_entity.email = TextBox_email.Text;
            reg_entity.ph_no =TextBox_Phno.Text;
            reg_entity.city = DropDownList_city.Text;
            reg_entity.email = TextBox_email.Text;
            reg_entity.photo_path = "image/" + reg_entity.name + FileUpload1.FileName;

            try
            {
                reg_entity.ph_no = TextBox_Phno.Text;
            }
            catch(Exception ex)
            {

            }
            if(RadioButton_female.Checked)
            {
                reg_entity.gender = "Female";
            }
            if (RadioButton_male.Checked)
            {
                reg_entity.gender = "Male";
            }
            if (RadioButton_other.Checked)
            {
                reg_entity.gender = "Other";
            }
            string s_item = "";
            foreach(ListItem l_item in CheckBoxList1.Items)
            {
                if(l_item.Enabled)
                {
                   s_item= s_item+l_item.Text+",";
                }

            }
            reg_entity.tech = s_item;
            
          //Response.Write(reg_dao.insert_row(reg_entity));\
          if(reg_dao.insert_row(reg_entity)>0)
            {
                FileUpload1.SaveAs(Server.MapPath("./image/") +reg_entity.name +FileUpload1.FileName);
                Response.Redirect("index.aspx");
               
            }
            else
            {
                Response.Write("Error:----Something happned in server.");
            }
          
        }
        public void Disp_Grid()
        {
            //MySqlDataReader dr= reg_dao.Getgrid_data();
            // DataTable dt = new DataTable();
            //dt.Load(dr);
            GridView1.DataSource = reg_dao.Getgrid_data();
            GridView1.DataBind();
            //dr.Close();
        }

      

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            Disp_Grid();

        }

        //protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        //{
        //    GridView1.EditIndex = -1;
        //    Disp_Grid();
        //}

       

        protected void Cancel(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            Disp_Grid();
        }

        protected void GridView1_RowCreated(object sender, GridViewRowEventArgs e)
        {

        }

        protected void btn_del_Click(object sender, EventArgs e)
        {
            Button btn = (Button)sender;
            int v = reg_dao.delete_row(Convert.ToInt32(btn.CommandArgument));
            if (v > 0)
            {
                Disp_Grid();
            }
        }

        protected void FileUpload1_DataBinding(object sender, EventArgs e)
        {
            
        }

        protected void btn_edit_Click(object sender, EventArgs e)
        {

        }

        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            Disp_Grid();
        }
    }
}