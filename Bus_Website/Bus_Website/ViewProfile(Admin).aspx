﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewProfile(Admin).aspx.cs" Inherits="Bus_Website.ViewProfile_Admin_" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <link rel='stylesheet' type='text/css' href='styles.css' />
    <title>Admin::View Profile</title>
    <img src="bus.png" alt="JS Logo" style="width: 282px; height: 159px; margin-top: 0px" />
    <img src="logo1.PNG" alt="MMU Logo" style="width: 1169px; height: 159px; margin-left: 3px;
        margin-top: 0px" />&nbsp;
</head>
<body>
<div style='position:absolute;z-index:-20;left:0;top:0;width:100%;height:200%'>
  <img src="imagea3.jpg" style='width:100%;height:100%' alt='[]' />
</div>
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
                                <li><a href="Homepage.aspx"><span>Logout</span></a></li>
            </ul>
        </div>
    <center>
        <font color=" black " size=" 8 ">
            <p>
                <strong>View Profile</strong>
            </p>
        </font>
    </center>
    <form id="form1" runat="server">
    <div>
        &nbsp;&nbsp;&nbsp;&nbsp;<font color=" white " size=" 8 "><br />
            <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" Font-Bold="True"
                Font-Italic="False" Font-Names="Arial" Font-Overline="False" Font-Size="Large"
                Font-Strikeout="False" Font-Underline="False" ForeColor="Black" HorizontalAlign="Center"
                Style="margin-right: 0px; margin-left: 141px;">
                <ItemTemplate>
                    Username&nbsp;&nbsp;&nbsp;&nbsp;&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp:
                    <asp:Label ID="usernameLabel" runat="server" Text='<%# Eval("username") %>' />
                    <br />
                    <br />
                    <br />
                    First Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp:
                    <asp:Label ID="first_nameLabel" runat="server" Text='<%# Eval("first_name") %>' />
                    <br />
                    <br />
                    <br />
                    Last Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp&nbsp&nbsp&nbsp&nbsp:
                    <asp:Label ID="last_nameLabel" runat="server" Text='<%# Eval("last_name") %>' />
                    <br />
                    <br />
                    <br />
                    Email &nbsp;&nbsp&nbsp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:
                    <asp:Label ID="emailLabel" runat="server" Text='<%# Eval("email") %>' />
                    <br />
                    <br />
                    <br />
                    NRIC &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp&nbsp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    :
                    <asp:Label ID="ic_numberLabel" runat="server" Text='<%# Eval("ic_number") %>' />
                    <br />
                    <br />
                    <br />
                    H/P Number &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:
                    <asp:Label ID="hp_numberLabel" runat="server" Text='<%# Eval("hp_number") %>' />
                    <br />
                    <br />
                    <br />
                    Address &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:
                    <asp:Label ID="addressLabel" runat="server" Text='<%# Eval("address") %>' />
                    <br />
                    <br />
                    <br />
                    Date Of Birth&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:
                    <asp:Label ID="dobLabel" runat="server" Text='<%# Eval("dob") %>' />
                    <br />
                    <br />
                    <br />
                </ItemTemplate>
            </asp:DataList>
        </font>
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<div>
        </div>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        &nbsp;
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
        &nbsp;<br />
        <br />
        &nbsp;<br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Online_BusConnectionString %>"
            SelectCommand="sp_ViewProfile" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:SessionParameter Name="Username" SessionField="userName" Type="String" />
                <asp:SessionParameter Name="Password" SessionField="password" Type="String" />
                <asp:SessionParameter DefaultValue="" Name="temp" SessionField="temp" 
                    Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
