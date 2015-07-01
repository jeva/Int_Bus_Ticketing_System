<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewTicketAdmin.aspx.cs"
    Inherits="Bus_Website.ViewTicketAdmin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Admin :: View Ticket </title>
    <img src="bus.png" alt="JS Logo" style="width: 282px; height: 159px; margin-top: 0px" />
    <img src="logo1.PNG" alt="MMU Logo" style="width: 1169px; height: 159px; margin-left: 3px;
        margin-top: 0px" />&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;<b><font color=" black " size=" 5 "><asp:Label ID="Label1" runat="server"
        Text="Welcome," Visible="False"></asp:Label>
        <asp:Label ID="Label2" runat="server" Text="Label" Visible="False"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label3" runat="server" Text="Label" Visible="False"></asp:Label></font>
    </b></font>
</head>
<body>
   <body>
            <div style='position: absolute; z-index: -20; left: 0; top: 0; width: 100%; height: 180%'>
            <img src="imagea3.jpg" style='width: 100%; height: 100%' alt='[]' />
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
                            <li class='has-sub'><a href="ViewTicketAdmin.aspx"><span>View Ticket</span></a>
                            </li>
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
    
        <h1 style="font-family: Arial; width: 1669px">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
            </h1>
        <h1 style="font-family: Arial; width: 1669px">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
            View Ticket
        </h1>
        <p style="font-family: Arial; width: 1669px"><font color=" black " size=" 4 ">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        <font color=" black " size=" 5 " style="font-weight: 700">
            <asp:Label 
            ID="Label7" runat="server" style="font-size: x-large; color: #CC0000" 
            Text="** You have not purchased any tickets yet."></asp:Label>
        </font>
            </font>
        </p>
        <p style="font-family: Arial; width: 1669px"><font color=" black " size=" 4 ">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>&nbsp;<asp:Label 
                ID="Label4" runat="server" Text="Please select Departure       :" 
                Visible="False"></asp:Label>
&nbsp;&nbsp;&nbsp; </strong>&nbsp;<asp:DropDownList 
                ID="DropDownList5" runat="server" Height="21px" 
                onselectedindexchanged="DropDownList5_SelectedIndexChanged" Width="69px" 
                Visible="False">
            </asp:DropDownList>
        <font color=" black " size=" 5 " style="font-weight: 700">
            <asp:Button ID="Button2" runat="server" 
                style="margin-left: 35px" Text="View " onclick="Button2_Click" 
                Visible="False" />
            <asp:DropDownList ID="DropDownList7" runat="server" Visible="False">
            </asp:DropDownList>
        </font>
        </p>
    
    </div>
    <p>
        <font color=" black " size=" 5 " style="font-weight: 700">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </font>
    </p>
    <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label5" runat="server" 
            style="font-weight: 700; font-size: large; font-family: Arial" 
            Text="Ticket Details " Visible="False"></asp:Label>
        <font color=" black " size=" 5 " style="font-weight: 700">&nbsp;</font></p>
    <p style="width: 1500px"><font color=" black " size=" 3 "><b>


        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            CellPadding="4" DataKeyNames="trip_id" DataSourceID="SqlDataSource1" 
            EnableModelValidation="True" ForeColor="#333333" GridLines="None" 
            style="margin-left: 36px" Width="1259px" Height="97px">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            
            <Columns>

                            <asp:BoundField DataField="ticket_date" HeaderText="Purchased Date" 
                    SortExpression="ticket_date" >
                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="5px" 
                    Wrap="False" />
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="5px" 
                    Wrap="False" />
                </asp:BoundField>
                <asp:BoundField DataField="ticket_id" HeaderText="Ticket ID" 
                    SortExpression="ticket_id" >
                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="5px" 
                    Wrap="False" />
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="5px" 
                    Wrap="False" />
                </asp:BoundField>
                <asp:BoundField DataField="trip_id" HeaderText="Trip ID" 
                    SortExpression="trip_id" ReadOnly="True"  Visible="false">
                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="5px" 
                    Wrap="False" />
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="5px" 
                    Wrap="False" />
                </asp:BoundField>
                <asp:BoundField DataField="company_name" HeaderText="Company Name" 
                    SortExpression="company_name" >
                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="5px" 
                    Wrap="False" />
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="5px" 
                    Wrap="False" />
                </asp:BoundField>
                <asp:BoundField DataField="bus_id" HeaderText="Bus ID" 
                    SortExpression="bus_id" >
                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="5px" 
                    Wrap="False" />
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="5px" 
                    Wrap="False" />
                </asp:BoundField>
                <asp:BoundField DataField="boarding_point" HeaderText="Boarding Point" 
                    SortExpression="boarding_point" >
                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="5px" 
                    Wrap="False" />
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="5px" 
                    Wrap="False" />
                </asp:BoundField>
                <asp:BoundField DataField="arrival_point" HeaderText="Arrival Point" 
                    SortExpression="arrival_point" >
                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="5px" 
                    Wrap="False" />
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="5px" 
                    Wrap="False" />
                </asp:BoundField>
                <asp:BoundField DataField="depart_date" HeaderText="Departure Date" 
                    SortExpression="depart_date" >
                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="5px" 
                    Wrap="False" />
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="5px" 
                    Wrap="False" />
                </asp:BoundField>
                <asp:BoundField DataField="depart_time" HeaderText="Departure Time (24Hrs)" 
                    SortExpression="depart_time" >
                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="5px" 
                    Wrap="False" />
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="5px" 
                    Wrap="False" />
                </asp:BoundField>
                <asp:BoundField DataField="total_time" HeaderText="Estimated Time (Hrs)" 
                    SortExpression="total_time" >
                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="5px" 
                    Wrap="False" />
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="5px" 
                    Wrap="False" />
                </asp:BoundField>
                <asp:BoundField DataField="seat_no" HeaderText=" Seat No" 
                    SortExpression="seat_no" >
                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="5px" 
                    Wrap="False" />
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="5px" 
                    Wrap="False" />
                </asp:BoundField>
                <asp:BoundField DataField="adult_fare" HeaderText="Adult Fare (RM)" 
                    SortExpression="adult_fare" >
                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="5px" 
                    Wrap="False" />
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="5px" 
                    Wrap="False" />
                </asp:BoundField>
                <asp:BoundField DataField="child_fare" HeaderText="Child Fare (RM)" 
                    SortExpression="child_fare" >
                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="5px" 
                    Wrap="False" />
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="5px" 
                    Wrap="False" />
                </asp:BoundField>
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:Online_BusConnectionString %>" 
            SelectCommand="sp_Viewticket" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:SessionParameter Name="username" SessionField="userName" Type="String" />
                <asp:ControlParameter ControlID="DropDownList5" Name="trip_id" 
                    PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </p>
    </b>
    <p style="width: 1569px">
    <font color=" black " size=" 5 ">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <strong style="font-family: Arial">&nbsp; 
        </strong></font></p>
    <p style="width: 1569px">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p>
    <p style="width: 1569px">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label6" runat="server" 
            style="font-weight: 700; font-size: medium; font-family: Arial" 
            Text="Please select Ticket ID to print your ticket    :" Visible="False"></asp:Label>
        <font color=" black " size=" 4 ">
        <strong style="font-family: Arial">&nbsp;&nbsp; 
        <asp:DropDownList ID="DropDownList6" runat="server" Visible="False">
        </asp:DropDownList>
        </strong></font></p>
    <p style="width: 1569px">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <font color=" black " size=" 5 ">
&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</font></p>
    <font color=" red " size=" 5 ">
    <strong>
    <br />
    &nbsp;
    <asp:Button ID="Button1" runat="server" style="margin-left: 601px" 
        Text="Proceed" onclick="Button1_Click" Height="39px" Width="118px" 
            EnableViewState="False" Visible="False" />

    </strong></form>
</body>
</html>
