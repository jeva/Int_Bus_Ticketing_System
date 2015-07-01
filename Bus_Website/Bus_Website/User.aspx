<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="User.aspx.cs" Inherits="Bus_Website.Homepage.User" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

        <img src="bus.png" alt="JS Logo" style="width: 282px; height: 159px; margin-top: 0px" />
    <img src="logo1.PNG" alt="MMU Logo" style="width: 1169px; height: 159px; margin-left: 3px;
        margin-top: 0px" />&nbsp;

</head>
<body>


    <body text="#000000">
        <body background="background.jpg" text="#000000">
            <link rel='stylesheet' type='text/css' href='styles.css' />
            
            <br />
            <br />
                <div id='cssmenu'>
                <ul>
                    <li><a href="Homepage_User.aspx"><span>Home</span></a></li>
                    <li class='has-sub'><a href='#'><span>User Profile</span></a>
                        <ul>
                            <li class='has-sub'><a href='#'><span>User Login</span></a>
                                <li class='has-sub'><a href="Registration.aspx"><span>
                                    Registration</span></a>
                                    <li class='has-sub'><a href="EditProfile.aspx">
                                        Edit Profile</a>
                                        <li class='has-sub'><a href="ChangePassword.aspx">
                                            <span>Change Password</span></a>
                                            <li class='has-sub'><a href="ViewProfile.aspx"><span>View Profile</span></a>
                                            </li>
                        </ul>
                    </li>
                    <li class='has-sub'><a href='#'><span>Tickets</span></a>
                        <ul>
                            <li class='has-sub'><a href="Select_trip.aspx">
                                <span>Purchase Ticket (e-Ticket)</span></a>
                                <li class='has-sub'><a href="Print Ticket.aspx"><span>
                                    Print Ticket</span></a>
                                    <li class='has-sub'><a href="Edit Ticket.aspx"><span>
                                        Edit Ticket</span></a>
                                        <li class='has-sub'><a href="View Ticket.aspx"><span>
                                            View Ticket</span></a> </li>
                        </ul>
                        <li class='has-sub'><a href='#'><span>Trips</span></a>
                            <ul>
                                <li class='has-sub'><a href="Check Trip.aspx"><span>
                                    Check Trip Schedule</span></a> </li>
                            </ul>
                            <li class='has-sub'><a href="Contact Us.aspx"><span>Contact Us</span></a> </li>
                            <<li class='has-sub'><a href="About Us.aspx"><span>About Us</span></a> </li>
                </ul>
            </div>
            <br />
    <form id="form1" runat="server">
    <div>

                <center>
                <font color=" white " size=" 8 ">
                    <p>
                        User Page
                    </p>
                </font>
            </center>
    
    </div>
    </form>
</body>
</html>
