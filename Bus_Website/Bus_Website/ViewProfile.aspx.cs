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


namespace Bus_Website.Profile_Management.Edit_Profile
{
    public partial class View_Profile : System.Web.UI.Page
    {
        
        Login trip = new Login();

        // string CS = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;

        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ToString());

        protected void Page_Load(object sender, EventArgs e)
        {

            string username =  Session["username"].ToString();

            trip.ViewProfile(username);
        
            }
           
            
            
            
        }
        }


    
