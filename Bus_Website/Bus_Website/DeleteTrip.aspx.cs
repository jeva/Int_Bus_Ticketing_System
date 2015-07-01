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
    public partial class DeleteTrip : System.Web.UI.Page
    {

        Login trip = new Login();

        // string CS = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;

        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ToString());


        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                SqlCommand cmd = new SqlCommand("Select distinct boarding_point  from Trip", con);

                con.Open();

                DropDownList5.DataSource = cmd.ExecuteReader();
                DropDownList5.DataTextField = "boarding_point";
                DropDownList5.DataValueField = "boarding_point";
                DropDownList5.DataBind();
                
                con.Close();

                Session["departure"] = DropDownList5.SelectedValue.ToString();
            }


            if (!IsPostBack)
            {
                SqlCommand cmd = new SqlCommand("Select distinct arrival_point from Trip", con);

                con.Open();

                DropDownList6.DataSource = cmd.ExecuteReader();
                DropDownList6.DataTextField = "arrival_point";
                DropDownList6.DataValueField = "arrival_point";
                DropDownList6.DataBind();

                con.Close();

                Session["arrivalpoint"] = DropDownList6.SelectedValue.ToString();
            }



           
          

            Button4.Attributes.Add("onclick", " javascript : return confirm (' Are you sure want to delete this Trip ?');");

        }

        protected void DropDownList5_SelectedIndexChanged(object sender, EventArgs e)
        {

        }


        protected void Button1_Click1(object sender, EventArgs e)
        {

            
 
        }


        protected void Button3_Click(object sender, EventArgs e)
        {
            Label2.Visible = true;
            TextBox2.Visible = true;
            Button4.Visible = true;
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            string trip_id = TextBox2.Text.ToString();

            trip.Delete_Trip(trip_id);

            Label1.Visible = true;

            Response.Redirect("DeleteTrip.aspx");
        }
    }
}