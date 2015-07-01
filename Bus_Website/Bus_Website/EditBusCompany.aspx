<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EditBusCompany.aspx.cs" Inherits="Bus_Website.EditBusCompany" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Admin::Edit Bus Company</title>
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
 <body bgcolor="99FF66">
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
                                <li class='has-sub'><a href="ViewProfile.aspx"><span>Delete User</span></a> </li>
                </ul>
            </li>
            <li class='has-sub'><a href='#'><span>Tickets</span></a>
                <ul>
                    <li class='has-sub'><a href="SelectTripDetails(Admin).aspx"><span>Purchase Ticket
                        (e-Ticket)</span></a>
                        <li class='has-sub'><a href="Print Ticket.aspx"><span>Print Ticket</span></a>
                            <li class='has-sub'><a href="Edit Ticket.aspx"><span>Edit Ticket</span></a>
                                <li class='has-sub'><a href="View Ticket.aspx"><span>View Ticket</span></a> </li>
                                <li class='has-sub'><a href="View Ticket.aspx"><span>Delete Ticket</span></a> </li>
                </ul>
                <li class='has-sub'><a href='#'><span>Trips</span></a>
                    <ul>
                        <li class='has-sub'><a href="Check Trip(Admin).aspx"><span>Check Trip Schedule</span></a>
                        </li>
                        <li class='has-sub'><a href="AddTrip.aspx"><span>Add Trip</span></a> </li>
                        <li class='has-sub'><a href="EditTrip.aspx"><span>Edit Trip </span></a></li>
                        <li class='has-sub'><a href="ViewTrip.aspx"><span>View Trip </span></a></li>
                        <li class='has-sub'><a href="DeleteTrip.aspx"><span>Delete Trip </span></a></li>
                    </ul>
                    <li class='has-sub'><a href='#'><span>Bus Company</span></a>
                        <ul>
                            <li class='has-sub'><a href="Add BusCompany.aspx"><span>Add Bus Company</span></a>
                            </li>
                            <li class='has-sub'><a href="ViewBusCompany.aspx"><span>View Bus Company </span></a>
                             <li class='has-sub'><a href="DeleteBusCompany.aspx"><span>Delete Bus Company </span></a></li>
                            </li>
                        </ul>
                        <li class='has-sub'><a href='#'><span>Bus</span></a>
                            <ul>
                                <li class='has-sub'><a href="AddBus.aspx"><span>Add Bus </span></a></li>
                                <li class='has-sub'><a href="EditBus.aspx"><span>Edit Bus</span></a> </li>
                                <li class='has-sub'><a href="ViewBus.aspx"><span>View Bus</span></a> </li>
                                <li class='has-sub'><a href="DeleteBus.aspx"><span>Delete Bus</span></a> </li>
                            </ul>
                            <li class='has-sub'><a href="ContactUsAdmin.aspx"><span>Contact Us</span></a> </li>
                            <<li class='has-sub'><a href="AboutUs(Admin).aspx"><span>About Us</span></a> </li>
                            <li><a href="Homepage.aspx"><span>Logout</span></a></li>
        </ul>


    </div>
    <form id="form1" runat="server">
    
    <br />
    <br />
    <center>
        <font color=" black " size=" 8 "><strong>Edit Bus Company</strong></font></center>
        <font color=" black " size=" 8 ">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:Online_BusConnectionString %>" 
        SelectCommand="sp_selectBus" SelectCommandType="StoredProcedure">
        <SelectParameters>
            <asp:SessionParameter Name="buscompanyID" SessionField="buscompany_id" 
                Type="String" />
            <asp:SessionParameter Name="temp" SessionField="temp" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    </font>
    <br />
    <br />
    <br />
        <font color=" black " size=" 5 ">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
    Bus Company ID&nbsp;&nbsp;&nbsp;&nbsp; :
    <asp:DropDownList ID="DropDownList1" runat="server" Height="23px" 
        style="margin-left: 23px" Width="121px">
    </asp:DropDownList>
    <asp:Button ID="Button2" runat="server" style="margin-left: 37px" 
        Text="Button" onclick="Button2_Click" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
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
    &nbsp; <font color=" black" size=" 5 ">&nbsp;<asp:Button ID="Button11" 
        runat="server" onclick="Button11_Click" 
        style="margin-right: 0px; margin-top: 22px" Text="Edit" Visible="False" />
&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label3" runat="server" Text="New Bus Company ID :" 
        Visible="False"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox2" runat="server" style="margin-left: 36px" 
        Width="135px" Visible="False"></asp:TextBox>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button12" runat="server" onclick="Button12_Click" 
        style="height: 26px" Text="Save" Visible="False" />
&nbsp;
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
        ControlToValidate="TextBox2" ErrorMessage="*Required" Visible="False"></asp:RequiredFieldValidator>
    <br />
    <br />
    <br />
&nbsp;&nbsp;
    <asp:Button ID="Button13" runat="server" onclick="Button13_Click" 
        style="margin-top: 7px" Text="Edit" Visible="False" />
&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label4" runat="server" Text="New Bus Company Name : " 
        Visible="False"></asp:Label>
    <asp:TextBox ID="TextBox3" runat="server" style="margin-left: 36px" 
        Width="135px" Visible="False"></asp:TextBox>
    <asp:Button ID="Button14" runat="server" style="margin-left: 37px" Text="Save" 
        Visible="False" />
&nbsp;
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
        ControlToValidate="TextBox3" ErrorMessage="*Required" Visible="False"></asp:RequiredFieldValidator>
    <br />
&nbsp;&nbsp;
    </font>
    </form>
</body>
</html>
