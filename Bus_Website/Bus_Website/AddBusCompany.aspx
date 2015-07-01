<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddBusCompany.aspx.cs" Inherits="Bus_Website.WebForm1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin :: Add Bus Company</title>
    <style type="text/css">
        #Reset1
        {
            width: 67px;
            margin-left: 16px;
        }
    </style>
    <img src="bus.png" alt="JS Logo" style="width: 282px; height: 159px; margin-top: 0px" />
    <img src="logo1.PNG" alt="MMU Logo" style="width: 1169px; height: 159px; margin-left: 3px;
        margin-top: 0px" />&nbsp;
</head>
<body>
 <body bgcolor="99FF66">
    <link rel='stylesheet' type='text/css' href='styles.css' />
    <br />
    <br />
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
                                <li class='has-sub'><a href="ViewBus.aspx"><span>View Bus</span></a> </li>
                                <li class='has-sub'><a href="DeleteBus.aspx"><span>Delete Bus</span></a> </li>
                            </ul>
                            <li class='has-sub'><a href="ContactUsAdmin.aspx"><span>Contact Us</span></a> </li>
                            <<li class='has-sub'><a href="AboutUs(Admin).aspx"><span>About Us</span></a> </li>
                            <li><a href="Homepage.aspx"><span>Logout</span></a></li>
        </ul>


    </div>
    <form id="form1" runat="server">
    <br />
    <br />
    <center>
        <font color=" black " size=" 8 "><strong>Add Bus Company</strong></font></center>
    <br />
    <br />
    <br />
    <font color=" black " size=" 5 ">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
    Bus Company ID&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :
    <asp:TextBox ID="TextBox3" runat="server" style="margin-left: 12px"></asp:TextBox>
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Bus 
    Company Name&nbsp;&nbsp;&nbsp; :
    <asp:TextBox ID="TextBox2" runat="server" style="margin-left: 9px"></asp:TextBox>
    <br />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    <br />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Submit" />
    <input id="Reset1" type="reset" value="Reset" /><br />
    </font>&nbsp;<div>
    </div>
    </form>
</body>
</html>
