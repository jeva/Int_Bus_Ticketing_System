<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EditProfile.aspx.cs" Inherits="Bus_Website.ProfileManagement.EditProfile.EditProfile" %>

<%@ Register Assembly="System.Web.Extensions, Version=3.5.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35"
    Namespace="System.Web.UI.WebControls" TagPrefix="asp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Edit Profile</title>
    <style type="text/css">
        #Button2
        {
            margin-left: 29px;
            margin-top: 20px;
        }
        #Button3
        {
            margin-left: 31px;
            margin-top: 16px;
        }
        #Button4
        {
            margin-left: 31px;
            margin-top: 22px;
        }
        #Button5
        {
            width: 46px;
            margin-left: 31px;
            margin-top: 17px;
        }
        #Button1
        {
            margin-left: 31px;
        }
        #Button6
        {
            margin-left: 27px;
            margin-top: 20px;
        }
        #Button7
        {
            margin-left: 26px;
            margin-top: 20px;
        }
        #Button8
        {
            margin-left: 31px;
            margin-top: 19px;
        }
        #form1
        {
            width: 1489px;
        }
        .style1
        {
            font-family: Arial;
        }
        .style2
        {
            text-align: center;
        }
    </style>
    <img src="bus.png" alt="JS Logo" style="width: 282px; height: 159px; margin-top: 0px" />
    <img src="logo1.PNG" alt="MMU Logo" style="width: 1169px; height: 159px; margin-left: 3px;
        margin-top: 0px" />&nbsp;
    <script language="javascript" type="text/javascript">
// <![CDATA[


// ]]>
    </script>
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
                <li><a href="Homepage_User.aspx"><span style="font-weight: 700">Home</span></a></li>
                <li class='has-sub'><a href='#'><span style="font-weight: 700">User Profile</span></a>
                    <ul>
                        <li class='has-sub'><a href="EditProfile.aspx">Edit Profile</a>
                            <li class='has-sub'><a href="ChangePassword.aspx"><span>Change Password</span></a>
                                <li class='has-sub'><a href="ViewProfile.aspx"><span>View Profile</span></a> </li>
                    </ul>
                </li>
                <li class='has-sub'><a href='#'><span style="font-weight: 700">Tickets</span></a>
                    <ul>
                        <li class='has-sub'><a href="SelectTripUser.aspx"><span>Purchase Ticket (e-Ticket)</span></
                                    <li class='has-sub'><a href="View Ticket.aspx"><span>View Ticket</span></a> </li>
                    </ul>
                    <li class='has-sub'><a href='#'><span>Trip<strong>s</strong></span></a>
                        <ul>
                            <li class='has-sub'><a href="CheckTrip(User).aspx"><span><strong>Check Trip Schedule</strong></span></a><strong>
                                </strong>
                            </li>
                        </ul>
                        <li class='has-sub'><a href="Contact Us.aspx"><span>Contact Us</span></a> </li>
                        <li><a href="Homepage.aspx"><span>Logout</span></a></li>
                 </ul>
        </div>
    <br />
    <form id="form1" runat="server">
    <center style="text-align: left">
        <font color=" black " size=" 8 ">
            <p class="style2">
                <span class="style1">
                <strong>Edit Profile</strong></span> </p>
        </font><font color=" black" size=" 5 ">
                
    </center>
    <br />
    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" Font-Bold="True"
        Font-Italic="False" Font-Names="Arial" Font-Overline="False" Font-Size="Large"
        Font-Strikeout="False" Font-Underline="False" ForeColor="Black" HorizontalAlign="Left"
        Style="margin-right: 0px; margin-left: 92px;">
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
            <br />
        </ItemTemplate>
    </asp:DataList>
    &nbsp;<font color=" black " size=" 3 ">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </font>
    <asp:Button ID="Button10" runat="server" onclick="Button10_Click" 
        Text="Edit" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label2" runat="server" Text="New Username :" Visible="False"></asp:Label>
    &nbsp;<asp:TextBox ID="TextBox2" runat="server" style="margin-left: 36px" 
        Width="135px" Visible="False"></asp:TextBox>
    <asp:Button ID="Button9" runat="server" style="margin-left: 24px" 
        Text="Save" onclick="Button9_Click" Visible="False" />
    &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
        ControlToValidate="TextBox2" ErrorMessage="*Required" Visible="False"></asp:RequiredFieldValidator>
    <br />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button11" runat="server" style="margin-top: 6px" 
        Text="Edit" onclick="Button11_Click" />
    <font color=" white " size=" 4 ">
        <font color=" black" size=" 5 ">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label4" runat="server" Text="New First Name : " Visible="False"></asp:Label>
    &nbsp;
    <asp:TextBox ID="TextBox3" runat="server" style="margin-left: 24px" 
        Width="135px" Visible="False"></asp:TextBox>
    <asp:Button ID="Button12" runat="server" style="margin-left: 24px" 
        Text="Save" Visible="False" onclick="Button12_Click" />
    &nbsp;
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
        ControlToValidate="TextBox3" ErrorMessage="*Required" Visible="False"></asp:RequiredFieldValidator>
    </font><br />
        &nbsp;&nbsp;
        <asp:Button ID="Button19" runat="server" style="margin-left: 21px; margin-top: 41px;" 
        Text="Edit" onclick="Button19_Click" />
    </font>&nbsp;&nbsp;&nbsp;&nbsp;<font
            color=" white " size=" 8 "><font color=" black" size=" 5 ">&nbsp;&nbsp;
    <asp:Label ID="Label5" runat="server" Text="New Last Name : " Visible="False"></asp:Label>
    &nbsp;
    <asp:TextBox ID="TextBox4" runat="server" style="margin-left: 24px" 
        Width="135px" Visible="False"></asp:TextBox>
    &nbsp;<asp:Button ID="Button13" runat="server" style="margin-left: 24px" 
        Text="Save"  Visible="False" onclick="Button13_Click"  />
    &nbsp;
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
        ControlToValidate="TextBox4" ErrorMessage="*Required" Visible="False"></asp:RequiredFieldValidator>
    </font><br />
            </font>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button20" runat="server" Text="Edit" onclick="Button20_Click" 
        style="margin-top: 38px" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label6" runat="server" Text="New Email           : " 
        Visible="False"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="TextBox5" runat="server" style="margin-left: 25px" 
        Width="135px" Visible="False"></asp:TextBox>
    &nbsp;<asp:Button ID="Button14" runat="server" style="margin-left: 24px" 
        Text="Save"  Visible="False" onclick="Button14_Click" />
    &nbsp;
    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
        ControlToValidate="TextBox5" ErrorMessage="*Required" Visible="False"></asp:RequiredFieldValidator>
&nbsp;
    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
        ControlToValidate="TextBox5" ErrorMessage="*Enter valid email address" 
        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
        Visible="False"></asp:RegularExpressionValidator>
    <br />
    <font color=" white " size=" 8 ">
        <font color=" black" size=" 5 ">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button21" runat="server" Text="Edit" onclick="Button21_Click" 
        style="margin-top: 44px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label7" runat="server" Text="New NRIC : " Visible="False"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="TextBox6" runat="server" style="margin-left: 26px" 
        Width="135px" Visible="False"></asp:TextBox>
    &nbsp;
    <asp:Button ID="Button15" runat="server" style="margin-left: 24px" 
        Text="Save"  Visible="False" onclick="Button15_Click" />
    &nbsp;
    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
        ControlToValidate="TextBox6" ErrorMessage="*Required" Visible="False"></asp:RequiredFieldValidator>
    </font><br />
    </font>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button22" runat="server" Text="Edit" onclick="Button22_Click" 
        style="margin-top: 40px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label8" runat="server" Text="New H/P Number  : " Visible="False"></asp:Label>
    <asp:TextBox ID="TextBox7" runat="server" style="margin-left: 14px" 
        Width="135px" Visible="False"></asp:TextBox>
    &nbsp;
    <asp:Button ID="Button16" runat="server" style="margin-left: 24px" 
        Text="Save"  Visible="False" onclick="Button16_Click" />
    &nbsp;
    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
        ControlToValidate="TextBox7" ErrorMessage="*Required" Visible="False"></asp:RequiredFieldValidator>
    <br />
    &nbsp;<font color=" white " size=" 8 "><font color=" black" size=" 5 ">&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button23" runat="server" Text="Edit" onclick="Button23_Click" 
        style="margin-top: 44px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label9" runat="server" Text="Address : " Visible="False"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="TextBox8" runat="server" style="margin-left: 28px" 
        Width="135px" Visible="False" Height="22px"></asp:TextBox>
    &nbsp;
    <asp:Button ID="Button17" runat="server" style="margin-left: 24px" 
        Text="Save"  Visible="False" Width="69px" onclick="Button17_Click" />
    &nbsp;
    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
        ControlToValidate="TextBox8" ErrorMessage="*Required" Visible="False"></asp:RequiredFieldValidator>
    </font><br />
        <font color=" black" size=" 5 ">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button24" runat="server" Text="Edit" onclick="Button24_Click" 
        style="margin-top: 42px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label10" runat="server" Text="New Date Of Birth (MM/DD/MM)  : " 
        Visible="False"></asp:Label>
    &nbsp;
    <asp:TextBox ID="TextBox9" runat="server" style="margin-left: 14px" 
        Width="135px" Visible="False"></asp:TextBox>
    &nbsp;
    <asp:Button ID="Button18" runat="server" style="margin-left: 6px" 
        Text="Save"  Visible="False" onclick="Button18_Click" />
    &nbsp;
    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
        ControlToValidate="TextBox9" ErrorMessage="*Required" Visible="False"></asp:RequiredFieldValidator>
&nbsp;&nbsp;&nbsp;
    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
        ControlToValidate="TextBox9" ErrorMessage="*Enter date in (DD/MM/YY) format" 
        Visible="False" 
        ValidationExpression="^(?=\d)(?:(?:(?:(?:(?:0?[13578]|1[02])(\/|-|\.)31)\1|(?:(?:0?[1,3-9]|1[0-2])(\/|-|\.)(?:29|30)\2))(?:(?:1[6-9]|[2-9]\d)?\d{2})|(?:0?2(\/|-|\.)29\3(?:(?:(?:1[6-9]|[2-9]\d)?(?:0[48]|[2468][048]|[13579][26])|(?:(?:16|[2468][048]|[3579][26])00))))|(?:(?:0?[1-9])|(?:1[0-2]))(\/|-|\.)(?:0?[1-9]|1\d|2[0-8])\4(?:(?:1[6-9]|[2-9]\d)?\d{2}))($|\ (?=\d)))?(((0?[1-9]|1[012])(:[0-5]\d){0,2}(\ [AP]M))|([01]\d|2[0-3])(:[0-5]\d){1,2})?$"></asp:RegularExpressionValidator>
    </font></font><br />
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
            <asp:SessionParameter Name="temp" SessionField="temp" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    </form>
</body>
</html>
