using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Bus_Website
{
    public partial class UserTicketDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["buss"]  != null)

            {
                Label1.Text = Session["buss"].ToString();

            }


            if (Session["tripps"] != null)
            {
                Label1.Text = Session["tripps"].ToString();

            }
        }
    }
}