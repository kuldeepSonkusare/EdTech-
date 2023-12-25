using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace CityBridge
{
    public partial class Blog : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username1"] != null)
            {
                username.InnerHtml = Session["username1"].ToString();
                txtDate.Text = DateTime.Now.ToString("dd/MM/yyyy");
            }
            else
            {
                Response.Redirect("index.aspx");
            }
            if (!IsPostBack)
            {
                SqlConnection con = new SqlConnection("Data Source=LAPTOP-GC9NADNB\\SQLEXPRESS;Initial Catalog=dbCityBridge;integrated security=true");
                SqlDataAdapter SDA = new SqlDataAdapter("SELECT Blog, Date from tblBlog", con);
                con.Open();
                DataSet ds = new DataSet();
                SDA.Fill(ds);
                grdvBlog.DataSource = ds;
                grdvBlog.DataBind();
                con.Close();
            }
        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            Session.RemoveAll();
            Session.Abandon();
            Response.Redirect("index.aspx");
        }


        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=LAPTOP-GC9NADNB\\SQLEXPRESS;Initial Catalog=dbCityBridge;integrated security=true");
            SqlCommand cmd = new SqlCommand("insert into tblBlog values (@B, @D) ", con);
            cmd.Parameters.AddWithValue("@B", txtBlog.Text);
            cmd.Parameters.AddWithValue("@D", txtDate.Text);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "message", "alert('Data Added to Database.');location.href ='Blog.aspx';", true);
        }
    }
}