<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DeleteBusCompany.aspx.cs" Inherits="Bus_Website.DeleteBusCompany" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Admin::Delete Bus Company</title>
    <style type="text/css">
        #Reset1
        {
            width: 67px;
            margin-left: 16px;
        }
        #form1
        {
            width: 1310px;
        }
        </style>
    <img src="bus.png" alt="JS Logo" style="width: 282px; height: 159px; margin-top: 0px" />
    <img src="logo1.PNG" alt="MMU Logo" style="width: 1169px; height: 159px; margin-left: 3px;
        margin-top: 0px" />&nbsp;
</head>
<body>
<body>
            <div style='position: absolute; z-index: -20; left: 0; top: 0; width: 100%; height: 150%'>
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
    
     <br />
    <br />
    <center style="font-weight: 700">
        <font color=" black " size=" 8 ">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Delete Bus Company</font></center>
    <br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:Online_BusConnectionString %>" 
        SelectCommand="sp_selectBus" SelectCommandType="StoredProcedure">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="buscompanyID" 
                PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    </font>
    <br />
    <br />
    <br />
        <font color=" black " size=" 5 ">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong> 
    Bus Company&nbsp;&nbsp;&nbsp;&nbsp; : </strong>
    <asp:DropDownList ID="DropDownList1" runat="server" Height="23px" 
        style="margin-left: 23px" Width="121px">
    </asp:DropDownList>
    <asp:Button ID="Button2" runat="server" style="margin-left: 9px" 
        Text="View" onclick="Button2_Click" />
    &nbsp;
    <asp:Button ID="Button4" runat="server" onclick="Button4_Click" 
        Text="Delete Bus Company" Width="147px" />
    &nbsp;&nbsp;&nbsp;<strong><asp:Label ID="Label4" runat="server" 
        Text="Please specify Bus Company to delete :" Visible="False"></asp:Label>
    </strong>
    <asp:TextBox ID="TextBox1" runat="server" style="margin-left: 0px" 
        Visible="False"></asp:TextBox>
    &nbsp;&nbsp; <font color=" black" size=" 5 ">
    <asp:Button ID="Button3" runat="server" onclick="Button3_Click" Text="Submit" 
        Visible="False" style="margin-left: 0px" />
    </font>
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
    </font><asp:DataList ID="DataList1" runat="server" 
        DataSourceID="SqlDataSource1" DataKeyField="buscomponay_id" 
        Font-Bold="True" Font-Italic="False" Font-Names="Arial" Font-Overline="False" 
        Font-Size="Large" Font-Strikeout="False" Font-Underline="False" 
        ForeColor="Black" HorizontalAlign="Left" style="margin-left: 87px">
        <ItemTemplate>
        <br />
            Bus Company ID &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:
            <asp:Label ID="buscomponay_idLabel" runat="server" 
                Text='<%# Eval("buscomponay_id") %>' />

            <br />
            <br />
                       <br />
            <br />
            Bus Company Name&nbsp;&nbsp; :
            <asp:Label ID="company_nameLabel" runat="server" 
                Text='<%# Eval("company_name") %>' />
            <br />
<br />
        </ItemTemplate>
    </asp:DataList>
    <font color=" black " size=" 5 ">
    &nbsp; <font color=" black" size=" 5 ">&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp; 
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;
    <br />
    <br />
    <br />
&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;
    &nbsp;
    <br />
&nbsp;&nbsp;
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
    <br />
    &nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label3" runat="server" style="font-weight: 700" Text="Label" 
        Visible="False"></asp:Label>
    <br />
    </font>
    </form>
</body>
</html>
