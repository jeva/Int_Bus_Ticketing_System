<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserTicketDetails.aspx.cs" Inherits="Bus_Website.UserTicketDetails" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Print Ticket </title>
    <img src="bus.png" alt="JS Logo" style="width: 282px; height: 159px; margin-top: 0px" />
    <img src="logo1.PNG" alt="MMU Logo" style="width: 1169px; height: 159px; margin-left: 3px;
        margin-top: 0px" />&nbsp;
</head>
<body>
    <body bgcolor="#E6E6FA">
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
                        <li class='has-sub'><a href="SelectTripUser.aspx"><span>Purchase Ticket (e-Ticket)</span></a>
                            <li class='has-sub'><a href="PrintTicket(User).aspx"><span>Print Ticket</span></a>
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
    <div style="font-family: Arial">
    
        <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        Seating Layout
        <br />
        <br />
        <br />
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
        <br />
        <asp:Panel ID="Panel1" runat="server" BackColor="#CCFF99" Height="314px">
            <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Image ID="Image1" runat="server" Height="42px" Width="97px" />
            </strong>
            <asp:CheckBoxList ID="CheckBoxList1" runat="server" 
                DataSourceID="SqlDataSource1" DataTextField="seat_no" DataValueField="seat_no" 
                style="margin-left: 193px">
            </asp:CheckBoxList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:Online_BusConnectionString %>" 
                SelectCommand="sp_SelectSeat" SelectCommandType="StoredProcedure">
                <SelectParameters>
                    <asp:SessionParameter Name="tripid" SessionField="tripps" Type="String" />
                    <asp:SessionParameter Name="busid" SessionField="buss" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
        </asp:Panel>
        </strong>
    
    </div>
    </form>
</body>
</html>
