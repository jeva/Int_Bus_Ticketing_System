using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Bus_Website
{
    public partial class PaymentConformationAdmin : System.Web.UI.Page
    {
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

            Response.Redirect("Print Ticket (Admin).aspx");
        }
    }
}