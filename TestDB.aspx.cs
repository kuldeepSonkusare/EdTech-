using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace CityBridge
{
    public partial class TestDB : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnConnect_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=LAPTOP-GC9NADNB\\SQLEXPRESS;Initial Catalog=dbCitybridge;integrated security=true");
            try
            {
                con.Open();
                Response.Write("Connection Open ! ");
                con.Close();
            }
            catch (Exception ex)
            {
                Response.Write("Connection Not Open ! ");
            }
        }
    }
}