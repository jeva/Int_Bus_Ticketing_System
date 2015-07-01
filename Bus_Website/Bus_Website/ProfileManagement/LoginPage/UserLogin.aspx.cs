using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Bus_Website.Profile_Management
{
    public partial class UserLogin : System.Web.UI.Page
    {
                    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ToString());

            string str, username, password;

            SqlCommand com;

            SqlDataAdapter sqlda;

            DataTable dt;

            int RowCount;


        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
            con.Open();

            str = "Select * from Users";

            com = new SqlCommand(str);

            sqlda = new SqlDataAdapter(com.CommandText, con);

            dt = new DataTable();

            sqlda.Fill(dt);

            RowCount = dt.Rows.Count;

            for (int i = 0; i < RowCount; i++)
            {

                username = dt.Rows[i]["userName"].ToString();



                password = dt.Rows[i]["password"].ToString();

                if (username == txt_username.Text.Trim() && password == txt_password.Text.Trim())
                {

                    Session["userName"] = username;
                    Session["password"] = password;

                    if (dt.Rows[i]["role"].ToString() == "ADMIN")
                    {
                        Label1.Text = "Welcome" + " " + dt.Rows[i]["username"].ToString();
                        Response.Redirect("Admin.aspx");
                    }
                    else if (dt.Rows[i]["role"].ToString() == "User")
                    {
                        Label1.Text = "Welcome" + " " + dt.Rows[i]["username"].ToString();
                        Response.Redirect("User.aspx");
                    }
                }

                else
                {

                    Label1.Text = "Invalid User Name or Password! Please try again!";

                }
            }
        }
        }
    }
