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
    public partial class Upload : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (!FileUpload1.HasFile)
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Please Select Image to change');", true);
                return;
            }
            if (FileUpload1.HasFile)
            {
                System.Drawing.Image img = System.Drawing.Image.FromStream(FileUpload1.PostedFile.InputStream);
                int height = img.Height;
                int width = img.Width;
                decimal size = Math.Round(((decimal)FileUpload1.PostedFile.ContentLength / (decimal)1024), 2);
                if (size > 500)
                {
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Image File size must not exceed 500KB.');", true);
                    return;
                }
                //string fileName = Path.GetFileName (FileUpload1. PostedFile.FileName);
                FileUpload1.PostedFile.SaveAs(Server.MapPath("yoloimage.jpg"));
                ScriptManager.RegisterStartupScript(this, this.GetType(), "message", "alert('Brochure Added. '); location.href = 'Upload.aspx';", true);

            }

        }
    }
}