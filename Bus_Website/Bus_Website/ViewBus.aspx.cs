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
    public partial class ViewBus : System.Web.UI.Page
    {

        Login trip = new Login();

        // string CS = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;

        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ToString());


        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                SqlCommand cmd = new SqlCommand("Select distinct * from Bus_Company", con);

                con.Open();

                DropDownList1.DataSource = cmd.ExecuteReader();
                DropDownList1.DataTextField = "company_name";
                DropDownList1.DataValueField = "buscomponay_id";
                DropDownList1.DataBind();

                con.Close();


            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {

            
            string bus_id = DropDownList1.SelectedValue.ToString();

           trip.View_Bus(bus_id);

        }
    }
}