using System;
using System.Collections.Generic;
using System.Linq;
using System.Data;
using System.Data.SqlClient;
using System.Web;
using System.Web.Services;
using System.Configuration;

namespace Bus_Website
{
    /// <summary>
    /// Summary description for Login
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    // [System.Web.Script.Services.ScriptService]
    public class Login : System.Web.Services.WebService
    {
        // SqlConnection con = new SqlConnection("server=;Integrated Security = true;database=Online_Bus");
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ToString());


        [WebMethod ( Description = " User Login Session  ") ]
        public Profile UserLogin(string Username, string Password)
        {

            SqlParameter param = new SqlParameter("@Username", Username);
            SqlParameter param1 = new SqlParameter("@Password", Password);


            SqlCommand cmd = new SqlCommand("splogin", con);

            cmd.Parameters.Add(param);
            cmd.Parameters.Add(param1);

            Profile login = new Profile();
            cmd.CommandType = CommandType.StoredProcedure;

            con.Open();

            SqlDataReader reader = cmd.ExecuteReader();

            while (reader.Read())
            {

                login.First_name = reader["first_name"].ToString();
                login.Last_name = reader["last_name"].ToString();
                login.Email = reader["email"].ToString();
                login.Ic_number = reader["ic_number"].ToString();
                login.Hp_number = reader["hp_number"].ToString();
                login.Address = reader["address"].ToString();
                login.Dob = reader["dob"].ToString();
                login.Role = reader["role"].ToString();

            }

            return login;

        }


        [WebMethod(Description = " User Registration  ")]
        public Profile Registration(string Username, string Password ,  string First_name , string Last_name, string Email, string Ic_number, string Hp_number, string Address , string dob ,string roles)
        {

            SqlParameter param = new SqlParameter("@Username", Username);
            SqlParameter param1 = new SqlParameter("@Password", Password);
            SqlParameter param2 = new SqlParameter("@email", First_name);
            SqlParameter param3 = new SqlParameter("first_name", First_name);
            SqlParameter param4 = new SqlParameter("last_name", Last_name);
            SqlParameter param5 = new SqlParameter("ic", Ic_number);
            SqlParameter param6 = new SqlParameter("hp", Hp_number);
            SqlParameter param7 = new SqlParameter("@address", Address);
            SqlParameter param8 = new SqlParameter("@dob", dob);
            SqlParameter param9 = new SqlParameter("@roles", roles);

            SqlCommand cmd = new SqlCommand("sp_Register", con);

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

            Profile register = new Profile();
            cmd.CommandType = CommandType.StoredProcedure;

            con.Open();

            SqlDataReader reader = cmd.ExecuteReader();

            while (reader.Read())
            {

                register.First_name = reader["first_name"].ToString();
                register.Last_name = reader["last_name"].ToString();
                register.Email = reader["email"].ToString();
                register.Ic_number = reader["ic_number"].ToString();
                register.Hp_number = reader["hp_number"].ToString();
                register.Address = reader["address"].ToString();
         

            }

            return register;

        }


        [WebMethod(Description = " User Change Password  ")]
        public Profile Change_Password(string Username, string OldPassword, string NewPassword)
        {

            SqlParameter param = new SqlParameter("@Username", Username);
            SqlParameter param1 = new SqlParameter("@oldpassword", OldPassword);
            SqlParameter param2 = new SqlParameter("@newpassword", NewPassword);

            SqlCommand cmd = new SqlCommand("sp_change_password", con);

            cmd.Parameters.Add(param);
            cmd.Parameters.Add(param1);
            cmd.Parameters.Add(param2);


            Profile change_password = new Profile();

            cmd.CommandType = CommandType.StoredProcedure;

            con.Open();

            SqlDataReader reader = cmd.ExecuteReader();

            while (reader.Read())
            {

                change_password.Username = reader["username"].ToString();
                change_password.Password = reader["password"].ToString();

            }

            return change_password;

        }



        [WebMethod(Description = " View User Profile   ")]
        public Profile ViewProfile(string Username)
        {

            SqlParameter param = new SqlParameter("@Username", Username);

            SqlCommand cmd = new SqlCommand("sp_ViewProfile3", con);


            cmd.Parameters.Add(param);


            Profile View_Profile = new Profile();
            cmd.CommandType = CommandType.StoredProcedure;

            con.Open();

            SqlDataReader reader = cmd.ExecuteReader();

            while (reader.Read())
            {
                View_Profile.Username = reader["Username"].ToString();
                View_Profile.Password = reader["Password"].ToString();
                View_Profile.First_name = reader["first_name"].ToString();
                View_Profile.Last_name = reader["last_name"].ToString();
                View_Profile.Email = reader["email"].ToString();
                View_Profile.Ic_number = reader["ic_number"].ToString();
                View_Profile.Hp_number = reader["hp_number"].ToString();
                View_Profile.Address = reader["address"].ToString();
                View_Profile.Dob = reader["dob"].ToString();
                View_Profile.Role = reader["role"].ToString();


            }

            return View_Profile;

        }


        [WebMethod(Description = " Edit User Profile ")]
        public Profile EditProfile(string Username, string Password, string First_name, string Last_name, string Email, string Ic_number, string Hp_number, string Address)
        {

            SqlParameter param = new SqlParameter("@Username", Username);
            SqlParameter param1 = new SqlParameter("@Password", Password);
            SqlParameter param2 = new SqlParameter("@email", First_name);
            SqlParameter param3 = new SqlParameter("first_name", First_name);
            SqlParameter param4 = new SqlParameter("last_name", Last_name);
            SqlParameter param5 = new SqlParameter("ic", Ic_number);
            SqlParameter param6 = new SqlParameter("hp", Hp_number);
            SqlParameter param7 = new SqlParameter("@address", Address);

            SqlCommand cmd = new SqlCommand("sp_EditProfile", con);

            cmd.Parameters.Add(param);
            cmd.Parameters.Add(param1);
            cmd.Parameters.Add(param2);
            cmd.Parameters.Add(param3);
            cmd.Parameters.Add(param4);
            cmd.Parameters.Add(param5);
            cmd.Parameters.Add(param6);
            cmd.Parameters.Add(param7);


            Profile Edit_Profile = new Profile();
            cmd.CommandType = CommandType.StoredProcedure;

            con.Open();

            SqlDataReader reader = cmd.ExecuteReader();

            while (reader.Read())
            {
                Edit_Profile.Username = reader["Username"].ToString();
                Edit_Profile.Password = reader["Password"].ToString();
                Edit_Profile.First_name = reader["first_name"].ToString();
                Edit_Profile.Last_name = reader["last_name"].ToString();
                Edit_Profile.Email = reader["email"].ToString();
                Edit_Profile.Ic_number = reader["ic_number"].ToString();
                Edit_Profile.Hp_number = reader["hp_number"].ToString();
                Edit_Profile.Address = reader["address"].ToString();


            }

            return Edit_Profile;

        }


        [WebMethod(Description = " Delete User Profile ( Only authourized by Admin)  ")]
        public Profile DeleteUser(string username)
        {

            SqlParameter param = new SqlParameter("@username", username);


            SqlCommand cmd = new SqlCommand("sp_DeleteUser", con);

            cmd.Parameters.Add(param);


            Profile DeleteUser = new Profile();
            cmd.CommandType = CommandType.StoredProcedure;

            con.Open();

            SqlDataReader reader = cmd.ExecuteReader();

            while (reader.Read())
            {
                DeleteUser.Username = reader["Username"].ToString();
                DeleteUser.Password = reader["Password"].ToString();
                DeleteUser.First_name = reader["first_name"].ToString();
                DeleteUser.Last_name = reader["last_name"].ToString();
                DeleteUser.Email = reader["email"].ToString();
                DeleteUser.Ic_number = reader["ic_number"].ToString();
                DeleteUser.Hp_number = reader["hp_number"].ToString();
                DeleteUser.Address = reader["address"].ToString();


            }

            return DeleteUser;

        }


        [WebMethod(Description = " User Trip Selection  ")]
        public Trip Select_Trip( string boarding_point, string arrival_point, string depart_date, string depart_time)
        {
            
          
            SqlParameter param1 = new SqlParameter("@boarding_point", boarding_point);
            SqlParameter param2 = new SqlParameter("@arrival_point", arrival_point);
            SqlParameter param3 = new SqlParameter("@depart_date", depart_date);   
            SqlParameter param4 = new SqlParameter("@depart_time", depart_time);
         

            SqlCommand cmd = new SqlCommand("sp_SelectTrip_User", con);

            cmd.Parameters.Add(param1);
            cmd.Parameters.Add(param2);
            cmd.Parameters.Add(param3);
            cmd.Parameters.Add(param4);

            Trip SelectTrip = new Trip();

            cmd.CommandType = CommandType.StoredProcedure;

            con.Open();

            SqlDataReader reader = cmd.ExecuteReader();

            while (reader.Read())
            {
                SelectTrip.Trip_id = reader["trip_id"].ToString();
                SelectTrip.Bus_id = reader["bus_id"].ToString();
                SelectTrip.Company_name = reader["company_name"].ToString();
                SelectTrip.Boarding_point = reader["boarding_point"].ToString();
                SelectTrip.Arrival_point = reader["arrival_point"].ToString();
                SelectTrip.Depart_date = reader["depart_date"].ToString();
                SelectTrip.Depart_time = reader["depart_time"].ToString();
                SelectTrip.Arrival_time = reader["arrival_time"].ToString();
                SelectTrip.Adult_fare = reader["adult_fare"].ToString();
                SelectTrip.Child_fare = reader["child_fare"].ToString();
                SelectTrip.Total_time = reader["total_time"].ToString();
   
            }

            return SelectTrip;

        }

        [WebMethod(Description = " Add additional trip  ( Only authourized by Admin)  ")]
        public Trip Add_Trip(string Trip_id, string Buscompanyid, string Bus_id, string Boarding_point, string Arrival_point, string Depart_date, string Depart_time, string Arrival_time, string Adult_fare, string Child_fare, string Total_time)
        {

            SqlParameter param = new SqlParameter("@trip_id ", Trip_id);
            SqlParameter param1 = new SqlParameter("@buscompany_id ", Buscompanyid);
            SqlParameter param2 = new SqlParameter("@bus_id ", Bus_id);
            SqlParameter param3 = new SqlParameter("@boarding_point", Boarding_point);
            SqlParameter param4 = new SqlParameter("@arrival_point", Arrival_point);
            SqlParameter param5 = new SqlParameter("@depart_date", Depart_date);
            SqlParameter param7 = new SqlParameter("@depart_time", Depart_time);
            SqlParameter param8 = new SqlParameter("@arrival_time", Arrival_time);
            SqlParameter param9 = new SqlParameter("@adult_fare", Adult_fare);
            SqlParameter param10 = new SqlParameter("@child_fare", Child_fare);
            SqlParameter param11 = new SqlParameter("@total_time", Total_time);

            SqlCommand cmd = new SqlCommand("sp_Addtrip", con);

            cmd.Parameters.Add(param);
            cmd.Parameters.Add(param1);
            cmd.Parameters.Add(param2);
            cmd.Parameters.Add(param3);
            cmd.Parameters.Add(param4);
            cmd.Parameters.Add(param5);
            cmd.Parameters.Add(param7);
            cmd.Parameters.Add(param8);
            cmd.Parameters.Add(param9);
            cmd.Parameters.Add(param10);
            cmd.Parameters.Add(param11);

            Trip Add_Trip = new Trip();

            cmd.CommandType = CommandType.StoredProcedure;

            con.Open();

            SqlDataReader reader = cmd.ExecuteReader();

            while (reader.Read())
            {

                Add_Trip.Trip_id = reader["trip_id"].ToString();
                Add_Trip.Bus_id = reader["bus_id"].ToString();
                Add_Trip.Company_name = reader["company_name"].ToString();
                Add_Trip.Boarding_point = reader["boarding_point"].ToString();
                Add_Trip.Arrival_point = reader["arrival_point"].ToString();
                Add_Trip.Depart_date = reader["depart_date"].ToString();
                Add_Trip.Depart_time = reader["depart_time"].ToString();
                Add_Trip.Arrival_time = reader["arrival_time"].ToString();
                Add_Trip.Adult_fare = reader["adult_fare"].ToString();
                Add_Trip.Child_fare = reader["child_fare"].ToString();
                Add_Trip.Total_time = reader["total_time"].ToString();

            }

            return Add_Trip;

        }


        [WebMethod(Description = " Edit trip in the system  ( Only authourized by Admin)  ")]
        public Trip Edit_Trip(string Trip_id, string Bus_id, string Bus_companyID, string Boarding_point, string Arrival_point, string Depart_date, string Depart_time, string Arrival_time, string Adult_fare, string Child_fare, string Total_time)
        {

            SqlParameter param = new SqlParameter("@trip_id ", Trip_id);
            SqlParameter param2 = new SqlParameter("@buscompany_id  ", Bus_companyID);
            SqlParameter param1 = new SqlParameter("@bus_id ", Bus_id);
            SqlParameter param3 = new SqlParameter("@boarding_point", Boarding_point);
            SqlParameter param4 = new SqlParameter("@arrival_point", Arrival_point);
            SqlParameter param5 = new SqlParameter("@depart_date", Depart_date);
            SqlParameter param7 = new SqlParameter("@depart_time", Depart_time);
            SqlParameter param8 = new SqlParameter("@arrival_time", Arrival_time);
            SqlParameter param9 = new SqlParameter("@adult_fare", Adult_fare);
            SqlParameter param10 = new SqlParameter("@child_fare", Child_fare);
            SqlParameter param11 = new SqlParameter("@total_time", Total_time);

            SqlCommand cmd = new SqlCommand("sp_Edit_Trip", con);

            cmd.Parameters.Add(param);
            cmd.Parameters.Add(param2);
            cmd.Parameters.Add(param1);
            
            cmd.Parameters.Add(param3);
            cmd.Parameters.Add(param4);
            cmd.Parameters.Add(param5);
            cmd.Parameters.Add(param7);
            cmd.Parameters.Add(param8);
            cmd.Parameters.Add(param9);
            cmd.Parameters.Add(param10);
            cmd.Parameters.Add(param11);

            Trip Edit_Trip = new Trip();

            cmd.CommandType = CommandType.StoredProcedure;

            con.Open();

            SqlDataReader reader = cmd.ExecuteReader();

            while (reader.Read())
            {
              
                Edit_Trip.Boarding_point = reader["boarding_point"].ToString();
                Edit_Trip.Arrival_point = reader["arrival_point"].ToString();
                Edit_Trip.Depart_date = reader["depart_date"].ToString();
                Edit_Trip.Depart_time = reader["depart_time"].ToString();

            }

            return Edit_Trip;

        }

        [WebMethod(Description = "Delete selected trip in the system  ( Only authourized by Admin)  ")]
        public Trip Delete_Trip(string Trip_id)
        {

            SqlParameter param = new SqlParameter("@trip_id ", Trip_id);


            SqlCommand cmd = new SqlCommand("sp_delete_trip", con);

            cmd.Parameters.Add(param);


            Trip DeleteTrip = new Trip();

            cmd.CommandType = CommandType.StoredProcedure;

            con.Open();

            SqlDataReader reader = cmd.ExecuteReader();

            while (reader.Read())
            {

                DeleteTrip.Boarding_point = reader["boarding_point"].ToString();
                DeleteTrip.Boarding_point = reader["boarding_point"].ToString();
                DeleteTrip.Arrival_point = reader["arrival_point"].ToString();
                DeleteTrip.Depart_date = reader["depart_date"].ToString();
                DeleteTrip.Depart_time = reader["depart_time"].ToString();


            }

            return DeleteTrip;

        }

        [WebMethod(Description = " View available trip in the system  ( Only authourized by Admin)  ")]
        public Trip View_Trip(string boarding_point, string arrival_point)
        {

            SqlParameter param = new SqlParameter("@departure", boarding_point);
            SqlParameter param1 = new SqlParameter("@arrival", arrival_point);
      

            SqlCommand cmd = new SqlCommand("sp_ViewTrip2", con);

            cmd.Parameters.Add(param);
            cmd.Parameters.Add(param1);
     


            Trip ViewTrip = new Trip();

            cmd.CommandType = CommandType.StoredProcedure;

            con.Open();

            SqlDataReader reader = cmd.ExecuteReader();

            while (reader.Read())
            {

                ViewTrip.Trip_id = reader["trip_id"].ToString();
                ViewTrip.Bus_id = reader["bus_id"].ToString();
                ViewTrip.Company_name = reader["company_name"].ToString();
                ViewTrip.Boarding_point = reader["boarding_point"].ToString();
                ViewTrip.Arrival_point = reader["arrival_point"].ToString();
                ViewTrip.Depart_date = reader["depart_date"].ToString();
                ViewTrip.Depart_time = reader["depart_time"].ToString();
                ViewTrip.Arrival_time = reader["arrival_time"].ToString();
                ViewTrip.Adult_fare = reader["adult_fare"].ToString();
                ViewTrip.Child_fare = reader["child_fare"].ToString();
                ViewTrip.Total_time = reader["total_time"].ToString();


            }

            return ViewTrip;

        }


        [WebMethod(Description = " User check available trips in the system")]
        public Trip CheckTrip(string Boarding_point, string Arrival_point, string Depart_date,  string Depart_time)
        {

          
            SqlParameter param1 = new SqlParameter("@boarding_point ", Boarding_point);
            SqlParameter param2 = new SqlParameter("@arrival_point ", Arrival_point);
            SqlParameter param3 = new SqlParameter("@depart_date", Depart_date);
            SqlParameter param4 = new SqlParameter("@depart_time ", Depart_time);

            
            SqlCommand cmd = new SqlCommand("sp_CheckTrip", con);

           
           cmd.Parameters.Add(param1);
           cmd.Parameters.Add(param2);
           cmd.Parameters.Add(param3);
           cmd.Parameters.Add(param4);



            Trip ViewTrip = new Trip();

            cmd.CommandType = CommandType.StoredProcedure;

            con.Open();

            SqlDataReader reader = cmd.ExecuteReader();

            while (reader.Read())
            {

                ViewTrip.Trip_id =  reader["trip_id"].ToString();
                ViewTrip.Company_name = reader["company_name"].ToString();
               
                ViewTrip.Bus_Id = reader["bus_id"].ToString();
                ViewTrip.Boarding_point = reader["boarding_point"].ToString();
                ViewTrip.Arrival_point = reader["arrival_point"].ToString();
                ViewTrip.Depart_date = reader["depart_date"].ToString();
                ViewTrip.Depart_time = reader["depart_time"].ToString();
                ViewTrip.Adult_fare = reader["adult_fare"].ToString();
                ViewTrip.Child_fare = reader["child_fare"].ToString();
                ViewTrip.Total_time = reader["total_time"].ToString();

            }

            return ViewTrip;

        }



        [WebMethod(Description = " Add additional Bus to the system ( Only authourized by Admin)  ")]
        public Trip Add_Bus(string Bus_Id,string Bus_companyID, string Trip_id, string Reg_num)
        {

            SqlParameter param = new SqlParameter("@bus_id ", Bus_Id);
            SqlParameter param1 = new SqlParameter("@buscompany_id ", Bus_companyID);
            SqlParameter param2 = new SqlParameter("@trip_id", Trip_id);
            SqlParameter param3 = new SqlParameter("@reg_num", Reg_num);



            SqlCommand cmd = new SqlCommand("sp_Add_Bus", con);

            cmd.Parameters.Add(param);
            cmd.Parameters.Add(param1);
            cmd.Parameters.Add(param2);
            cmd.Parameters.Add(param3);

            Trip AddBus = new Trip();

            cmd.CommandType = CommandType.StoredProcedure;

            con.Open();

            SqlDataReader reader = cmd.ExecuteReader();

            while (reader.Read())
            {


                AddBus.Bus_Id = reader["bus_id"].ToString();
                AddBus.Bus_companyID = reader["buscompany_id"].ToString();
                AddBus.Trip_id = reader["trip_id"].ToString();
                AddBus.Reg_num = reader["reg_num"].ToString();
  

            }

            return AddBus;

        }




        [WebMethod(Description = "View availabe bus in the system ( Only authourized by Admin)  ")]
        public Trip View_Bus(string BusCompany_ID)
        {

            SqlParameter param = new SqlParameter("@buscompanyid", BusCompany_ID);

            SqlCommand cmd = new SqlCommand("sp_ViewBus2", con);

            cmd.Parameters.Add(param);


            Trip ViewBus = new Trip();

            cmd.CommandType = CommandType.StoredProcedure;

            con.Open();

            SqlDataReader reader = cmd.ExecuteReader();

            while (reader.Read())
            {


                ViewBus.Bus_Id = reader["bus_id"].ToString();
                ViewBus.Company_name = reader["company_name"].ToString();
                ViewBus.Trip_id = reader["trip_id"].ToString();
                ViewBus.Reg_num = reader["reg_num"].ToString();

                ViewBus.Boarding_point = reader["boarding_point"].ToString();
                ViewBus.Arrival_point = reader["arrival_point"].ToString();
                ViewBus.Depart_date = reader["depart_date"].ToString();
            }

            return ViewBus;

        }


        [WebMethod(Description = " Delete Selected bus from the system ( Only authourized by Admin)  ")]
        public Trip Delete_Bus(string bus_id)
        {

            SqlParameter param = new SqlParameter("@bus_id ", bus_id);

            SqlCommand cmd = new SqlCommand("sp_DeleteBus", con);

            cmd.Parameters.Add(param);


            Trip DeleteBus = new Trip();

            cmd.CommandType = CommandType.StoredProcedure;

            con.Open();

            SqlDataReader reader = cmd.ExecuteReader();

            while (reader.Read())
            {


                DeleteBus.Bus_Id = reader["bus_id"].ToString();
                DeleteBus.Bus_companyID = reader["buscompany_id"].ToString();
                DeleteBus.Trip_id = reader["trip_id"].ToString();
                DeleteBus.Reg_num = reader["reg_num"].ToString();


            }

            return DeleteBus;

        }



        [WebMethod(Description = " Add additional bus company to the system ( Only authourized by Admin)  ")]
        public Trip Add_BusCompany(string Bus_companyID, string Company_name)
        {

            SqlParameter param = new SqlParameter("@buscompany_id", Bus_companyID);
            SqlParameter param1 = new SqlParameter("@company_name", Company_name);

            SqlCommand cmd = new SqlCommand("sp_Add_BusCompany", con);

            cmd.Parameters.Add(param);
            cmd.Parameters.Add(param1);


            Trip AddBus_Company = new Trip();

            cmd.CommandType = CommandType.StoredProcedure;

            con.Open();

            SqlDataReader reader = cmd.ExecuteReader();

            while (reader.Read())
            {



                AddBus_Company.Bus_companyID = reader["buscomponay_id"].ToString();
                AddBus_Company.Company_name = reader["company_name"].ToString();


            }

            return AddBus_Company;

        }


        [WebMethod(Description = " View available Bus Company in the system  ( Only authourized by Admin)  ")]
        public Trip View_BusCompany(string Bus_companyID)
        {

            SqlParameter param = new SqlParameter("@buscompanyID", Bus_companyID);

            SqlCommand cmd = new SqlCommand("sp_selectBus", con);

            cmd.Parameters.Add(param);

            Trip ViewBus_Company = new Trip();

            cmd.CommandType = CommandType.StoredProcedure;

            con.Open();

            SqlDataReader reader = cmd.ExecuteReader();

            while (reader.Read())
            {

                ViewBus_Company.Bus_companyID = reader["buscomponay_id"].ToString();
                ViewBus_Company.Company_name = reader["company_name"].ToString();


            }

            return ViewBus_Company;

        }

        [WebMethod(Description = " Delete selected Bus Company from the system  ( Only authourized by Admin)  ")]
        public Trip Delete_BusCompany(string Bus_companyID)
        {

            SqlParameter param = new SqlParameter("@buscompany_id", Bus_companyID);


            SqlCommand cmd = new SqlCommand("sp_delete_Buscompany", con);

            cmd.Parameters.Add(param);


            Trip DeleteBus_Company = new Trip();

            cmd.CommandType = CommandType.StoredProcedure;

            con.Open();

            SqlDataReader reader = cmd.ExecuteReader();

            while (reader.Read())
            {

                DeleteBus_Company.Bus_companyID = reader["buscomponay_id"].ToString();
                DeleteBus_Company.Company_name = reader["company_name"].ToString();

            }

            return DeleteBus_Company;

        }


    }



}

