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
    public partial class Delete_User2 : System.Web.UI.Page
    {
        Login trip = new Login();

        // string CS = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;

        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ToString());


        protected void Page_Load(object sender, EventArgs e)
        {
        

                Button2.Attributes.Add("onclick", " javascript : return confirm (' Are you sure want to delete this User ?');");
            

            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
   
            Button2.Visible = true;

        }

        protected void Button2_Click(object sender, EventArgs e)
        {

            string username = TextBox1.Text.ToString();

            trip.DeleteUser(username);

            Response.Redirect("Delete User.aspx");

        }
    }
}