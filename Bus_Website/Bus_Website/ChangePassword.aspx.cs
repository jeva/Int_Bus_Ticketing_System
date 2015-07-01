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
    public partial class ChangePassword : System.Web.UI.Page
    {
        Login profile = new Login();


        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ToString());
        
        string str, username, password;
        SqlCommand com;

        SqlDataAdapter sqlda;

        DataTable dt;

        int RowCount;


        protected void Page_Load(object sender, EventArgs e)
        {
            Submit.Attributes.Add("onclick", " javascript : return confirm (' Are you sure want to change your password ?');");
        }

        protected void Submit_Click(object sender, EventArgs e)
        {


            string username = txt_username.Text.ToString();
            string old_password = txt_oldpassword.Text.ToString();
            string new_password = txt_rpassword.Text.ToString();

            profile.Change_Password(username, old_password, new_password);

            Label1.Visible=true;

            Session["userName"] = username;
            Session["password"] = new_password;
            Session["temp"] = username;

            Label1.Text = "Your password succesfully changed";


            txt_newpasword.Enabled = false;
            txt_oldpassword.Enabled = false;
            txt_rpassword.Enabled = false;
            txt_username.Enabled = false;


        }
    }
}