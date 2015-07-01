<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EditTrip.aspx.cs" Inherits="Bus_Website.EditTrip" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin::Edit Trip</title>
    <style type="text/css">
        #form1
        {
            width: 1577px;
        }
        #opener
        {
            margin-left: 35px;
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
            $("#TextBox7").datepicker({ minDate: -20, maxDate: "+12M +10D" });
        });
    </script>

</head>
<body>
    <body>
            <div style='position: absolute; z-index: -20; left: 0; top: 0; width: 100%; height: 200%'>
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
        <div style="height: 853px">
            <br />
            <br />
            <center>
                <font color=" black " size=" 8 "><strong>Edit Trip</strong></font></center>
            <font color=" black " size=" 5 ">
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Online_BusConnectionString %>"
                    SelectCommand="sp_ViewTrip3" SelectCommandType="StoredProcedure">
                    <SelectParameters>
                        <asp:SessionParameter Name="trip_id" SessionField="tripid" Type="String" />
                        <asp:SessionParameter Name="temp" SessionField="tripid" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </font>
            <br />
            <asp:DropDownList ID="DropDownList10" runat="server" Visible="False">
            </asp:DropDownList>
            <br />
            <font color=" black " size=" 5 ">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />

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
                &nbsp;</font><font color=" black" size=" 5 ">&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
    &nbsp;&nbsp;
            &nbsp;&nbsp; 
            </font>
            <br />
&nbsp;<asp:Button ID="Button4" runat="server" 
                Style="margin-left: 112px; margin-top: 12px;" Text="Edit " Height="26px" 
                Width="162px" onclick="Button4_Click" />
            <font color=" black" size=" 5 ">&nbsp;&nbsp;
    <asp:Label ID="Label3" runat="server" Text="Bus ID :" Visible="False"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="DropDownList6" runat="server" Height="20px" Width="129px" 
                style="margin-left: 0px" Visible="False">
            </asp:DropDownList>
&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button15" runat="server"  Text="Save" 
                Visible="False" onclick="Button15_Click"  />
&nbsp;&nbsp; <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
        ControlToValidate="DropDownList6" ErrorMessage="*Required" Visible="False"></asp:RequiredFieldValidator>
            </font>
            <br />
&nbsp;<asp:Button ID="Button25" runat="server" 
                Style="margin-left: 112px; margin-top: 19px;" Text="Edit " Height="26px" 
                Width="162px" onclick="Button25_Click"  />
            <font color=" black" size=" 5 ">&nbsp;&nbsp;
    <asp:Label ID="Label13" runat="server" Text="Bus Company :" Visible="False"></asp:Label>
            <asp:DropDownList ID="DropDownList11" runat="server" Height="20px" Width="129px" 
                style="margin-left: 37px" Visible="False" 
                onselectedindexchanged="DropDownList11_SelectedIndexChanged">
            </asp:DropDownList>
            <asp:Button ID="Button26" runat="server" Text="Save" 
                Visible="False" onclick="Button26_Click" style="margin-left: 16px" 
                Width="40px" />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" 
        ControlToValidate="DropDownList6" ErrorMessage="*Required" Visible="False"></asp:RequiredFieldValidator>
            </font>
            <br />
            &nbsp;<asp:Button ID="Button6" runat="server" 
                Style="margin-left: 112px; margin-top: 16px;" Text="Edit " Height="26px" 
                Width="162px" onclick="Button6_Click" />
            <font color=" black" size=" 5 ">&nbsp;&nbsp;
    <asp:Label ID="Label5" runat="server" Text="Destination :" Visible="False"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;<asp:TextBox 
                ID="TextBox13" runat="server" Visible="False"></asp:TextBox>
            &nbsp;&nbsp;
            <asp:Button ID="Button17" runat="server" onclick="Button17_Click" Text="Save" 
                Visible="False" />
&nbsp; <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
        ControlToValidate="TextBox7" ErrorMessage="*Required" Visible="False"></asp:RequiredFieldValidator>
            </font>
            <br />
            <asp:Button ID="Button7" runat="server" 
                Style="margin-left: 112px; margin-top: 22px;" Text="Edit " Height="26px" 
                Width="162px" onclick="Button7_Click" />
            <font color=" black" size=" 5 ">&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label6" runat="server" Text="Arrival  Point :" Visible="False"></asp:Label>
    &nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;<asp:TextBox ID="TextBox14" runat="server" Visible="False"></asp:TextBox>
            &nbsp;&nbsp;
            <asp:Button ID="Button18" runat="server" onclick="Button18_Click" Text="Save" 
                Visible="False" />
&nbsp; <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
        ControlToValidate="TextBox8" ErrorMessage="*Required" Visible="False"></asp:RequiredFieldValidator>
            </font>
            <br />
            <asp:Button ID="Button8" runat="server" 
                Style="margin-left: 112px; margin-top: 19px;" Text="Edit " Height="26px" 
                Width="162px" onclick="Button8_Click" />
            <font color=" black" size=" 5 ">&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label7" runat="server" Text="Departure Date :" Visible="False"></asp:Label>
            <asp:TextBox ID="TextBox7" runat="server" style="margin-left: 31px" 
        Width="135px" Visible="False"></asp:TextBox>
    &nbsp;&nbsp;
            <asp:Button ID="Button19" runat="server" Text="Save" Visible="False" 
                onclick="Button19_Click" />
&nbsp;&nbsp; <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
        ControlToValidate="TextBox7" ErrorMessage="*Required" Visible="False"></asp:RequiredFieldValidator>
            </font>
            <br />
            <asp:Button ID="Button9" runat="server" 
                Style="margin-left: 112px; margin-top: 17px;" Text="Edit " Height="26px" 
                Width="162px" onclick="Button9_Click" />
            <font color=" black" size=" 5 ">&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label8" runat="server" Text="Departure Time :" Visible="False"></asp:Label>
            <asp:TextBox ID="TextBox8" runat="server" style="margin-left: 29px" 
        Width="135px" Visible="False"></asp:TextBox>
    &nbsp;&nbsp;
            <asp:Button ID="Button20" runat="server" Text="Save" Visible="False" />
&nbsp;&nbsp; <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
        ControlToValidate="TextBox8" ErrorMessage="*Required" Visible="False"></asp:RequiredFieldValidator>
            </font>
            <br />
            <asp:Button ID="Button10" runat="server" 
                Style="margin-left: 112px; margin-top: 20px;" Text="Edit " Height="26px" 
                Width="162px" onclick="Button10_Click" />
            <font color=" black" size=" 5 ">&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label9" runat="server" Text="Arrival Time :" Visible="False"></asp:Label>
    &nbsp;&nbsp;
            <asp:TextBox ID="TextBox9" runat="server" style="margin-left: 36px" 
        Width="135px" Visible="False"></asp:TextBox>
    &nbsp;&nbsp;
            <asp:Button ID="Button21" runat="server" Text="Save" Visible="False" 
                onclick="Button21_Click" />
&nbsp;&nbsp; <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
        ControlToValidate="TextBox9" ErrorMessage="*Required" Visible="False"></asp:RequiredFieldValidator>
            </font>
            <br />
            <asp:Button ID="Button11" runat="server" 
                Style="margin-left: 112px; margin-top: 17px;" Text="Edit " Height="26px" 
                Width="162px" onclick="Button11_Click" />
            <font color=" black" size=" 5 ">&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label10" runat="server" Text="Adult Fare(RM) :" Visible="False"></asp:Label>
            &nbsp;<asp:TextBox ID="TextBox10" runat="server" style="margin-left: 24px" 
        Width="135px" Visible="False"></asp:TextBox>
    &nbsp;&nbsp;
            <asp:Button ID="Button22" runat="server" Text="Save" Visible="False" 
                onclick="Button22_Click" />
&nbsp;&nbsp; <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
        ControlToValidate="TextBox10" ErrorMessage="*Required" Visible="False"></asp:RequiredFieldValidator>
            </font>
            <br />
            <asp:Button ID="Button12" runat="server" 
                Style="margin-left: 112px; margin-top: 17px;" Text="Edit " Height="26px" 
                Width="162px" onclick="Button12_Click" />
            <font color=" black" size=" 5 ">&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label11" runat="server" Text="Child Fare (RM) :" Visible="False"></asp:Label>
            <asp:TextBox ID="TextBox11" runat="server" style="margin-left: 19px" 
        Width="135px" Visible="False"></asp:TextBox>
    &nbsp;&nbsp;
            <asp:Button ID="Button23" runat="server" Text="Save" Visible="False" 
                onclick="Button23_Click" style="width: 56px" />
&nbsp;&nbsp; <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
        ControlToValidate="TextBox11" ErrorMessage="*Required" Visible="False"></asp:RequiredFieldValidator>
            </font>
            <br />
            <asp:Button ID="Button13" runat="server" 
                Style="margin-left: 112px; margin-top: 21px;" Text="Edit " Height="26px" 
                Width="162px" onclick="Button13_Click" />
            <font color=" black" size=" 5 ">&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label12" runat="server" Text="Total Time" Visible="False"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox12" runat="server" style="margin-left: 14px" 
        Width="135px" Visible="False"></asp:TextBox>
    &nbsp;&nbsp;
            <asp:Button ID="Button24" runat="server" Text="Save" Visible="False" 
                onclick="Button24_Click" />
&nbsp;&nbsp; <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
        ControlToValidate="TextBox12" ErrorMessage="*Required" Visible="False"></asp:RequiredFieldValidator>
            </font>
            <br />
            <br />
            <br />
            <br />
        </div>
   
     
        </form>
    </body>
</html>
