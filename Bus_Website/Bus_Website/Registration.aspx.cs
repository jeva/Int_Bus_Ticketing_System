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
    public partial class Registration : System.Web.UI.Page
    {

        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ToString());


        protected void Page_Load(object sender, EventArgs e)
        {
 

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                SqlParameter param = new SqlParameter("@Username", txt_username.Text.Trim());
                SqlParameter param1 = new SqlParameter("@password", txt_password.Text.Trim());

                SqlParameter param2 = new SqlParameter("@email ", txt_email.Text.Trim());
                SqlParameter param3 = new SqlParameter("@first_name", txt_firstname.Text.Trim());
                SqlParameter param4 = new SqlParameter("@last_name ", txt_lastname.Text.Trim());
                SqlParameter param5 = new SqlParameter("@email ", txt_ic.Text.Trim());
                SqlParameter param6 = new SqlParameter("@ic ", txt_hp.Text.Trim());
                SqlParameter param7 = new SqlParameter("@hp", txt_email.Text.Trim());
                SqlParameter param8 = new SqlParameter("@address ", txt_address.Text.Trim());
                SqlParameter param9 = new SqlParameter("@dob ", TextBox2.Text.Trim());
                SqlParameter param10 = new SqlParameter("@roles ", ddl_roles.Text.Trim());

                SqlCommand cmd = new SqlCommand("sp_Register", con);




                cmd.Parameters.Add(param);
                cmd.Parameters.Add(param1);
                cmd.Parameters.Add(param3);
                cmd.Parameters.Add(param4);
                cmd.Parameters.Add(param5);
                cmd.Parameters.Add(param6);
                cmd.Parameters.Add(param7);
                cmd.Parameters.Add(param8);
                cmd.Parameters.Add(param9);
                cmd.Parameters.Add(param10);

                Session["username"] = txt_username.Text.Trim();
                Session["password"] = txt_password.Text.Trim();
                Session["email"] = txt_email.Text.Trim();
                Session["ic_num"] = txt_ic.Text.Trim();
                Session["first_name"] = txt_firstname.Text.Trim();
                Session["last_name"] = txt_lastname.Text.Trim();
                Session["address"] = txt_address.Text.Trim();
                Session["dob"] = TextBox2.Text.Trim();
                Session["roles"] = ddl_roles.Text.Trim();
                Session["hp_num"] = txt_hp.Text.Trim();



                cmd.CommandType = CommandType.StoredProcedure;
                con.Open();
                SqlDataReader dr = cmd.ExecuteReader();

                if (dr.Read())
                {
                    Label1.Visible = true;
                    Label1.Text = "Welcome";

                }

                else
                {
                    Label1.Visible = true;
                    
                }



                txt_username.Enabled = false;
                txt_password.Enabled = false;
                txt_rpassword.Enabled = false;
                txt_email.Enabled = false;
                txt_address.Enabled = false;
                txt_firstname.Enabled = false;
                txt_lastname.Enabled = false;
                txt_ic.Enabled = false;
                txt_hp.Enabled = false;

                Button1.Enabled = false;

            }
        }
    }
}