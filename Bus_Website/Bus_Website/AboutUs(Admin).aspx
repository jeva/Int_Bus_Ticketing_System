<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AboutUs(Admin).aspx.cs" Inherits="Bus_Website.AboutUs_Admin_" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin:: About Us</title>
</head>
<body>
 <body bgcolor="99FF66">

    <div id='cssmenu'>
        <ul>
            <li><a href="Admin.aspx"><span>Home</span></a></li>
            <li class='has-sub'><a href='#'><span>User Profile</span></a>
                <ul>
                    <li class='has-sub'><a href="EditProfile(Admin).aspx">Edit Profile</a>
                        <li class='has-sub'><a href="ChangePassword(Admin).aspx"><span>Change Password</span></a>
                            <li class='has-sub'><a href="ViewProfile(Admin).aspx"><span>View Profile</span></a>
                                <li class='has-sub'><a href="ViewProfile.aspx"><span>Delete User</span></a> </li>
                </ul>
            </li>
            <li class='has-sub'><a href='#'><span>Tickets</span></a>
                <ul>
                    <li class='has-sub'><a href="SelectTripDetails(Admin)aspx.aspx"><span>Purchase Ticket
                        (e-Ticket)</span></a>
                        <li class='has-sub'><a href="Print Ticket.aspx"><span>Print Ticket</span></a>
                            <li class='has-sub'><a href="Edit Ticket.aspx"><span>Edit Ticket</span></a>
                                <li class='has-sub'><a href="View Ticket.aspx"><span>View Ticket</span></a> </li>
                                <li class='has-sub'><a href="View Ticket.aspx"><span>Delete Ticket</span></a> </li>
                </ul>
                <li class='has-sub'><a href='#'><span>Trips</span></a>
                    <ul>
                        <li class='has-sub'><a href="Check Trip(Admin).aspx"><span>Check Trip Schedule</span></a>
                        </li>
                        <li class='has-sub'><a href="AddTrip.aspx"><span>Add Trip</span></a> </li>
                        <li class='has-sub'><a href="EditTrip.aspx"><span>Edit Trip </span></a></li>
                        <li class='has-sub'><a href="ViewTrip.aspx"><span>View Trip </span></a></li>
                        <li class='has-sub'><a href="DeleteTrip.aspx"><span>Delete Trip </span></a></li>
                    </ul>
                    <li class='has-sub'><a href='#'><span>Bus Company</span></a>
                        <ul>
                            <li class='has-sub'><a href="Add BusCompany.aspx"><span>Add Bus Company</span></a>
                            </li>
                            <li class='has-sub'><a href="ViewBusCompany.aspx"><span>View Bus Company </span></a>
                            </li>
                        </ul>
                        <li class='has-sub'><a href='#'><span>Bus</span></a>
                            <ul>
                                <li class='has-sub'><a href="AddBus.aspx"><span>Add Bus </span></a></li>
                                <li class='has-sub'><a href="EditBus.aspx"><span>Edit Bus</span></a> </li>
                                <li class='has-sub'><a href="ViewBus.aspx"><span>View Bus</span></a> </li>
                                <li class='has-sub'><a href="DeleteBus.aspx"><span>Delete Bus</span></a> </li>
                            </ul>
                            <li class='has-sub'><a href="ContactUsAdmin.aspx"><span>Contact Us</span></a> </li>
                            <<li class='has-sub'><a href="AboutUs(Admin).aspx"><span>About Us</span></a> </li>
                            <li><a href="Homepage.aspx"><span>Logout</span></a></li>
        </ul>


    </div>
    <form id="form1" runat="server">
    <div>
    
    </div>
    </form>
</body>
</html>
