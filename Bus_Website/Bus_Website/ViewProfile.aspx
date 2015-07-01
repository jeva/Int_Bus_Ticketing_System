<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewProfile.aspx.cs" Inherits="Bus_Website.Profile_Management.Edit_Profile.View_Profile" %>

<%@ Register Assembly="System.Web.Extensions, Version=3.5.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35"
    Namespace="System.Web.UI.WebControls" TagPrefix="asp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel='stylesheet' type='text/css' href='styles.css' />
    <title>View Profile</title>
    <style type="text/css">
        .style1
        {
            font-family: Arial;
        }
    </style>
    <img src="bus.png" alt="JS Logo" style="width: 282px; height: 159px; margin-top: 0px" />
    <img src="logo1.PNG" alt="MMU Logo" style="width: 1169px; height: 159px; margin-left: 3px;
        margin-top: 0px" />&nbsp;
</head>
<body>

<div style='position:absolute;z-index:-20;left:0;top:0;width:100%;height:200%'>
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
    <center>
        <font color=" black " size=" 8 ">
            <p>
                <strong><span class="style1">View Profile</span>
            </strong>
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
            SelectCommand="sp_ViewProfile3" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:SessionParameter Name="Username" SessionField="userName" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
