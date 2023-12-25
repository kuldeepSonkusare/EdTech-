using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CityBridge
{
    public partial class TrainerRegistration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //tblSubject Bind
            if (!IsPostBack)
            {
                SqlConnection con = new SqlConnection("Data Source=LAPTOP-GC9NADNB\\SQLEXPRESS;Initial Catalog=dbCityBridge;integrated security=true");
                SqlDataAdapter SDA = new SqlDataAdapter("select distinct Subject from tblSubject", con);
                con.Open();
                System.Data.DataSet ds = new DataSet();
                SDA.Fill(ds);
                ddlSubject.DataSource = ds;
                ddlSubject.DataTextField = "Subject";
                ddlSubject.DataBind();
                con.Close();
            }

            //Grid View Binding
            if (!IsPostBack)
            {
                SqlConnection con = new SqlConnection("Data Source=LAPTOP-GC9NADNB\\SQLEXPRESS;Initial Catalog=dbCityBridge;integrated security=true");
                SqlDataAdapter SDA = new SqlDataAdapter("select * from tblTrainer order by ID desc", con);
                con.Open();
                DataSet ds = new DataSet();
                SDA.Fill(ds);
                grdvTrainer.DataSource = ds;
                grdvTrainer.DataBind();
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
            SqlCommand cmd = new SqlCommand("insert into tblTrainer values (@F,@M,@L,@E,@C,@P,@G,@U,@Pass,@S,@Salary)", con);
            cmd.Parameters.AddWithValue("@F", txtFName.Text);
            cmd.Parameters.AddWithValue("@M", txtMName.Text);
            cmd.Parameters.AddWithValue("@L", txtLName.Text);
            cmd.Parameters.AddWithValue("@E", txtEmail.Text);
            cmd.Parameters.AddWithValue("@C", txtContact.Text);
            cmd.Parameters.AddWithValue("@P", txtPhonepay.Text);
            cmd.Parameters.AddWithValue("@G", txtGpay.Text);
            cmd.Parameters.AddWithValue("@U", txtUsername.Text);
            cmd.Parameters.AddWithValue("@Pass", txtPassword.Text);
            cmd.Parameters.AddWithValue("@S", ddlSubject.Text);
            cmd.Parameters.AddWithValue("@Salary", txtSalary.Text);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "message", "alert('Trainer Registration Added to Database.');location.href ='TrainerRegistration.aspx';", true);


            MailMessage mail = new MailMessage();
            mail.From = new MailAddress("kuldeeps7566@gmail.com");
            mail.To.Add(txtEmail.Text);
            mail.Subject = "Registration Infomation";
            mail.Body = "Dear " + txtFName.Text + ",\nYour Registration as Trainer has been done for:\nSubject: " + ddlSubject.SelectedItem.Text + "\nYour Login Credentials are:\nUsername:" + txtUsername.Text + "\nPassword:" + txtPassword.Text + "\nThanks.\n\nRegards, \nCityBridge Software Pvt. Ltd.\nContact: 9860060497";
            SmtpClient smtpServer = new SmtpClient();
            smtpServer.Host = "smtp.gmail.com";
            smtpServer.Credentials = new System.Net.NetworkCredential("kuldeeps7566@gmail.com", "ohqndlslyxjsjlcw");
            smtpServer.Port = 587;
            smtpServer.EnableSsl = true;
            smtpServer.Send(mail);
            ScriptManager.RegisterStartupScript(this, this.GetType(), "message", "alert('Message Sent');", true);
        }
    }
}