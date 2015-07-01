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
    public partial class SelectTripUser : System.Web.UI.Page
    {
        Login trip = new Login();

        // string CS = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;

        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ToString());

        string str, boarding_point, arrival_point, depart_time, depart_date;
        SqlCommand com;

        SqlDataAdapter sqlda;

        DataTable dt;

        int RowCount;


        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                SqlCommand cmd = new SqlCommand("Select Distinct boarding_point from Trip", con);

                con.Open();

                DropDownList1.DataSource = cmd.ExecuteReader();
                DropDownList1.DataTextField = "boarding_point";
                DropDownList1.DataValueField = "boarding_point";
                DropDownList1.DataBind();

                con.Close();
            }



            if (!IsPostBack)
            {
                SqlCommand cmd = new SqlCommand("Select Distinct arrival_point from Trip", con);

                con.Open();

                DropDownList2.DataSource = cmd.ExecuteReader();
                DropDownList2.DataTextField = "arrival_point";
                DropDownList2.DataValueField = "arrival_point";
                DropDownList2.DataBind();

                con.Close();
            }


        }

   

        protected void Submit_Click(object sender, EventArgs e)
        {

            try
            {

                if (Page.IsValid)
                {

                    con.Open();

                    str = "Select * from Trip";

                    com = new SqlCommand(str);

                    sqlda = new SqlDataAdapter(com.CommandText, con);

                    dt = new DataTable();

                    sqlda.Fill(dt);

                    RowCount = dt.Rows.Count;

                    for (int i = 0; i < RowCount; i++)
                    {

                        boarding_point = dt.Rows[i]["boarding_point"].ToString();
                        arrival_point = dt.Rows[i]["arrival_point"].ToString();
                        depart_time = dt.Rows[i]["depart_time"].ToString();
                        depart_date = dt.Rows[i]["depart_date"].ToString();


                        if (DropDownList1.SelectedValue == DropDownList2.SelectedValue)
                        {



                            if (boarding_point == DropDownList1.SelectedValue || arrival_point == DropDownList2.SelectedValue || depart_date == txt_departure_date.Text.Trim())
                            {

                                Session["boarding_point"] = boarding_point;
                                Session["arrival_point"] = arrival_point;
                                Session["depart_date"] = depart_date;

                                Session["depart_time"] = depart_time;

                                if (dt.Rows[i]["boarding_point"].ToString() == boarding_point || dt.Rows[i]["arrival_point"].ToString() == arrival_point || dt.Rows[i]["depart_date"].ToString() == depart_date)
                                {
                                    Label2.Visible = false;
                                    Response.Redirect("SelectTripDetailsUser.aspx");
                                }




                            }

                            else
                            {
                                Label2.Visible = true;
                                Label2.Text = " ** Sorry,the requested trip is not available !";

                            }
                        }

                        else
                        {
                            Label2.Visible = true;
                            Label2.Text = " ** Sorry, Invalid Departure and Arrival  ";

                        }


                    }
                }

            }


            catch (Exception ex)
            {
                Label2.Visible = true;
                Label2.ForeColor = System.Drawing.Color.Red;
                Label2.Text = " There is unknown problem.Please try again";
            }
                
        }
             




        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}