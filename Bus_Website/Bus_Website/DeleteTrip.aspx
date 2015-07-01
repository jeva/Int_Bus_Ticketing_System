<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DeleteTrip.aspx.cs" Inherits="Bus_Website.DeleteTrip" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin::Delete Trip </title>
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
     
    <form id="form1" runat="server">
    <div>
        <br />
        <br />
        <center>
            <font color=" black " size=" 8 "><strong>Delete Trip</strong></font></center>
        <br />
        <br />
        <font color=" black " size=" 5 ">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Departure 
        &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
            :<asp:DropDownList ID="DropDownList5" runat="server" OnSelectedIndexChanged="DropDownList5_SelectedIndexChanged"
                Style="margin-left: 24px" Width="128px" Height="21px">
            </asp:DropDownList>
            <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Destination&nbsp;&nbsp;&nbsp; &nbsp;:<asp:DropDownList 
            ID="DropDownList6" runat="server" OnSelectedIndexChanged="DropDownList5_SelectedIndexChanged"
                Style="margin-left: 24px" Width="132px" Height="21px">
            </asp:DropDownList>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click1" Style="margin-left: 52px"
                Text="View" Width="74px" />
            &nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button3" runat="server" onclick="Button3_Click" 
            Text="Delete Trip " />
&nbsp;
        <asp:Label ID="Label2" runat="server" 
            Text="Please state the Trip ID to delete :" Visible="False"></asp:Label>
&nbsp;<asp:TextBox ID="TextBox2" runat="server" Visible="False" Width="98px"></asp:TextBox>
&nbsp;&nbsp;
        <asp:Button ID="Button4" runat="server" Text="Submit" 
            Visible="False" onclick="Button4_Click" />
            <br />
            <br />
            <br />
            <asp:DataList ID="DataList1" runat="server" DataKeyField="trip_id" DataSourceID="SqlDataSource1"
                Font-Bold="True" Font-Italic="False" Font-Names="Arial" Font-Overline="False"
                Font-Size="Large" Font-Strikeout="False" Font-Underline="False" ForeColor="Black"
                HorizontalAlign="Left" Style="margin-left: 92px; margin-right: 0px">
                <ItemTemplate>
                    Trip ID&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;:
                    <asp:Label ID="trip_idLabel" runat="server" Text='<%# Eval("trip_id") %>' />
                    <br />
                    <br />
                    Bus ID &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:
                    <asp:Label ID="bus_idLabel" runat="server" Text='<%# Eval("bus_id") %>' />
                    <br />
                    <br />
                    Company &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:
                    <asp:Label ID="company_nameLabel" runat="server" Text='<%# Eval("company_name") %>' />
                    <br />
                    <br />
                    Destination &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:
                    <asp:Label ID="boarding_pointLabel" runat="server" Text='<%# Eval("boarding_point") %>' />
                    <br />
                    <br />
                    Arrival Point&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:
                    <asp:Label ID="arrival_pointLabel" runat="server" Text='<%# Eval("arrival_point") %>' />
                    <br />
                    <br />
                    Departure Date&nbsp;&nbsp;&nbsp;:
                    <asp:Label ID="depart_dateLabel" runat="server" Text='<%# Eval("depart_date") %>' />
                    <br />
                    <br />
                    Departure Time&nbsp;&nbsp;:
                    <asp:Label ID="depart_timeLabel" runat="server" Text='<%# Eval("depart_time") %>' />
                    <br />
                    <br />
                    Arrival Time&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:
                    <asp:Label ID="arrival_timeLabel" runat="server" Text='<%# Eval("arrival_time") %>' />
                    <br />
                    <br />
                    Adult Fare(RM)&nbsp;&nbsp;&nbsp;:
                    <asp:Label ID="adult_fareLabel" runat="server" Text='<%# Eval("adult_fare") %>' />
                    <br />
                    <br />
                    Child Fare(RM)&nbsp;&nbsp;&nbsp;:
                    <asp:Label ID="child_fareLabel" runat="server" Text='<%# Eval("child_fare") %>' />
                    <br />
                    <br />
                    Total Time&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:
                    <asp:Label ID="total_timeLabel" runat="server" Text='<%# Eval("total_time") %>' />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                </ItemTemplate>
            </asp:DataList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Online_BusConnectionString %>"
                SelectCommand="sp_ViewTrip" SelectCommandType="StoredProcedure">
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList5" Name="departure" 
                        PropertyName="SelectedValue" Type="String" />
                    <asp:ControlParameter ControlID="DropDownList6" Name="arrival" 
                        PropertyName="SelectedValue" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
        </font>
        <br />
        <br />
        <br />
        <br />
    </div>
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <asp:Label ID="Label1" runat="server" Text="Trip Succesfully Deleted" Visible="False"></asp:Label>
    <br />
    <br />
    <br />
    </form>
</body>
</html>
