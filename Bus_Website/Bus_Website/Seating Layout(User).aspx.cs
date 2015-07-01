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


namespace Bus_Website
{
    public partial class Seating_Layout_User_ : System.Web.UI.Page
    {


        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ToString());



        protected void Page_Load(object sender, EventArgs e)
        {
            AddSeat.Attributes.Add("onclick", " javascript : return confirm(' Are you sure want to select the seats');");

            int adultfare = Convert.ToInt32(DropDownList1.SelectedValue);
            int childfare = Convert.ToInt32(DropDownList2.SelectedValue);


            if (!IsPostBack)
            {
                SqlCommand cmd = new SqlCommand("Select distinct  adult_fare from Trip where boarding_point = '" + Session["boarding_point"] + "' and arrival_point = '" + Session["arrival_point"] + "' and depart_date ='" + Session["depart_date"] + "' and depart_time = '" + Session["depart_time"] + "'", con);

                con.Open();

                DropDownList3.DataSource = cmd.ExecuteReader();
                DropDownList3.DataTextField = "adult_fare";
                DropDownList3.DataValueField = "adult_fare";
                DropDownList3.DataBind();


                con.Close();

                int Dbadultfare = Convert.ToInt32(DropDownList3.SelectedValue);
            }

            if (!IsPostBack)
            {
                SqlCommand cmd = new SqlCommand("Select distinct child_fare from Trip where boarding_point = '" + Session["boarding_point"] + "' and arrival_point = '" + Session["arrival_point"] + "' and depart_date ='" + Session["depart_date"] + "' and depart_time = '" + Session["depart_time"] + "'", con);

                con.Open();

                DropDownList4.DataSource = cmd.ExecuteReader();
                DropDownList4.DataTextField = "child_fare";
                DropDownList4.DataValueField = "child_fare";
                DropDownList4.DataBind();


                con.Close();

                int Dbchildfare = Convert.ToInt32(DropDownList4.SelectedValue);

            }



            if (Session["userName"] != null)
            {

                Label8.Text = Session["userName"].ToString();

            }
        }

        protected void AddSeat_Click(object sender, EventArgs e)
        {
            string seat;
            ArrayList al = new ArrayList();

            int adult1 = Convert.ToInt32(DropDownList1.SelectedValue);
            int child1 = Convert.ToInt32(DropDownList2.SelectedValue);

            int total_pax1 = adult1 + child1;

            if (ListBox1.SelectedIndex >= 0)
            {
                if (total_pax1 != ListBox2.Items.Count)
                {

                    for (int i = 0; i < ListBox1.Items.Count; i++)
                    {
                        if (ListBox1.Items[i].Selected)
                        {

                            if (!al.Contains(ListBox1.Items[i]))
                            {
                                al.Add(ListBox1.Items[i]);

                            }
                        }
                    }
                }

                else
                {
                    Label7.Visible = true;
                    Label7.Text = "*Please specify correct number of passengers";

                }

                for (int i = 0; i < al.Count; i++)
                {

                    ListBox2.Items.Add(((ListItem)al[i]));

                    ListBox1.Items.Remove(((ListItem)al[i]));

                    Label7.Visible = false;

                    confirm_details.Visible = true;

                }
                ListBox2.SelectedIndex = -1;



            }
            else
            {

                Label7.Visible = true;
                Label7.Text = "*Please select a seat";
            }







            for (int i = 0; i < ListBox1.Items.Count; i++)
            {
                if (ListBox1.Items[i].Selected == true)
                {
                    if (total_pax1 != ListBox2.Items.Count)
                    {

                        al.Add(ListBox1.Items[i].Value);
                    }

                }
            }


            Session["selectedValues"] = al;


            for (int i = 0; i < al.Count; i++)
            {
                seat = (al[i].ToString() + " ");
                Session["seat_id"] = seat;




                string buscompanyid = Session["bcom"].ToString();
                string bus_id = Session["buss"].ToString();
                string trip_id = Session["tripps"].ToString();

                string date = DateTime.Today.ToString();

                Session["date"] = date;

                string username = Session["userName"].ToString();
                SqlParameter param = new SqlParameter("@username", username);
                SqlParameter param1 = new SqlParameter("@seat_id", seat);
                SqlParameter param2 = new SqlParameter("@trip_id", trip_id);
                SqlParameter param3 = new SqlParameter("@buscompanyid", buscompanyid);
                SqlParameter param4 = new SqlParameter("@bus_id", bus_id);
                SqlParameter param5 = new SqlParameter("@ticket_date", date);


                SqlCommand cmd = new SqlCommand("sp_UpdateSeat", con);

                cmd.Parameters.Add(param);
                cmd.Parameters.Add(param1);
                cmd.Parameters.Add(param2);
                cmd.Parameters.Add(param3);
                cmd.Parameters.Add(param4);
                cmd.Parameters.Add(param5);



                cmd.CommandType = CommandType.StoredProcedure;

                con.Open();

                SqlDataReader reader = cmd.ExecuteReader();


            }


            // Label7.Visible = true;
            // Label7.Text = countSelected.ToString() + "" + "seats selected";
        }




        protected void Button2_Click(object sender, EventArgs e)
        {

            int adult = Convert.ToInt32(DropDownList1.SelectedValue);
            int child = Convert.ToInt32(DropDownList2.SelectedValue);

            int total_pax = adult + child;

            if (total_pax == ListBox2.Items.Count)
            {
                ListBox1.Enabled = false;

                ListBox2.Enabled = false;

                AddSeat.Enabled = false;
                confirm_details.Enabled = false;

                DropDownList1.Enabled = false;

                DropDownList2.Enabled = false;

                Label4.Visible = true;
                Label5.Visible = true;
                Label6.Visible = true;


                Label9.Visible = false;
                TextBox1.Visible = true;
                TextBox2.Visible = true;
                Submit.Visible = true;

            }

            else
            {
                Label9.Visible = true;
                Label9.Text = " * Please specify correct number of passengers";

            }
        }

        protected void Submit_Click(object sender, EventArgs e)
        {


            double adultfare = Convert.ToInt32(DropDownList1.SelectedValue);
            double childfare = Convert.ToInt32(DropDownList2.SelectedValue);



            double Dbadultfare = Convert.ToInt32(DropDownList3.SelectedValue);
            double Dbchildfare = Convert.ToInt32(DropDownList4.SelectedValue);
            double totalfare = 0;

            totalfare = (adultfare * Dbadultfare) + (childfare * Dbchildfare);



            string buscompanyid = Session["bcom"].ToString();
            string bus_id = Session["buss"].ToString();
            string trip_id = Session["tripps"].ToString();
            string date = Session["date"].ToString();

            string Name = TextBox1.Text.ToString();
            string ic_num = TextBox2.Text.ToString();

            string username = Session["userName"].ToString();


            Random rnd = new Random();
            double ticketid = rnd.Next(10000, 90000); // creates a number between 1 and 12

            SqlParameter param = new SqlParameter("@username", username);
            SqlParameter param1 = new SqlParameter("@ticket_id", ticketid);
            SqlParameter param2 = new SqlParameter("@Name", Name);
            SqlParameter param3 = new SqlParameter("@ic_num", ic_num);

            SqlParameter param4 = new SqlParameter("@adults", adultfare);
            SqlParameter param5 = new SqlParameter("@childs", childfare);
            SqlParameter param6 = new SqlParameter("@total_amount", totalfare);

            SqlParameter param7 = new SqlParameter("@trip_id", trip_id);
            SqlParameter param8 = new SqlParameter("@buscompanyid", buscompanyid);
            SqlParameter param9 = new SqlParameter("@bus_id", bus_id);
            SqlParameter param10 = new SqlParameter("@ticket_date", date);





            SqlCommand cmd = new SqlCommand("sp_TicketTripDetails", con);

            cmd.Parameters.Add(param);
            cmd.Parameters.Add(param1);
            cmd.Parameters.Add(param2);
            cmd.Parameters.Add(param3);
            cmd.Parameters.Add(param4);
            cmd.Parameters.Add(param5);
            cmd.Parameters.Add(param6);
            cmd.Parameters.Add(param7);
            cmd.Parameters.Add(param8);
            cmd.Parameters.Add(param9);
            cmd.Parameters.Add(param10);



            cmd.CommandType = CommandType.StoredProcedure;

            con.Open();

            SqlDataReader reader = cmd.ExecuteReader();

            Response.Redirect("DetailConfirmationUser.aspx");


            adultfare = ((double)Session["adultfare"]);
            childfare = ((double)Session["childfare"]);
            totalfare = ((double)Session["totalfare"]);

        }


    }
}