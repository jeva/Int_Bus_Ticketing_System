using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using Bus_Website.localhost;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Bus_Website
{
    public partial class Add_BusCompany : System.Web.UI.Page
    {
        Login trip = new Login();

        // string CS = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;

        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ToString());


        protected void Page_Load(object sender, EventArgs e)
        {
            Submit.Attributes.Add("onclick", " javascript : return confirm (' Are you sure want to add this Bus Company ?');");
        }

        protected void Submit_Click(object sender, EventArgs e)
        {

            string buscompany_id = TextBox1.Text.ToString();
            string company_name = TextBox2.Text.ToString();

            trip.Add_BusCompany(buscompany_id, company_name);


            Label1.Visible = true;

            Label1.Text = "Bus Company Succesfully Added";



        }
    }
}