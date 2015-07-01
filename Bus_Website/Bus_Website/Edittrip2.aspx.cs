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
    public partial class Edittrip2 : System.Web.UI.Page
    {


        SqlCommand com;

        SqlDataAdapter sqlda;

        DataTable dt;

        int RowCount;

        Login trip = new Login();

        // string CS = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;

        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ToString());

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                SqlCommand cmd = new SqlCommand("Select distinct boarding_point from Trip", con);

                con.Open();

                DropDownList5.DataSource = cmd.ExecuteReader();
                DropDownList5.DataTextField = "boarding_point";
                DropDownList5.DataValueField = "boarding_point";
                DropDownList5.DataBind();

                con.Close();

                Session["board"] = DropDownList5.SelectedValue.ToString();
            }

            if (!IsPostBack)
            {
                SqlCommand cmd = new SqlCommand("Select distinct arrival_point from Trip", con);

                con.Open();

                DropDownList9.DataSource = cmd.ExecuteReader();
                DropDownList9.DataTextField = "arrival_point";
                DropDownList9.DataValueField = "arrival_point";
                DropDownList9.DataBind();

                Session["arrive"] = DropDownList9.SelectedValue.ToString();

                con.Close();
            }
        }


        protected void DropDownList5_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button25_Click(object sender, EventArgs e)
        {
            Session["tripid"] = TextBox13.Text.ToString();
            Response.Redirect("EditTrip.aspx");
        }

        protected void Submit_Click(object sender, EventArgs e)
        {
           

           
        }

        protected void Button26_Click(object sender, EventArgs e)
        {
            Label13.Visible = true;
            TextBox13.Visible = true;
            Button25.Visible = true;
        }
    }
}