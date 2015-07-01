<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Homepage_User.aspx.cs"
    Inherits="Bus_Website.Homepage_User" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Homepage :: User </title>
    <style type="text/css">
        .style1
        {
            font-size: x-large;
        }
        .style2
        {
            font-family: "Buxton Sketch";
        }
    </style>
    <img src="bus.png" alt="JS Logo" style="width: 282px; height: 159px; margin-top: 0px" />
    <img src="logo1.PNG" alt="MMU Logo" style="width: 1169px; height: 159px; margin-left: 3px;
        margin-top: 0px" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;<font color=" black "
        size=" 5 "><strong><asp:Label ID="Label1" runat="server" Text="Welcome," Visible="False"></asp:Label>
        <asp:Label ID="Label2" runat="server" Text="Label" Visible="False"></asp:Label>
        </strong>&nbsp;<strong><asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
    </strong></font>
    </font>
    <link href="js-image-slider.css" rel="stylesheet" type="text/css" />
    <script src="js-image-slider.js" type="text/javascript"></script>
    <link href="generic.css" rel="stylesheet" type="text/css" />
</head>
<body>
   
<div style='position:absolute;z-index:-20;left:0;top:0;width:100%;height:135%'>
  <img src="images1.jpg" style='width:100%;height:100%' alt='[]' />
</div>
        <link rel='stylesheet' type='text/css' href='styles.css' />
        <br />
        <br />
        <div id='cssmenu'>
            <ul>
                <li><a href="Homepage_User.aspx"><span>Home</span></a></li>
                <li class='has-sub'><a href='#'><span>User Profile</span></a>
                    <ul>
                        <li class='has-sub'><a href="EditProfile.aspx">Edit Profile</a>
                            <li class='has-sub'><a href="ChangePassword.aspx"><span>Change Password</span></a>
                                <li class='has-sub'><a href="ViewProfile.aspx"><span>View Profile</span></a> </li>
                    </ul>
                </li>
                <li class='has-sub'><a href='#'><span>Tickets</span></a>
                    <ul>
                        <li class='has-sub'><a href="SelectTripUser.aspx"><span>Purchase Ticket (e-Ticket)</span></
                                    <li class='has-sub'><a href="View Ticket.aspx"><span>View Ticket</span></a> </li>
                    </ul>
                    <li class='has-sub'><a href='#'><span>Trips</span></a>
                        <ul>
                            <li class='has-sub'><a href="CheckTrip(User).aspx"><span>Check Trip Schedule</span></a>
                            </li>
                        </ul>
                        <li class='has-sub'><a href="Contact Us.aspx"><span>Contact Us</span></a> </li>
                        <li><a href="Homepage.aspx"><span>Logout</span></a></li>
            </ul>
        </div>
        <br />
        <form id="form1" runat="server">
        <div>
            <center>
                <font color=" black " size=" 8 ">
                    <asp:Panel ID="Panel2" runat="server">
                        <span class="style2"><strong>
                        <br class="style1" /><marquee style="font-size: xx-large"><font color=" black " size=" 5 ">
                        <span class="style1">We can solve all your ticketing issues.Go and grab your 
                        tickets now !!!</span></strong></span><br /></marquee>
                        <br />
                        <br />
                        </strong></span>
                    </asp:Panel>
                </font>
            </center>
        </div>
        <div id="sliderFrame">
            <div id="slider">
                <img src="images/transnasional.jpg" alt="Grab your tickets on . Hurry !! " />
                </a>
                <img src="images/fleet1.jpg" alt="The best ticketing solution without any hassle." />

            </div>
        </div>
        </form>
    </body>
</html>
