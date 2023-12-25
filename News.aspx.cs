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
    public partial class News : System.Web.UI.Page
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
                SqlConnection con = new SqlConnection("Data Source = LAPTOP-GC9NADNB\\SQLEXPRESS; Initial Catalog = dbCityBridge; integrated security = true");
                SqlDataAdapter SDA = new SqlDataAdapter("SELECT News, Date from tblNews order by id desc ", con);
                con.Open();
                DataSet ds = new DataSet();
                SDA.Fill(ds);
                grdvNews.DataSource = ds;
                grdvNews.DataBind();
                con.Close();
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source = LAPTOP-GC9NADNB\\SQLEXPRESS; Initial Catalog = dbCityBridge; integrated security = true");
            SqlCommand cmd = new SqlCommand("insert into tblNews values (@N, @D)", con);
            cmd.Parameters.AddWithValue("@N", txtNews.Text);
            cmd.Parameters.AddWithValue("@D", txtDate.Text);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "message", "alert('News Added to Database.');location.href ='News.aspx';", true);
        }
    }
}