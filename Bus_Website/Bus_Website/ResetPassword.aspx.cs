using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Net.Mail;
using System.Text;


namespace Bus_Website
{
    public partial class ResetPassword : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ToString());

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void rst_password_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("sp_ResetPassword", con);
            cmd.CommandType = CommandType.StoredProcedure;

            SqlParameter paramUsername = new SqlParameter("@username", TextBox1.Text);

            cmd.Parameters.Add(paramUsername);

            con.Open();

            SqlDataReader rdr = cmd.ExecuteReader();

            while(rdr.Read())
            {

                if (Convert.ToBoolean(rdr["ReturnCode"]))
                {


                    SendResetPassword(rdr["Email"].ToString(), TextBox1.Text, rdr["UniqueID"].ToString());
                    Label2.Text = " An email instruction to reset your password has been sent to your repective email";

                }

                else
                {
                    Label2.ForeColor = System.Drawing.Color.Red;
                    Label2.Text = "The username is incorrect";
                }
            }


        }

       private void SendResetPassword(string ToEmail, string UserName , string UniqueId)
        {
            MailMessage mailmessage = new MailMessage("jeva.sanjay@gmail.com", ToEmail);

            StringBuilder sbEmailBody = new StringBuilder();
            sbEmailBody.Append("Dear" + UserName + ", <br/> <br/>");
            sbEmailBody.Append(" Please click on the folowing link to reset your password");
            sbEmailBody.Append("<br/>");
            sbEmailBody.Append("localhost:5441/ChangeResetPassword.aspx?uid = " + UniqueId + "");
            sbEmailBody.Append("<br/><br/>");
            sbEmailBody.Append("JS Intergrated Online Bus System");


            mailmessage.IsBodyHtml = true;

            mailmessage.Body = sbEmailBody.ToString();
            mailmessage.Subject = "Reset Your Password";
            SmtpClient smtpClient = new SmtpClient("smtp.gmail.com", 587);

            smtpClient.Credentials = new System.Net.NetworkCredential()
            {

                UserName = "jeva.sanjay@gmail.com",
                Password = "madjeva5163"

            };


            smtpClient.EnableSsl = true;
            smtpClient.Send(mailmessage);

        }


    }
}