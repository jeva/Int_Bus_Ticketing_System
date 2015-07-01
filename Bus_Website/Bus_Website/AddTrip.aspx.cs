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

namespace Bus_Website
{
    public partial class AddTrip : System.Web.UI.Page
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

                DropDownList5.DataSource = cmd.ExecuteReader();
                DropDownList5.DataTextField = "company_name";
                DropDownList5.DataValueField = "buscomponay_id";
                DropDownList5.DataBind();

                con.Close();
            }

            

            if (!IsPostBack)
            {
                SqlCommand cmd = new SqlCommand("Select bus_id from Bus", con);

                con.Open();

                DropDownList4.DataSource = cmd.ExecuteReader();
                DropDownList4.DataTextField = "bus_id";
                DropDownList4.DataValueField = "bus_id";
                DropDownList4.DataBind();

                con.Close();
            }

            Submit.Attributes.Add("onclick", " javascript : alert(' Trip Succesfully Added');");
            Submit.Attributes.Add("onclick", " javascript : return confirm (' Are you sure want to add this Trip ?');");

        }

        protected void DropDownList5_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }



        protected void Submit_Click(object sender, EventArgs e)
        {
            string trip_id = txt_tripID.Text.ToString();       
            string buscompany_id = DropDownList5.SelectedValue.ToString();
            string bus_id = DropDownList4.SelectedValue.ToString();
            string boarding_point = TextBox1.Text.ToString();
            string arrival_point = TextBox2.Text.ToString();
            string depart_date = txt_departure_date.Text;
            string depart_time = txt_depart_time.Text.ToString();
            string arrival_time = txt_arrival_time.Text.ToString();
            string adultfare = txt_adultFare.Text.ToString();
            string childfare = txt_childfare.Text.ToString();
            string totaltime = txt_totaltime.Text.ToString();

            trip.Add_Trip(trip_id, buscompany_id, bus_id, boarding_point, arrival_point, depart_date, depart_time, arrival_time, adultfare, childfare, totaltime);

            txt_adultFare.Enabled = false;
            txt_arrival_time.Enabled = false;
            txt_childfare.Enabled = false;
            txt_depart_time.Enabled = false;
            txt_departure_date.Enabled = false;
            txt_totaltime.Enabled = false;
            txt_tripID.Enabled = false;
            TextBox1.Enabled = false;
            TextBox2.Enabled = false;
            DropDownList4.Enabled = false;
            DropDownList5.Enabled = false;


            Label1.Visible = true;
            Label1.Text = " The trip is succesfully added to the system";
            
        }
    }
}