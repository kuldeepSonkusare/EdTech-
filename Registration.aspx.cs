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
    public partial class Registration : System.Web.UI.Page
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
                SqlDataAdapter SDA = new SqlDataAdapter("select distinct subject from tblSubject ", con);
                con.Open();
                DataSet ds = new DataSet();
                SDA.Fill(ds);
                ddlSubject.DataSource = ds;
                ddlSubject.DataTextField = "subject";
                ddlSubject.DataBind();
                con.Close();
            }

            if (!IsPostBack)
            {
                SqlConnection con = new SqlConnection("Data Source=LAPTOP-GC9NADNB\\SQLEXPRESS;Initial Catalog=dbCityBridge;integrated security=true");
                SqlDataAdapter SDA = new SqlDataAdapter("select * from tblRegistration ", con);
                con.Open();
                DataSet ds = new DataSet();
                SDA.Fill(ds);
                grdvRegistration.DataSource = ds;
                grdvRegistration.DataBind();
                con.Close();
            }

        }

        protected void txtEmail_TextChanged(object sender, EventArgs e)
        {
            txtUsername.Text = txtEmail.Text;
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=LAPTOP-GC9NADNB\\SQLEXPRESS;Initial Catalog=dbCityBridge;integrated security=true");
            SqlCommand cmd = new SqlCommand("insert into tblRegistration values (@F,@E,@M,@S,@Rs,@U,@P)", con);
            cmd.Parameters.AddWithValue("@F", txtFullName.Text);
            cmd.Parameters.AddWithValue("@E", txtEmail.Text);
            cmd.Parameters.AddWithValue("@M", txtContact.Text);
            cmd.Parameters.AddWithValue("@S", ddlSubject.Text);
            cmd.Parameters.AddWithValue("@Rs", txtFees.Text);
            cmd.Parameters.AddWithValue("@U", txtUsername.Text);
            cmd.Parameters.AddWithValue("@P", txtPassword.Text);

            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "message", "alert('Enquiry Added to Database.');location.href ='Registration.aspx';", true);
        }

        protected void ddlSubject_SelectedIndexChanged(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=LAPTOP-GC9NADNB\\SQLEXPRESS;Initial Catalog=dbCityBridge;integrated security=true");
            SqlCommand cmd = new SqlCommand("select Fees from tblSubject where Subject=@S", con);
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@S", ddlSubject.SelectedItem.Text);
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();

            if (dr.Read())
            {
                
                txtFees.Text = dr[0].ToString();
            }
            con.Close();
        }
    }
}