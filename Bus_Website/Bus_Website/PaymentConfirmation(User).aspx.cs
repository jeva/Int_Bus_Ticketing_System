using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;
using iTextSharp.text;
using iTextSharp.text.pdf;
using iTextSharp.text.html.simpleparser;

namespace Bus_Website
{
    public partial class PaymentConfirmation_User_ : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ToString());

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("https://www.cimbclicks.com.my/ibk/");
        }

        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("https://www.maybank2u.com.my/mbb/m2u/common/M2ULogin.do?action=Login");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            Label1.Visible = true;

            Response.Redirect("PrintTicket(User).aspx");
        }
    }
}