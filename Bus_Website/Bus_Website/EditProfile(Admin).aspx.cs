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
    public partial class EditProfile_Admin_aspx : System.Web.UI.Page
    {

        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ToString());


        SqlCommand com;

        SqlDataAdapter sqlda;

        DataTable dt;

        int RowCount;

        protected void Button2_Click(object sender, EventArgs e)
        {

        }

        protected void Upload_Click(object sender, EventArgs e)
        {



        }

        protected void Button9_Click(object sender, EventArgs e)
        {
            string username = TextBox2.Text.ToString();


            string str = "Update Users set username ='" + username + "' where password = '" +Session["password"]+ "'  ";

            com = new SqlCommand(str);

            sqlda = new SqlDataAdapter(com.CommandText, con);



            dt = new DataTable();

            sqlda.Fill(dt);

            Session["userName"] = username;

            Response.Redirect("EditProfile(Admin).aspx");
        }

        protected void Button10_Click(object sender, EventArgs e)
        {
            Label2.Visible = true;
            TextBox2.Visible = true;
            Button9.Visible=true;
            RequiredFieldValidator1.Visible = true;

        }

        protected void Button11_Click(object sender, EventArgs e)
        {
            Label4.Visible = true;
            TextBox3.Visible = true;
            Button12.Visible = true;
            RequiredFieldValidator2.Visible = true;
            
        }

        protected void Button19_Click(object sender, EventArgs e)
        {
            Label5.Visible = true;
            TextBox4.Visible = true;
            Button13.Visible = true;
            RequiredFieldValidator3.Visible = true;

        }

        protected void Button20_Click(object sender, EventArgs e)
        {
            Label6.Visible = true;
            TextBox5.Visible = true;
            Button14.Visible = true;
            RequiredFieldValidator4.Visible = true;
            RegularExpressionValidator1.Visible = true;
        }

        protected void Button21_Click(object sender, EventArgs e)
        {
            Label7.Visible = true;
            TextBox6.Visible = true;
            Button15.Visible = true;
            RequiredFieldValidator5.Visible = true;
            

        }

        protected void Button22_Click(object sender, EventArgs e)
        {
            Label8.Visible = true;
            TextBox7.Visible = true;
            Button16.Visible = true;
            RequiredFieldValidator6.Visible = true;

        }

        protected void Button23_Click(object sender, EventArgs e)
        {
            Label9.Visible = true;
            TextBox8.Visible = true;
            Button17.Visible = true;
            RequiredFieldValidator7.Visible = true;
        }

        protected void Button24_Click(object sender, EventArgs e)
        {
            Label10.Visible = true;
            TextBox9.Visible = true;
            Button18.Visible = true;
            RequiredFieldValidator8.Visible = true;
            RegularExpressionValidator2.Visible = true;
        }

        protected void Button12_Click(object sender, EventArgs e)
        {
            string firstname = TextBox3.Text.ToString();


            string str = "Update Users set first_name ='" + firstname + "' where username = '" + Session["userName"] + "'  ";

            com = new SqlCommand(str);

            sqlda = new SqlDataAdapter(com.CommandText, con);



            dt = new DataTable();

            sqlda.Fill(dt);

            Session["temp"] = firstname;

            Response.Redirect("EditProfile(Admin).aspx");
        }

        protected void Button13_Click(object sender, EventArgs e)
        {
            string lastname = TextBox4.Text.ToString();


            string str = "Update Users set last_name ='" + lastname + "' where username = '" + Session["userName"] + "'  ";

            com = new SqlCommand(str);

            sqlda = new SqlDataAdapter(com.CommandText, con);



            dt = new DataTable();

            sqlda.Fill(dt);

            Session["temp"] = lastname;

            Response.Redirect("EditProfile(Admin).aspx");
        }

        protected void Button14_Click(object sender, EventArgs e)
        {
            string email = TextBox5.Text.ToString();


            string str = "Update Users set email ='" + email + "' where username = '" + Session["userName"] + "'  ";

            com = new SqlCommand(str);

            sqlda = new SqlDataAdapter(com.CommandText, con);



            dt = new DataTable();

            sqlda.Fill(dt);

            Session["temp"] = email;

            Response.Redirect("EditProfile(Admin).aspx");
        }

        protected void Button15_Click(object sender, EventArgs e)
        {
            string nric = TextBox6.Text.ToString();


            string str = "Update Users set ic_number ='" + nric + "' where username = '" + Session["userName"] + "'  ";

            com = new SqlCommand(str);

            sqlda = new SqlDataAdapter(com.CommandText, con);



            dt = new DataTable();

            sqlda.Fill(dt);

            Session["temp"] = nric;

            Response.Redirect("EditProfile(Admin).aspx");
        }

        protected void Button16_Click(object sender, EventArgs e)
        {
            string hp = TextBox7.Text.ToString();


            string str = "Update Users set hp_number ='" + hp + "' where username = '" + Session["userName"] + "'  ";

            com = new SqlCommand(str);

            sqlda = new SqlDataAdapter(com.CommandText, con);



            dt = new DataTable();

            sqlda.Fill(dt);

            Session["temp"] = hp;

            Response.Redirect("EditProfile.aspx");
        }

        protected void Button17_Click(object sender, EventArgs e)
        {
            string address = TextBox8.Text.ToString();


            string str = "Update Users set address ='" + address + "' where username = '" + Session["userName"] + "'  ";

            com = new SqlCommand(str);

            sqlda = new SqlDataAdapter(com.CommandText, con);



            dt = new DataTable();

            sqlda.Fill(dt);

            Session["temp"] = address;

            Response.Redirect("EditProfile(Admin).aspx");
        }

        protected void Button18_Click(object sender, EventArgs e)
        {
            string dob = TextBox9.Text.ToString();


            string str = "Update Users set dob ='" + dob + "' where username = '" + Session["userName"] + "'  ";

            com = new SqlCommand(str);

            sqlda = new SqlDataAdapter(com.CommandText, con);



            dt = new DataTable();

            sqlda.Fill(dt);

            Session["temp"] = dob;

            Response.Redirect("EditProfile(Admin).aspx");
        }





    }


    
}