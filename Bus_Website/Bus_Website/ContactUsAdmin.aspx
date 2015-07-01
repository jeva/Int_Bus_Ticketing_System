<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ContactUsAdmin.aspx.cs"
    Inherits="Bus_Website.ContactUsAdmin" %>

<!DOCTYPE html PUBLIC "-//WSC//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Contact Us</title>
    <style type="text/css">
        #TextArea1
        {
            margin-left: 17px;
        }
        #Reset1
        {
            width: 76px;
        }
    </style>
    <img src="bus.png" alt="JS Logo" style="width: 282px; height: 159px; margin-top: 0px" />
    <img src="logo1.PNG" alt="MMU Logo" style="width: 1169px; height: 159px; margin-left: 3px;
        margin-top: 0px" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</head>
<body>
    <div style='position:absolute;z-index:-20;left:0;top:0;width:100%;height:270%'>
  <img src="imagea3.jpg" style='width:100%;height:100%' alt='[]' />
</div>
        <link rel='stylesheet' type='text/css' href='styles.css' />
        <br />
        <div id='cssmenu'>
            <ul>
                <li><a href="Admin.aspx"><span>Home</span></a></li>
                <li class='has-sub'><a href='#'><span>User Profile</span></a>
                    <ul>
                        <li class='has-sub'><a href="EditProfile(Admin).aspx">Edit Profile</a>
                            <li class='has-sub'><a href="ChangePassword(Admin).aspx"><span>Change Password</span></a>
                                <li class='has-sub'><a href="ViewProfile(Admin).aspx"><span>View Profile</span></a>
                                    <li class='has-sub'><a href="Delete User.aspx"><span>Delete User</span></a> </li>
                    </ul>
                </li>
                <li class='has-sub'><a href='#'><span>Tickets</span></a>
                    <ul>
                        <li class='has-sub'><a href="SelectTripAdmin.aspx"><span>Purchase Ticket(e-Ticket)</span></a>
                                    <li class='has-sub'><a href="ViewTicketAdmin.aspx"><span>View Ticket</span></a> </li>
                                    
                    </ul>
                    <li class='has-sub'><a href='#'><span>Trips</span></a>
                        <ul>
                            <li class='has-sub'><a href="Check Trip(Admin).aspx"><span>Check Trip Schedule</span></a>
                            </li>
                            <li class='has-sub'><a href="AddTrip.aspx"><span>Add Trip</span></a> </li>
                            <li class='has-sub'><a href="Edittrip2.aspx"><span>Edit Trip </span></a></li>
                            <li class='has-sub'><a href="ViewTrip.aspx"><span>View Trip </span></a></li>
                            <li class='has-sub'><a href="DeleteTrip.aspx"><span>Delete Trip </span></a></li>
                        </ul>
                        <li class='has-sub'><a href='#'><span>Bus Company</span></a>
                            <ul>
                                <li class='has-sub'><a href="Add BusCompany.aspx"><span>Add Bus Company</span></a></li>
                                <li class='has-sub'><a href="ViewBusCompany.aspx"><span>View Bus Company </span></a></li>
                                <li class='has-sub'><a href="DeleteBusCompany.aspx"><span>Delete Bus Company </span></a></li>
                            </ul>
                            <li class='has-sub'><a href='#'><span>Bus</span></a>
                                <ul>
                                    <li class='has-sub'><a href="AddBus.aspx"><span>Add Bus </span></a></li>
                                    
                                    <li class='has-sub'><a href="ViewBus.aspx"><span>View Bus</span></a> </li>
                                    <li class='has-sub'><a href="DeleteBus.aspx"><span>Delete Bus</span></a> </li>
                                </ul>
                                <li class='has-sub'><a href="ContactUsAdmin.aspx"><span>Contact Us</span></a> </li>
                                <li><a href="Homepage.aspx"><span>Logout</span></a></li>
            </ul>
        </div>
    
        <br />
        <br />
        &nbsp&nbsp&nbsp&nbsp&nbsp<font color=" black " size=" 8 "> <b>Contact Us</b> </font>
        <p style="height: 1px">
            <br />
        </p>
        <form id="form1" runat="server">
        <div style="height: 1670px">
            &nbsp&nbsp&nbsp&nbsp&nbsp<b><font size="4" face="calibri" color="black"> You burning
                questions answered !!</b></font>
            <p>
                <br><b>&nbsp&nbsp&nbsp&nbsp&nbsp<font size="5" face="calibri" color="black"> EMAIL</font></b></br>
            </p>
            <ul>
                <font size="4" face="calibri" color="black">
                    <li>For enquiries on bus ticketing and customer service:</li></p></font>
            </ul>
            &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp <font size="4" face="calibri"
                color="black">custsrvc@jsbusservice.com.my.</font>
            <p>
                <br><b>&nbsp&nbsp&nbsp&nbsp&nbsp<font size="5" face="calibri" color="black"> TELEPHONE</font></b></br>
            </p>
            <ul>
                <font size="4" face="calibri" color="black">
                    <li>General Line : (604) 7678-0066</li></p></font> <font size="4" face="calibri"
                        color="black">
                        <li>Customer Service Line : (604) 7678-0077</li></p></font>
            </ul>
            <p>
                <br><b>&nbsp&nbsp&nbsp&nbsp&nbsp<font size="5" face="calibri" color="black"> FAX</font></b></br>
            </p>
            <ul>
                <font size="4" face="calibri" color="black">
                    <li>(604) 7806-8877</li></p></font>
            </ul>
            <p>
                <br><b>&nbsp&nbsp&nbsp&nbsp&nbsp<font size="5" face="calibri" color="black">OFFICE ADDRESS</font></b></br>
            </p>
            <ul>
                <font size="4" face="calibri" color="black">
                    <li>No. 1, Jalan SS22/19, Aman Jaya, 57555 Subang Jaya, Selangor Darul Ehsan, Malaysia
                    </li>
                    </p></font>
            </ul>
            <p>
                <br><b>&nbsp&nbsp&nbsp&nbsp&nbsp<font size="5" face="calibri" color="black">OPERATION
                    HOURS</font></b></br>
            </p>
            <ul>
                <font size="4" face="calibri" color="black">
                    <li>Monday – Friday (closed on public holidays)</li></p></font> <font size="4" face="calibri"
                        color="black">
                        <li>9:00am - 6:00pm</li></p></font>
            </ul>
   
            </form>
    </body>
</html>
