using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Bus_Website
{
    public partial class Homepage_User : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Visible = true;
            Label2.Visible = true;

            if (Session["userName"] != null)
            {
                Label2.Text = Session["userName"].ToString();
            }

            Label3.Text = DateTime.Now.ToString();
        }
    }
}