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
    public partial class Subject : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username1"] != null)
            {
                username.InnerHtml = Session["username1"].ToString();
            }
            else
            {
                Response.Redirect("index.aspx");
            }

            if (!IsPostBack)
            {
                SqlConnection con = new SqlConnection("Data Source=LAPTOP-GC9NADNB\\SQLEXPRESS;Initial Catalog=dbCityBridge;integrated security=true");
                SqlDataAdapter SDA = new SqlDataAdapter("SELECT * from tblSubject", con);
                con.Open();
                DataSet ds = new DataSet();
                SDA.Fill(ds);
                grdvSubject.DataSource = ds;
                grdvSubject.DataBind();
                con.Close();
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=LAPTOP-GC9NADNB\\SQLEXPRESS;Initial Catalog=dbCityBridge;integrated security=true");
            SqlCommand cmd = new SqlCommand("insert into tblSubject values (@S, @F) ", con);
            cmd.Parameters.AddWithValue("@S", txtSubject.Text);
            cmd.Parameters.AddWithValue("@F", txtFees.Text);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "message", "alert('Data Added to Database.');location.href ='Subject.aspx';", true);
        }
    }
}