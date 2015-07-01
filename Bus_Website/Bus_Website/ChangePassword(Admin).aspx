<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ChangePassword(Admin).aspx.cs"
    Inherits="Bus_Website.ChangePassword_Admin_" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Admin::Change Password</title>
    <style type="text/css">
        #Reset1
        {
            width: 66px;
        }
        .style1
        {
            font-family: Arial;
        }
    </style>
    <img src="bus.png" alt="JS Logo" style="width: 282px; height: 159px; margin-top: 0px" />
    <img src="logo1.PNG" alt="MMU Logo" style="width: 1169px; height: 159px; margin-left: 3px;
        margin-top: 0px" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</head>
<body>
    <div style='position: absolute; z-index: -20; left: 0; top: 0; width: 100%; height: 135%'>
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
                            <li class='has-sub'><a href="Add BusCompany.aspx"><span>Add Bus Company</span></a></li>
                            <li class='has-sub'><a href="ViewBusCompany.aspx"><span>View Bus Company </span></a>
                            </li>
                            <li class='has-sub'><a href="DeleteBusCompany.aspx"><span>Delete Bus Company </span>
                            </a></li>
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
                <strong>Change Password </strong>
            </p>
        </font>
    </center>
    <form id="form1" runat="server">
    <div>
        <font color=" black " size=" 5 ">&nbsp;<span class="style1"><strong>&nbsp;&nbsp; &nbsp;Username&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            :</strong></span></font><span class="style1"><strong>&nbsp;&nbsp;&nbsp;
        </strong></span><strong>
        <asp:TextBox ID="txt_username" runat="server" CssClass="style1"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txt_username"
            ErrorMessage="*Required" ForeColor="#CC0000" CssClass="style1"></asp:RequiredFieldValidator>
        <br class="style1" />
        <br class="style1" />
        </strong><span class="style1">
        <font color=" black " size=" 5 "><strong>&nbsp;&nbsp;&nbsp; &nbsp;Old Password&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            :</strong></font><strong>&nbsp;&nbsp;
        </strong></span><strong>
        <asp:TextBox ID="txt_oldpassword" runat="server" TextMode="Password" 
            CssClass="style1"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txt_oldpassword"
            ErrorMessage="*Required" ForeColor="#CC0000" CssClass="style1"></asp:RequiredFieldValidator>
        <br class="style1" />
        <br class="style1" />
        </strong><span class="style1">
        <font color=" black " size=" 5 "><strong>&nbsp;&nbsp;&nbsp;&nbsp; New Password&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            :</strong></font><strong>&nbsp; &nbsp;
        </strong></span><strong>
        <asp:TextBox ID="txt_newpasword" runat="server" TextMode="Password" 
            CssClass="style1"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txt_newpasword"
            ErrorMessage="*Required" ForeColor="#CC0000" CssClass="style1"></asp:RequiredFieldValidator>
        <br class="style1" />
        <br class="style1" />
        </strong><span class="style1">
        <font color=" black " size=" 5 "><strong>&nbsp;&nbsp;&nbsp;&nbsp; Confirm Password&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:</strong></font><strong>&nbsp;&nbsp;&nbsp;
        </strong></span><strong>
        <asp:TextBox ID="txt_rpassword" runat="server" TextMode="Password" 
            CssClass="style1"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txt_rpassword"
            ErrorMessage="*Required" ForeColor="#CC0000" CssClass="style1"></asp:RequiredFieldValidator>
        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txt_newpasword"
            ControlToValidate="txt_rpassword" ErrorMessage="*Password does not match" 
            ForeColor="#CC0000" CssClass="style1"></asp:CompareValidator>
        </strong>
        <br />
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" Text="Label" Visible="False" 
            style="font-family: Arial; font-weight: 700"></asp:Label>
        <br />
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Submit" runat="server" Text="Submit" OnClick="Submit_Click" Style="height: 26px;
            margin-left: 42px" Width="74px" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input id="Reset1" type="reset" value="Reset" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </div>
    </form>
</body>
</html>
