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
    public partial class AddBus : System.Web.UI.Page
    {

        Login trip = new Login();

        // string CS = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;

        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ToString());
        
        protected void Page_Load(object sender, EventArgs e)
        {


            if (!IsPostBack)
            {
                SqlCommand cmd = new SqlCommand("Select trip_id from Trip", con);

                con.Open();

                DropDownList1.DataSource = cmd.ExecuteReader();
                DropDownList1.DataTextField = "trip_id";
                DropDownList1.DataValueField = "trip_id";
                DropDownList1.DataBind();

                con.Close();
            }



            if (!IsPostBack)
            {
                SqlCommand cmd = new SqlCommand("Select * from Bus_Company", con);

                con.Open();

                DropDownList2.DataSource = cmd.ExecuteReader();
                DropDownList2.DataTextField = "company_name";
                DropDownList2.DataValueField = "buscomponay_id";
                DropDownList2.DataBind();

                con.Close();
            }

            Button1.Attributes.Add("onclick", " javascript : return confirm (' Are you sure want to add this Trip ?');");


        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string bus = TextBox3.Text.ToString();
            string tripid = DropDownList1.SelectedValue.ToString();
            string buscompany_id = DropDownList2.SelectedValue.ToString();
            string reg_num = TextBox5.Text.ToString();


            trip.Add_Bus(bus, buscompany_id, tripid,  reg_num);

            Label1.Visible = true;

        }
    }
}