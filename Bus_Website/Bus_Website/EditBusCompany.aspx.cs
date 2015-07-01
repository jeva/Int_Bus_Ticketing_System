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
    public partial class EditBusCompany : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ToString());


        SqlCommand com;

        SqlDataAdapter sqlda;

        DataTable dt;

        int RowCount;


        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                SqlCommand cmd = new SqlCommand("Select buscomponay_id from Bus_Company", con);

                con.Open();

                DropDownList1.DataSource = cmd.ExecuteReader();
                DropDownList1.DataTextField = "buscomponay_id";
                DropDownList1.DataValueField = "buscomponay_id";
                DropDownList1.DataBind();

                con.Close();
            }


        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Button11.Visible = true;
            Button13.Visible = true;
            Session["buscompany_id"] = DropDownList1.SelectedValue.ToString();
            Session["temp"] = DropDownList1.SelectedValue.ToString();
        }

        protected void Button11_Click(object sender, EventArgs e)
        {
            Label3.Visible = true;
            TextBox2.Visible = true;
            Button12.Visible = true;
            RequiredFieldValidator1.Visible = true;

        }

        protected void Button13_Click(object sender, EventArgs e)
        {
            Label4.Visible = true;
            TextBox3.Visible = true;
            Button14.Visible = true;
            RequiredFieldValidator2.Visible = true;
        }

        protected void Button12_Click(object sender, EventArgs e)
        {
            string buscompanyid = TextBox2.Text.ToString();


            string str = "Update Bus_Company set buscomponay_id ='" + buscompanyid + "' where buscomponay_id  = '" + Session["buscompany_id"] + "'  ";

            com = new SqlCommand(str);

            sqlda = new SqlDataAdapter(com.CommandText, con);



            dt = new DataTable();

            sqlda.Fill(dt);

            Session["buscompany_id"] = buscompanyid;

            Response.Redirect("EditProfile.aspx");
        }
    }
}