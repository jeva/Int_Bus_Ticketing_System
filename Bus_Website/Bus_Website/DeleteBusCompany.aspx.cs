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
    public partial class DeleteBusCompany : System.Web.UI.Page
    {
        Login trip = new Login();

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

            Button3.Attributes.Add("onclick", " javascript : return confirm (' Are you sure want to delete this Bus Company  ?');");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Session["buscompany_id"] = DropDownList1.SelectedValue.ToString();
            Session["temp"] = DropDownList1.SelectedValue.ToString();
       
            
        }

        protected void Button3_Click(object sender, EventArgs e)
        {       try
            {

                if (Page.IsValid)
                {
                    string buscompany_id = TextBox1.Text.ToString();

                    trip.Delete_BusCompany(buscompany_id);

                }

            }

        catch (Exception ex)
        {
            Label3.Visible = true;
            Label3.ForeColor = System.Drawing.Color.Red;
            Label3.Text = "Sorry ,  This Bus Company are still on operation.";
        }

        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Button3.Visible = true;
            Label4.Visible = true;
            TextBox1.Visible = true;

        }

    }
}