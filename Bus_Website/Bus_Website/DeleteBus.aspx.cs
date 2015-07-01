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
    public partial class DeleteBus : System.Web.UI.Page
    {

        Login trip = new Login();

        // string CS = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;

        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ToString());


        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                SqlCommand cmd = new SqlCommand("Select * from Bus_Company  ", con);

                con.Open();

                DropDownList1.DataSource = cmd.ExecuteReader();
                DropDownList1.DataTextField = "company_name";
                DropDownList1.DataValueField = "buscomponay_id";
                DropDownList1.DataBind();

                con.Close();


            }
            Button3.Attributes.Add("onclick", " javascript : return confirm (' Are you sure want to delete this Bus ?');");

        }


        protected void Button2_Click(object sender, EventArgs e)
        {
            Session["busid"] = DropDownList1.SelectedValue.ToString();
            Session["temp"] = DropDownList1.SelectedValue.ToString();

            


            Button3.Visible = true;

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            string busid = TextBox1.Text.ToString();

            trip.Delete_Bus(busid);

            Response.Redirect("DeleteBus.aspx");
            
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Session["busid"] = DropDownList1.SelectedValue.ToString();
            Session["temp"] = DropDownList1.SelectedValue.ToString();

         
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Label1.Visible = true;
            TextBox1.Visible = true;
            Button3.Visible = true;

        }
    }
}