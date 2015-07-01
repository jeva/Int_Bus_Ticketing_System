<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DetailConfirmationUser.aspx.cs" Inherits="Bus_Website.DetailConfirmationUser" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Ticket Confirmation</title>
    <style type="text/css">
        #Reset1
        {
            width: 65px;
            margin-left: 34px;
        }
        </style>
    <img src="bus.png" alt="JS Logo" style="width: 282px; height: 159px; margin-top: 0px" />
    <img src="logo1.PNG" alt="MMU Logo" style="width: 1169px; height: 159px; margin-left: 3px;
        margin-top: 0px" />&nbsp;

         <link rel="stylesheet" href="http://code.jquery.com/ui/1.10.3/themes/smoothness/jquery-ui.css">
    <script src="http://code.jquery.com/jquery-1.9.1.js"></script>
    <script src="http://code.jquery.com/ui/1.10.3/jquery-ui.js"></script>
    <link rel="stylesheet" href="/resources/demos/style.css">
    <script>
        $(function () {
            $("#txt_departure_date").datepicker({ minDate: -20, maxDate: "+12M +10D" });
        });
    </script>

</head>
<body>
<div style='position:absolute;z-index:-20;left:0;top:0;width:100%;height:150%'>
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
    <form id="form1" runat="server">
    <div>
    
        <h1 style="font-family: Arial; width: 1669px">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
            </h1>
        <h1 style="font-family: Arial; width: 1669px">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Ticket Confirmation
        </h1>
    
    </div>
    <p>
        <font color=" black " size=" 5 " style="font-weight: 700">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="DropDownList1" runat="server" Visible="False">
        </asp:DropDownList>
        <asp:DropDownList ID="DropDownList2" runat="server" style="margin-left: 31px" 
            Visible="False">
        </asp:DropDownList>
        <asp:DropDownList ID="DropDownList3" runat="server" style="margin-left: 21px" 
            Visible="False">
        </asp:DropDownList>
        </font>
    </p>
    <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <font color=" black " size=" 5 " style="font-weight: 700">Ticket Details&nbsp;
        </font>
    </p>
    <p>
        &nbsp;</p>
    <p style="width: 1500px"><font color=" black " size=" 4 ">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            CellPadding="4" DataKeyNames="trip_id" DataSourceID="SqlDataSource1" 
            EnableModelValidation="True" ForeColor="#333333" GridLines="None" 
            style="margin-left: 150px; font-weight: 700; font-family: Arial;" 
            Height="103px">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            
            <Columns>
                <asp:BoundField DataField="trip_id" HeaderText="Trip ID" ReadOnly="True" 
                    SortExpression="trip_id" />
                <asp:BoundField DataField="company_name" HeaderText="Company Name" 
                    SortExpression="company_name" />
                <asp:BoundField DataField="bus_id" HeaderText="Bus ID" 
                    SortExpression="bus_id" />
                <asp:BoundField DataField="boarding_point" HeaderText="Boarding Point" 
                    SortExpression="boarding_point" >
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="5px" 
                    Wrap="False" />
                </asp:BoundField>
                <asp:BoundField DataField="arrival_point" HeaderText="Arrival Point" 
                    SortExpression="arrival_point" />
                <asp:BoundField DataField="depart_date" HeaderText="Departure Date (24Hrs)" 
                    SortExpression="depart_date" >
                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="5px" 
                    Wrap="False" />
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="5px" 
                    Wrap="False" />
                </asp:BoundField>
                <asp:BoundField DataField="depart_time" HeaderText="Departure Time" 
                    SortExpression="depart_time" >
                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="5px" 
                    Wrap="False" />
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="5px" 
                    Wrap="False" />
                </asp:BoundField>
                <asp:BoundField DataField="total_time" HeaderText="Total Time" 
                    SortExpression="total_time" />
                <asp:BoundField DataField="seat_no" HeaderText="Seat No" 
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
            SelectCommand="sp_ConfirmTrip2" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:SessionParameter Name="username" SessionField="userName" Type="String" />
                <asp:SessionParameter Name="trip_id" SessionField="tripps" Type="String" />
                <asp:SessionParameter Name="buscompany_id" SessionField="bcom" Type="String" />
                <asp:SessionParameter Name="bus_id" SessionField="buss" Type="String" />
                <asp:SessionParameter Name="ticket_date" SessionField="date" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </p>
    <p style="width: 1569px">
    <font color=" black " size=" 5 ">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</font></p>
    <p style="width: 1569px">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <font color=" black " size=" 5 ">
&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; No of Adults Selected&nbsp;&nbsp; :&nbsp;
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    </p>
    <p style="width: 1408px">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;No of Childs Selected&nbsp;&nbsp; :&nbsp;
        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
    </font>
    </p>
    <font color=" red " size=" 5 ">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>Total Fare (MYR)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :&nbsp;
    <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
    .00<br />
    <br />
    &nbsp;
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button1" runat="server" style="margin-left: 601px" 
        Text="Proceed To Payment" onclick="Button1_Click" Height="38px" 
        Width="145px" />
    <br />
    <br />
    
    </strong></form>
</body>
</html>
