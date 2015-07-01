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


namespace Bus_Website.Ticket_Management
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        Login trip = new Login();

       // string CS = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;

        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ToString());

        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                SqlCommand cmd = new SqlCommand("Select * from Bus_Company", con);

                con.Open();

                DropDownList1.DataSource = cmd.ExecuteReader();
                DropDownList1.DataTextField = "company_name";
                DropDownList1.DataValueField = "buscomponay_id";
                DropDownList1.DataBind();

                con.Close();
            }

            if (!IsPostBack)
            {
                SqlCommand cmd = new SqlCommand("Select * from Bus", con);

                con.Open();

                DropDownList2.DataSource = cmd.ExecuteReader();
                DropDownList2.DataTextField = "bus_id";
                DropDownList2.DataValueField = "bus_id";
                DropDownList2.DataBind();

                con.Close();
            }


            if (!IsPostBack)
            {
                SqlCommand cmd = new SqlCommand("Select arrival_point from Trip", con);

                con.Open();

                DropDownList3.DataSource = cmd.ExecuteReader();
                DropDownList3.DataTextField = "arrival_point";
                DropDownList3.DataValueField = "arrival_point";
                DropDownList3.DataBind();

                con.Close();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Calendar1.Visible = true;

        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            txt_departure_date.Text = Calendar1.SelectedDate.ToString("MM / dd / yy");
            Calendar1.Visible = true;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Calendar2.Visible = true;
        }

        protected void Calendar2_SelectionChanged(object sender, EventArgs e)
        {
            txt_return_date.Text = Calendar2.SelectedDate.ToString("MM / dd / yy");
            Calendar2.Visible = true;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            string buscompany_id = DropDownList1.SelectedValue.ToString();
            string boarding_point = DropDownList2.SelectedValue.ToString();
            string arrival_point = DropDownList3.SelectedValue.ToString();
            string depart_date = txt_departure_date.Text;
            string return_date = txt_return_date.Text;
            string depart_time = txt_depart_time.Text.ToString();
            string arrival_time = txt_return_time.Text.ToString();

            Session["buscompany_id"] = buscompany_id;
            Session["boarding_point"] = boarding_point;
            Session["arrival_point"] = arrival_point;
            Session["depart_date"] = depart_date;
            Session["return_date"] = return_date;
            Session["depart_time"] = depart_time;
            Session["arrival_time"] = arrival_time;


            trip.Select_Trip( boarding_point, arrival_point, depart_date, depart_time);

                Response.Redirect("Test.aspx");
        
        
        }



        


    }
}