using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Web.Configuration;
using System.Data.SqlClient;

namespace Bus_Website
{
    public partial class SelectTripDetails_Admin_aspx : System.Web.UI.Page
    {
        Login trip = new Login();
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ToString());

        protected void Page_Load(object sender, EventArgs e)
        {
             if (Session["boarding_point"] != null)
            {
                Label1.Text = Session["boarding_point"].ToString();
            }


            if (Session["arrival_point"] != null)
            {
                Label2.Text = Session["arrival_point"].ToString();
            }



            if (Session["depart_date"] != null)
            {
                Label3.Text = Session["depart_date"].ToString();
            }


        }


        protected void Button1_Click1(object sender, EventArgs e)
        {
            foreach (GridViewRow row in GridView1.Rows)
            {
                

                CheckBox rb1 = (CheckBox)row.FindControl("CheckBox1");

                if (rb1 != null && rb1.Checked)
                {
                  
                    
                    Session["tripps"] = GridView1.DataKeys[row.RowIndex].Value;

                    Session["buss"] = row.Cells[2].Text;

                    Session["bcom"] = row.Cells[4].Text;



                    Response.Redirect("SeatingLayout(Admin).aspx");
                }
                    
    

                else
                {
                    Label4.Visible = true;
                   Label4.Text = " ** Please select a trip";

                }
            }

            }
        }
    }
