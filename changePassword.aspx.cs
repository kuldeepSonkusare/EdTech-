using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace CityBridge
{
    public partial class changePassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
            SqlCommand cmd = new SqlCommand("select * from tbl_login where username=@username and password=@password", con);
            Session["username1"] = txtUsername.Text;
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@username", txtUsername.Text);
            cmd.Parameters.AddWithValue("@password", txtOldPassword.Text);
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                Response.Redirect("adminDashboard.aspx");
            }

            else
            {
                con.Close();
                SqlConnection con1 = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
                SqlCommand cmd1 = new SqlCommand("select * from tbl_student_registration where username=@username and password=@password", con1);
                Session["username1"] = txtUsername.Text;
                cmd1.CommandType = CommandType.Text;
                cmd1.Parameters.AddWithValue("@username", txtUsername.Text);
                cmd1.Parameters.AddWithValue("@password", txtOldPassword.Text);
                con1.Open();
                SqlDataReader dr1 = cmd1.ExecuteReader();
                if (dr1.HasRows)
                {
                    Response.Redirect("studentDashboard.aspx");
                }
                else
                {
                    con1.Close();
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Invalid Username or Password');", true);
                    return;
                }
            }
        }

      

        protected void btnLogout_Click1(object sender, EventArgs e)
        {
            Session.RemoveAll();
            Session.Abandon();
            Response.Redirect("index.aspx");
        }
    }
}