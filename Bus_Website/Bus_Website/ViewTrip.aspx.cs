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
    public partial class ViewTrip : System.Web.UI.Page
    {
        Login trip = new Login();

        // string CS = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;

        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ToString());


        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                SqlCommand cmd = new SqlCommand("Select distinct boarding_point from Trip", con);

                con.Open();

                DropDownList7.DataSource = cmd.ExecuteReader();
                DropDownList7.DataTextField = "boarding_point";
                DropDownList7.DataValueField = "boarding_point";
                DropDownList7.DataBind();

                con.Close();
            }

            if (!IsPostBack)
            {
                SqlCommand cmd = new SqlCommand("Select distinct arrival_point from Trip", con);

                con.Open();

                DropDownList8.DataSource = cmd.ExecuteReader();
                DropDownList8.DataTextField = "arrival_point";
                DropDownList8.DataValueField = "arrival_point";
                DropDownList8.DataBind();

                con.Close();
            }
        }

        protected void DropDownList5_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {


            string departure = DropDownList7.SelectedValue.ToString();
            string arrival = DropDownList8.SelectedValue.ToString();
        }

        protected void DropDownList6_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}