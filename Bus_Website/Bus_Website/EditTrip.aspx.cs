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
    public partial class EditTrip : System.Web.UI.Page
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
                SqlCommand cmd = new SqlCommand("Select distinct trip_id from Trip where boarding_point = '" + Session["board"] + "' and arrival_point = '" + Session["arrive"] + "'", con);

                con.Open();

                DropDownList10.DataSource = cmd.ExecuteReader();
                DropDownList10.DataTextField = "trip_id";
                DropDownList10.DataValueField = "trip_id";
                DropDownList10.DataBind();

                Session["trips"] = DropDownList10.SelectedValue.ToString();

                con.Close();


            }

            if (!IsPostBack)
            {
                SqlCommand cmd = new SqlCommand("Select distinct bus_id from Bus", con);

                con.Open();

                DropDownList6.DataSource = cmd.ExecuteReader();
                DropDownList6.DataTextField = "bus_id";
                DropDownList6.DataValueField = "bus_id";
                DropDownList6.DataBind();

                con.Close();
            }



     

            if (!IsPostBack)
            {
                SqlCommand cmd = new SqlCommand("Select distinct  * from Bus_Company", con);

                con.Open();

                DropDownList11.DataSource = cmd.ExecuteReader();
                DropDownList11.DataTextField = "company_name";
                DropDownList11.DataValueField = "buscomponay_id";
                DropDownList11.DataBind();

                con.Close();
            }
        }



        protected void DropDownList5_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Submit_Click(object sender, EventArgs e)
        {



            Button4.Visible = true;

            Button6.Visible = true;
            Button7.Visible = true;
            Button8.Visible = true;
            Button9.Visible = true;
            Button10.Visible = true;
            Button11.Visible = true;
            Button12.Visible = true;
            Button13.Visible = true;


        }

        protected void Button3_Click(object sender, EventArgs e)
        {


        }



        protected void Button4_Click(object sender, EventArgs e)
        {
            Label3.Visible = true;

            Button15.Visible = true;
            RequiredFieldValidator2.Visible = true;
            DropDownList6.Visible = true;
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            Label5.Visible = true;
            Button17.Visible = true;

            RequiredFieldValidator4.Visible = true;
            TextBox13.Visible = true;
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            Label6.Visible = true;
            Button18.Visible = true;
            RequiredFieldValidator5.Visible = true;
            TextBox14.Visible = true;
        }

        protected void Button8_Click(object sender, EventArgs e)
        {
            Label7.Visible = true;
            TextBox7.Visible = true;
            Button19.Visible = true;
            RequiredFieldValidator6.Visible = true;
        }

        protected void Button10_Click(object sender, EventArgs e)
        {
            Label9.Visible = true;
            TextBox9.Visible = true;
            Button21.Visible = true;
            RequiredFieldValidator8.Visible = true;
        }

        protected void Button11_Click(object sender, EventArgs e)
        {
            Label10.Visible = true;
            TextBox10.Visible = true;
            Button22.Visible = true;
            RequiredFieldValidator9.Visible = true;
        }

        protected void Button9_Click(object sender, EventArgs e)
        {
            Label8.Visible = true;
            TextBox8.Visible = true;
            Button20.Visible = true;
            RequiredFieldValidator7.Visible = true;
        }

        protected void Button12_Click(object sender, EventArgs e)
        {
            Label11.Visible = true;
            TextBox11.Visible = true;
            Button23.Visible = true;
            RequiredFieldValidator10.Visible = true;
        }

        protected void Button13_Click(object sender, EventArgs e)
        {
            Label12.Visible = true;
            TextBox12.Visible = true;
            Button24.Visible = true;
            RequiredFieldValidator11.Visible = true;
        }



        protected void Button17_Click(object sender, EventArgs e)
        {
            string Destination = TextBox13.Text.ToString();


            string str = "Update Trip set boarding_point ='" + Destination + "'where trip_id = '" + Session["tripid"] + "'  ";

            com = new SqlCommand(str);

            sqlda = new SqlDataAdapter(com.CommandText, con);



            dt = new DataTable();

            sqlda.Fill(dt);

            Session["temp"] = Destination;

            Response.Redirect("EditTrip.aspx");
        }

        protected void Button18_Click(object sender, EventArgs e)
        {
            string ariival_point = TextBox14.Text.ToString();


            string str = "Update Trip set arrival_point ='" + ariival_point + "' where trip_id = '" + Session["tripid"] + "'  ";

            com = new SqlCommand(str);

            sqlda = new SqlDataAdapter(com.CommandText, con);



            dt = new DataTable();

            sqlda.Fill(dt);

            Session["temp"] = ariival_point;

            Response.Redirect("EditTrip.aspx");
        }

        protected void Button19_Click(object sender, EventArgs e)
        {
            string derparturedate = TextBox7.Text.ToString();


            string str = "Update Trip set depart_date='" + derparturedate + "' where trip_id = '" + Session["tripid"] + "'  ";

            com = new SqlCommand(str);

            sqlda = new SqlDataAdapter(com.CommandText, con);



            dt = new DataTable();

            sqlda.Fill(dt);

            Session["temp"] = derparturedate;


            Response.Redirect("EditTrip.aspx");
        }

        protected void Button20_Click(object sender, EventArgs e)
        {
            string derparturetime = TextBox8.Text.ToString();


            string str = "Update Trip set depart_time='" + derparturetime + "'where trip_id = '" + Session["tripid"] + "'  ";

            com = new SqlCommand(str);

            sqlda = new SqlDataAdapter(com.CommandText, con);



            dt = new DataTable();

            sqlda.Fill(dt);

            Session["temp"] = derparturetime;


            Response.Redirect("EditTrip.aspx");
        }

        protected void Button21_Click(object sender, EventArgs e)
        {
            string arrivaltime = TextBox9.Text.ToString();


            string str = "Update Trip set arrival_time ='" + arrivaltime + "' where trip_id = '" + Session["tripid"] + "'  ";

            com = new SqlCommand(str);

            sqlda = new SqlDataAdapter(com.CommandText, con);



            dt = new DataTable();

            sqlda.Fill(dt);

            Session["temp"] = arrivaltime;


            Response.Redirect("EditTrip.aspx");
        }


        protected void Button22_Click(object sender, EventArgs e)
        {
            string adultfare = TextBox10.Text.ToString();


            string str = "Update Trip set adult_fare='" + adultfare + "' where trip_id = '" + Session["tripid"] + "'  ";

            com = new SqlCommand(str);

            sqlda = new SqlDataAdapter(com.CommandText, con);



            dt = new DataTable();

            sqlda.Fill(dt);

            Session["temp"] = adultfare;


            Response.Redirect("EditTrip.aspx");
        }

        protected void Button23_Click(object sender, EventArgs e)
        {
            string childfare = TextBox11.Text.ToString();


            string str = "Update Trip set child_fare='" + childfare + "' where trip_id = '" + Session["tripid"] + "'  ";

            com = new SqlCommand(str);

            sqlda = new SqlDataAdapter(com.CommandText, con);



            dt = new DataTable();

            sqlda.Fill(dt);

            Session["temp"] = childfare;


            Response.Redirect("EditTrip.aspx");
        }

        protected void Button24_Click(object sender, EventArgs e)
        {
            string totaltime = TextBox12.Text.ToString();


            string str = "Update Trip set total_time ='" + totaltime + "' where trip_id = '" + Session["tripid"] + "'  ";

            com = new SqlCommand(str);

            sqlda = new SqlDataAdapter(com.CommandText, con);



            dt = new DataTable();

            sqlda.Fill(dt);

            Session["temp"] = totaltime;


            Response.Redirect("EditTrip.aspx");
        }

        protected void DropDownList11_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button25_Click(object sender, EventArgs e)
        {
            Label13.Visible = true;
            DropDownList11.Visible = true;
            Button26.Visible = true;
            RequiredFieldValidator12.Visible = true;
        }

        protected void Button26_Click(object sender, EventArgs e)
        {
            string bus_company = DropDownList11.SelectedValue.ToString();


            string str = "Update Trip set buscompany_id ='" + bus_company + "' where trip_id = '" + Session["tripid"] + "'  ";

            com = new SqlCommand(str);

            sqlda = new SqlDataAdapter(com.CommandText, con);



            dt = new DataTable();

            sqlda.Fill(dt);

            Session["temp"] = bus_company;


            Response.Redirect("EditTrip.aspx");
        }

        protected void Button15_Click(object sender, EventArgs e)
        {
            string bus_id = DropDownList6.SelectedValue.ToString();


            string str = "Update Trip set bus_id ='" + bus_id + "' where trip_id = '" + Session["tripid"] + "'  ";

            com = new SqlCommand(str);

            sqlda = new SqlDataAdapter(com.CommandText, con);



            dt = new DataTable();

            sqlda.Fill(dt);

            Session["temp"] = bus_id;


            Response.Redirect("EditTrip.aspx");
        }

 

    }
}