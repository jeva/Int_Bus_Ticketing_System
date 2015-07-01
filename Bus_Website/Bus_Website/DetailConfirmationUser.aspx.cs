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
    public partial class DetailConfirmationUser : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ToString());

        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                SqlCommand cmd = new SqlCommand("Select adults from Ticket where trip_id = '"+Session["tripps"]+"' and username = '"+Session["userName"]+"'", con);

                con.Open();

                DropDownList1.DataSource = cmd.ExecuteReader();
                DropDownList1.DataTextField = "adults";
                DropDownList1.DataValueField = "adults";
                DropDownList1.DataBind();


                con.Close();

                Session["adults"] = DropDownList1.SelectedValue.ToString();

                
            }

            if (!IsPostBack)
            {
                SqlCommand cmd = new SqlCommand("Select child from Ticket where trip_id = '" + Session["tripps"] + "' and username = '" + Session["userName"] + "'", con);

                con.Open();

                DropDownList2.DataSource = cmd.ExecuteReader();
                DropDownList2.DataTextField = "child";
                DropDownList2.DataValueField = "child";
                DropDownList2.DataBind();


                con.Close();

                Session["childs"] = DropDownList2.SelectedValue.ToString();


            }

            if (!IsPostBack)
            {
                SqlCommand cmd = new SqlCommand("Select total_amt from Ticket where trip_id = '" + Session["tripps"] + "' and username = '" + Session["userName"] + "'", con);

                con.Open();

                DropDownList3.DataSource = cmd.ExecuteReader();
                DropDownList3.DataTextField = "total_amt";
                DropDownList3.DataValueField = "total_amt";
                DropDownList3.DataBind();


                con.Close();

                Session["totalfare"] = DropDownList3.SelectedValue.ToString();


                Label1.Text = DropDownList1.SelectedValue.ToString();
                Label2.Text = DropDownList2.SelectedValue.ToString();
                Label3.Text = DropDownList3.SelectedValue.ToString();

            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("PaymentConfirmation(User).aspx");
        }
    }
}