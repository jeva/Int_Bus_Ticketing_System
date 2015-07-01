using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Web.Configuration;
using System.Data.SqlClient;

namespace Bus_Website.Ticket_Management.View_Ticket
{
    public partial class View_Ticket : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ToString());

        string str, username;
        SqlCommand com;

        SqlDataAdapter sqlda;

        DataTable dt;

        int RowCount;


        protected void Page_Load(object sender, EventArgs e)
        {


            if (!IsPostBack)
            {
                SqlCommand cmd = new SqlCommand("Select distinct username from Users where username = '" + Session["userName"] + "' ", con);

                con.Open();

                DropDownList7.DataSource = cmd.ExecuteReader();
                DropDownList7.DataTextField = "username";
                DropDownList7.DataValueField = "username";
                DropDownList7.DataBind();


                con.Close();

            }

            if (!IsPostBack)
            {
                SqlCommand cmd = new SqlCommand("Select distinct boarding_point,TP.trip_id from Ticket as TK inner join Trip as TP on TK.trip_id = TP.trip_id where username = '" + Session["userName"] + "'", con);

                con.Open();

                DropDownList5.DataSource = cmd.ExecuteReader();
                DropDownList5.DataTextField = "boarding_point";
                DropDownList5.DataValueField = "trip_id";
                DropDownList5.DataBind();


                con.Close();

                Session["Tripps"] = DropDownList5.SelectedValue.ToString();


            }

            if (!IsPostBack)
            {
                SqlCommand cmd = new SqlCommand("Select distinct ticket_id from Ticket where username = '" + Session["userName"] + "' ", con);

                con.Open();

                DropDownList6.DataSource = cmd.ExecuteReader();
                DropDownList6.DataTextField = "ticket_id";
                DropDownList6.DataValueField = "ticket_id";
                DropDownList6.DataBind();


                con.Close();

            }

            Session["ticketID"] = DropDownList6.SelectedValue.ToString();

            con.Open();

            str = "Select * from Ticket";

            com = new SqlCommand(str);

            sqlda = new SqlDataAdapter(com.CommandText, con);

            dt = new DataTable();

            sqlda.Fill(dt);

            RowCount = dt.Rows.Count;

            for (int i = 0; i < RowCount; i++)
            {

                username = dt.Rows[i]["username"].ToString();

                if (username == DropDownList7.SelectedValue)
                {

                    

                    if (dt.Rows[i]["username"].ToString() == username)
                    {

                        Label1.Visible = true;
                        Label2.Visible = true;
                        Label3.Visible = true;

                        DropDownList5.Visible = true;
                        DropDownList6.Visible = true;

                        Button1.Visible = true;
                        Button2.Visible = true;
                        Label4.Visible = false;

                    }


                }


                

            }





        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("ViewPrint(User).aspx"); 
        }

        protected void DropDownList4_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void DropDownList5_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Session["Tripps"] = DropDownList5.SelectedValue.ToString();
           
        }
    }
}