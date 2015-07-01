using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


namespace Bus_Website
{
    public partial class EditBus : System.Web.UI.Page
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
                SqlCommand cmd = new SqlCommand("Select company_name,bus_id from Bus inner join Bus_Company ON Bus.buscompany_id = Bus_Company.buscomponay_id  ", con);

                con.Open();

                DropDownList1.DataSource = cmd.ExecuteReader();
                DropDownList1.DataTextField = "company_name";
                DropDownList1.DataValueField = "bus_id";
                DropDownList1.DataBind();

                con.Close();


            }

        }

        protected void Button10_Click(object sender, EventArgs e)
        {
            Label2.Visible = true;
            Button22.Visible = true;
            TextBox2.Visible = true;
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button11_Click(object sender, EventArgs e)
        {
            Session["busid"] = DropDownList1.SelectedValue.ToString();
            Session["temp"] = DropDownList1.SelectedValue.ToString();

            Button10.Visible = true;

            Button17.Visible = true;
       
        }




        protected void Button17_Click(object sender, EventArgs e)
        {
            Label5.Visible = true;
            Button23.Visible = true;
            TextBox5.Visible = true;

           
        }






        protected void Button23_Click1(object sender, EventArgs e)
        {
            string regnum = TextBox5.Text.ToString();


            string str = "Update Bus set reg_num ='" + regnum + "' where bus_id = '" + Session["busid"] + "'  ";

            com = new SqlCommand(str);

            sqlda = new SqlDataAdapter(com.CommandText, con);



            dt = new DataTable();

            sqlda.Fill(dt);

            Session["temp"] = regnum;

            Response.Redirect("EditBus.aspx");
        }

        protected void Button22_Click(object sender, EventArgs e)
        {
            string busid = TextBox2.Text.ToString();


            string str = "Update Bus set bus_id ='" + busid + "' where bus_id = '" + Session["busid"] + "'  ";

            com = new SqlCommand(str);

            sqlda = new SqlDataAdapter(com.CommandText, con);



            dt = new DataTable();

            sqlda.Fill(dt);

            Session["temp"] = busid;

            Response.Redirect("EditBus.aspx");
        }



    }
}