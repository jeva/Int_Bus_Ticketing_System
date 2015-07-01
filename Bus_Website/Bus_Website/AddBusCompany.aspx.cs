using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Bus_Website
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        Login trip = new Login();

        // string CS = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;

        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ToString());


        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                Button1.Attributes.Add("onclick", " javascript : alert(' Bus Company Succesfully Added');");
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string buscompanyid = TextBox3.Text.ToString();

            string companyname = TextBox2.Text.ToString();

            trip.Add_BusCompany(buscompanyid, companyname);
        }
    }
}