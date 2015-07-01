<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Edit Profile2.aspx.cs" Inherits="Bus_Website.ProfileManagement.EditProfile.Edit_Profile2" %>

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
                    <li><a href='index.html'><span>Home</span></a></li>
                    <li class='has-sub'><a href='#'><span>User Profile</span></a>
                        <ul>
                            <li class='has-sub'><a href='#'><span>User Login</span></a>
                                <li class='has-sub'><a href="../Profile/Registration/Registration.aspx"><span>Registration</span></a>
                                    <li class='has-sub'><a href="../ProfileManagement/EditProfile/EditProfile.aspx"><span>Edit Profile</span></a>
                                        <li class='has-sub'><a href='#'><span>Change Password</span></a>
                                            <li class='has-sub'><a href="../Profile/ViewProfile/ViewProfile.aspx"><span>View Profile</span></a> </li>
                        </ul>
                    </li>
                    <li class='has-sub'><a href='#'><span>Tickets</span></a>
                        <ul>
                            <li class='has-sub'><a href='#'><span>Purchase Ticket (e-Ticket)</span></a>
                                <li class='has-sub'><a href='#'><span>Print Ticket</span></a>
                                    <li class='has-sub'><a href='#'><span>Edit Ticket</span></a>
                                        <li class='has-sub'><a href='#'><span>View Ticket</span></a> </li>
                        </ul>
                        <li class='has-sub'><a href='#'><span>Trips</span></a>
                            <ul>
                                <li class='has-sub'><a href='#'><span>Check Trip Schedule</span></a> </li>
                            </ul>
                            <li class='has-sub'><a href='#'><span>Contact Us</span></a> </li>
                            <li class='has-sub'><a href='Profile'><span>About Us</span></a> </li>
                </ul>
            </div>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="Label3" runat="server" ForeColor="White" Text="New Username : " 
                        Visible="False"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server" style="margin-left: 5px" 
                        Width="131px" Visible="False"></asp:TextBox>
                    <br />
                    <asp:Label ID="Label4" runat="server" ForeColor="White" 
                        Text="Current Password : " Visible="False"></asp:Label>
                    <asp:TextBox ID="TextBox2" runat="server" Height="22px" 
                        style="margin-left: 0px; margin-top: 9px;" Width="133px" Visible="False"></asp:TextBox>
    
    </div>
    </form>
</body>
</html>
