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
    public partial class A_salary : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username1"] != null)
            {
                Username.InnerHtml = Session["username1"].ToString();
                txtDate.Text = DateTime.Now.ToString("dd/MM/yyyy");
            }
            else
            {
                Response.Redirect("Index.aspx");
            }

            if (!IsPostBack)
            {
                ddlMode.Items.Add("Google Pay");
                ddlMode.Items.Add("Phone Pay");
                ddlMode.Items.Add("Paytm");
            }

            //tblSalary Bind
            if (!IsPostBack)
            {
                SqlConnection con = new SqlConnection("Data Source = LAPTOP-GC9NADNB\\SQLEXPRESS; Initial Catalog = dbCityBridge; integrated security = true");
                SqlDataAdapter SDA = new SqlDataAdapter("select distinct FirstName from tblTrainer", con);
                con.Open();
                DataSet ds = new DataSet();
                SDA.Fill(ds);
                ddlEmployee.DataSource = ds;
                ddlEmployee.DataTextField = "FirstName";
                ddlEmployee.DataBind();
                con.Close();
            }
        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            Session.RemoveAll();
            Session.Abandon();
            Response.Redirect("Index.aspx");
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            SqlConnection con1 = new SqlConnection("Data Source = LAPTOP-GC9NADNB\\SQLEXPRESS; Initial Catalog = dbCityBridge; integrated security = true");
            SqlCommand cmd1 = new SqlCommand("insert into tblSalary values (@Name,@Subject,@Contact,@Email,@Salary,@Mode,@UTN,@Date)", con1);
            cmd1.Parameters.AddWithValue("@Name", ddlEmployee.Text);
            cmd1.Parameters.AddWithValue("@Subject", txtSubject.Text);
            cmd1.Parameters.AddWithValue("@Contact", txtContact.Text);
            cmd1.Parameters.AddWithValue("@Email", txtEmail.Text);
            cmd1.Parameters.AddWithValue("@Salary", txtSalary.Text);
            cmd1.Parameters.AddWithValue("@Mode", ddlMode.Text);
            cmd1.Parameters.AddWithValue("@UTN", txtUTN.Text);
            cmd1.Parameters.AddWithValue("@Date", txtDate.Text);
            con1.Open();
            cmd1.ExecuteNonQuery();
            con1.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "message", "alert('Registration Added to Database.');location.href ='ASalary.aspx';", true);

        }

        protected void btnDashboard_Click(object sender, EventArgs e)
        {
            Response.Redirect("Dashboard.aspx");
        }

        protected void ddlEmployee_SelectedIndexChanged(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source = LAPTOP-GC9NADNB\\SQLEXPRESS; Initial Catalog = dbCityBridge; integrated security = true");
            SqlCommand cmd = new SqlCommand("select Subject, Contact, Email, Salary from tblTrainer where FirstName=@FirstName", con);
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@FirstName", ddlEmployee.SelectedItem.Text);
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                txtSubject.Text = dr[0].ToString();
                txtContact.Text = dr[1].ToString();
                txtEmail.Text = dr[2].ToString();
                txtSalary.Text = dr[3].ToString();
            }
            con.Close();
        }
    }

}
