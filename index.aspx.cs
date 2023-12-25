using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace CityBridge
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=LAPTOP-GC9NADNB\\SQLEXPRESS;Initial Catalog=dbCityBridge;integrated security=true");
            SqlCommand cmd = new SqlCommand("select * from tblLogin where username=@username and password=@password", con);
            Session["username1"] = txtUsername.Text;
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@username", txtUsername.Text);
            cmd.Parameters.AddWithValue("@password", txtPassword.Text);
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                Response.Redirect("Dashboard.aspx");
            }

            else
            {
                con.Close();
                SqlConnection con1 = new SqlConnection("Data Source=LAPTOP-GC9NADNB\\SQLEXPRESS;Initial Catalog=dbCityBridge;integrated security=true");
                SqlCommand cmd1 = new SqlCommand("select * from tblRegistration where username=@username and password=@password", con1);
                Session["username1"] = txtUsername.Text;
                cmd1.CommandType = CommandType.Text;
                cmd1.Parameters.AddWithValue("@username", txtUsername.Text); 
                cmd1.Parameters.AddWithValue("@password", txtPassword.Text);
                con1.Open();
                SqlDataReader dr1 = cmd1.ExecuteReader();
                if (dr1.HasRows)
                {
                    Response.Redirect("stdDashboard.aspx");
                }
                else
                {
                    con1.Close();
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Invalid Username or Password');", true);
                    return;
                }
            }
        }
    }
}