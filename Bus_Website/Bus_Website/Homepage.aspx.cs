using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

// to encrypt and decrypt password 
using System.Security.Cryptography;

namespace Bus_Website.Homepage
{
    public partial class Homepage : System.Web.UI.Page
    {


        Login trip = new Login();

        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ToString());

        string str, username, password;
        SqlCommand com;

        SqlDataAdapter sqlda;

        DataTable dt;

        int RowCount;


        string str1, boarding_point, arrival_point, depart_time, depart_date;
        SqlCommand com1;

        SqlDataAdapter sqlda1;

        DataTable dt1;

        int RowCount1;



        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                SqlCommand cmd = new SqlCommand("Select distinct boarding_point from Trip", con);

                con.Open();

                DropDownList3.DataSource = cmd.ExecuteReader();
                DropDownList3.DataTextField = "boarding_point";
                DropDownList3.DataValueField = "boarding_point";
                DropDownList3.DataBind();

                con.Close();
            }



            if (!IsPostBack)
            {
                SqlCommand cmd = new SqlCommand("Select distinct arrival_point from Trip", con);

                con.Open();

                DropDownList2.DataSource = cmd.ExecuteReader();
                DropDownList2.DataTextField = "arrival_point";
                DropDownList2.DataValueField = "arrival_point";
                DropDownList2.DataBind();

                con.Close();
            }



        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            con.Open();

            str = "Select * from Users";

            com = new SqlCommand(str);

            sqlda = new SqlDataAdapter(com.CommandText, con);

            dt = new DataTable();

            sqlda.Fill(dt);

            RowCount = dt.Rows.Count;

            for (int i = 0; i < RowCount; i++)
            {

                username = dt.Rows[i]["username"].ToString();



                password = dt.Rows[i]["password"].ToString();

                if (username == txt_username.Text.Trim() && password == txt_password.Text.Trim())
                {
                    Session["temp"] = username;
                    Session["userName"] = username;
                    Session["password"] = password;

                    if (dt.Rows[i]["role"].ToString() == "Admin")
                    {
                        Label1.Text = "Welcome" + " " + dt.Rows[i]["username"].ToString();
                        Response.Redirect("Admin.aspx");
                    }
                    else if (dt.Rows[i]["role"].ToString() == "User")
                    {
                        Label1.Text = "Welcome" + " " + dt.Rows[i]["username"].ToString();
                        Response.Redirect("Homepage_User.aspx");
                    }


                }

                else
                {
                    Label3.Visible = true;
                    Label3.Text = "Invalid User Name or Password! Please try again!";




                }
            }
        }

        protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
        {

        }



        protected void Button4_Click(object sender, EventArgs e)
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

                        if (boarding_point == DropDownList3.SelectedValue && arrival_point == DropDownList2.SelectedValue && depart_date == txt_departure_date.Text.Trim())
                        {

                            Session["boarding_point"] = boarding_point;
                            Session["arrival_point"] = arrival_point;
                            Session["depart_date"] = depart_date;

                            Session["depart_time"] = depart_time;

                            if (dt.Rows[i]["boarding_point"].ToString() == boarding_point && dt.Rows[i]["arrival_point"].ToString() == arrival_point && dt.Rows[i]["depart_date"].ToString() == depart_date)
                            {
                                Label1.Visible = false;
                                Response.Redirect("CheckTripDetailsHome.aspx");
                            }


                        }
                        else
                        {
                            Label4.Visible = true;
                            Label4.Text = " ** Sorry,the requested trip is not available !";

                        }

                    }
                }
            }


            catch (Exception ex)
            {
                Label4.ForeColor = System.Drawing.Color.Red;
                Label4.Text = " There is unknown problem.Please try again";
            }

        }





        protected void DropDownList4_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }

}