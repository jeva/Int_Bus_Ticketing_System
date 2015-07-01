using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;

namespace Bus_Website
{
    public partial class ContactUs_home_ : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Submit_Click(object sender, EventArgs e)
        {
            
            try
            {

                if (Page.IsValid)
                {
                    MailMessage mailmessage = new MailMessage();
                    mailmessage.From = new MailAddress("jeva.sanjay@gmail.com");
                    mailmessage.To.Add("jeva.sanjay@gmail.com");

                    mailmessage.Subject = TextBox3.Text;

                    mailmessage.Body = " <b> Sender Name : </b>" + TextBox1.Text + "<br/>"
                        + " <b> Sender Email </b>" + TextBox2.Text + "<br/>"
                        + " <b> Subject </b>" + TextBox3.Text + "<br/>"
                        + " <b> Feedback / Comment </b>" + TextBox4.Text + "<br/>";

                    mailmessage.IsBodyHtml = true;

                    SmtpClient smtpclient = new SmtpClient("smtp.gmail.com", 587);
                    smtpclient.EnableSsl = true;
                    smtpclient.Credentials = new System.Net.NetworkCredential("jeva.sanjay@gmail.com", "madjeva5163");
                    smtpclient.Send(mailmessage);

                    Label1.Visible = true;
                    Label1.ForeColor = System.Drawing.Color.Blue;
                    Label1.Text = " Thank you for giving us your kind feedback.";

                    TextBox1.Enabled = false;
                    TextBox2.Enabled = false;
                    TextBox3.Enabled = false;
                    Submit.Enabled = false;
                }

            }

            catch (Exception ex)
            {
                Label1.ForeColor = System.Drawing.Color.Red;
                Label1.Text = " There is unknown problem.Please try again";
            }

        }

        }
    }
