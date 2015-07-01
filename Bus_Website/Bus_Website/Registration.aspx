<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="Bus_Website.Registration" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Registration</title>
    <style type="text/css">
        #Reset1
        {
            width: 96px;
            margin-left: 102px;
        }
        .style1
        {
            font-family: Arial;
            text-align: left;
        }
        .style2
        {
            font-size: large;
        }
        .style3
        {
            font-family: Arial;
            font-size: large;
            margin-left: 0px;
        }
        .style4
        {
            font-family: Arial;
            text-align: center;
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
    <script src='http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js'></script>
    <br />
    <br />
    <div id='cssmenu'>
        <ul>
            <li><a href="Homepage.aspx"><span>Home</span></a></li>
            <li class='has-sub'><a href='#'><span>User Profile</span></a>
                <ul>
                    <li class='has-sub'><a href="Homepage.aspx">Sign in</a>
                        <li class='has-sub'><a href="Registration.aspx"><span>Registration</span></a>
                </ul>
                <li class='has-sub'><a href="ContactUs(home).aspx"><span>Contact Us</span></a> </li>
                
        </ul>
    </div>
    <br />
    <form id="form1" runat="server">
    <div style="width: 1378px">
        <center>
            <font color=" black " size=" 8 ">
                <p class="style4">
                    <strong>Registration Form</strong></p>
            <p class="style1">
        <font color=" black " size=" 5 ">
        <strong><span class="style2">
        &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" 
            Text="Registration Succesfull. Enjoy using our system." Visible="False" 
            style="font-weight: 700" CssClass="style1"></asp:Label>
        </span></strong>
                    </font></p>
            </font>
        </center>
        <strong>
        <br class="style3" />
        </strong><span class="style3">
        <font color=" black "><strong>&nbsp;&nbsp;&nbsp;&nbsp; Username&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:</strong></font></span><strong><span 
            class="style3">&nbsp;
        </span>
        <asp:TextBox ID="txt_username" runat="server" Width="165px" 
            Style="margin-left: 30px" CssClass="style3"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*Required"
            ForeColor="#CC0000" ControlToValidate="txt_username" CssClass="style3"></asp:RequiredFieldValidator>
        </strong>
        <font color=" black " size=" 5 " class="style2"><strong><span class="style1">&nbsp;&nbsp;&nbsp;&nbsp;
            </span>
            <br class="style1" />
            <br class="style1" />
            <span class="style1">&nbsp;&nbsp;&nbsp;&nbsp; Password&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;:</span></strong></font><strong><span class="style3">&nbsp;
        </span>
        <asp:TextBox ID="txt_password" runat="server" Width="165px" Style="margin-left: 29px"
            TextMode="Password" CssClass="style3"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*Required"
            ForeColor="#CC0000" ControlToValidate="txt_password" CssClass="style3"></asp:RequiredFieldValidator>
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong><span class="style3"><font color=" black ">
        <strong>Confirm
            Password&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :</strong></font></span><strong><span 
            class="style3">&nbsp;
        </span>
        <asp:TextBox ID="txt_rpassword" runat="server" TextMode="Password" Height="22px"
            Style="margin-left: 29px" Width="168px" CssClass="style3"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*Required"
            ForeColor="#CC0000" ControlToValidate="txt_rpassword" CssClass="style3"></asp:RequiredFieldValidator>
        <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="*Password does not match"
            ControlToCompare="txt_password" ControlToValidate="txt_rpassword" 
            ForeColor="#CC0000" CssClass="style3"></asp:CompareValidator>
        <br class="style3">
        </br> </strong><span class="style3"><font color=" black "><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; First Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            :</strong></font></span><strong><span class="style3">&nbsp;
        </span>
        <asp:TextBox ID="txt_firstname" runat="server" Style="margin-left: 31px" 
            Width="166px" CssClass="style3"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ErrorMessage="*Required"
            ForeColor="#CC0000" ControlToValidate="txt_firstname" CssClass="style3"></asp:RequiredFieldValidator>
        <br class="style3" />
        <br class="style3" />
        </strong><span class="style3">
        <font color=" black "><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Last Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            :</strong></font></span> <strong>&nbsp;<asp:TextBox ID="txt_lastname" 
            runat="server" Style="margin-left: 34px" Width="164px" CssClass="style3"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ErrorMessage="*Required"
            ForeColor="#CC0000" ControlToValidate="txt_lastname" CssClass="style3"></asp:RequiredFieldValidator>
        <br class="style3" />
        <br class="style3" />
        <span class="style3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></strong>
        <span class="style3"><font color=" black "><strong>Email&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            :</strong></font></span> <strong>
        <asp:TextBox ID="txt_ic" runat="server" Style="margin-left: 36px" Width="163px" 
            CssClass="style3"></asp:TextBox>
        <span class="style3">&nbsp;
        </span>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" ControlToValidate="txt_ic"
            ErrorMessage="*Required" ForeColor="#CC0000" CssClass="style3"></asp:RequiredFieldValidator>
        <span class="style3">&nbsp;
        </span>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txt_ic"
            ErrorMessage="*Please enter a valid email address" 
            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
            CssClass="style3" ForeColor="#CC0000"></asp:RegularExpressionValidator>
        <br class="style3" />
        <br class="style3" />
        <span class="style3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></strong>
        <span class="style3"><font color=" black "><strong>IC Number&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
            &nbsp;:</strong></font></span><strong><span class="style3"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
        <asp:TextBox ID="txt_hp" runat="server" Style="margin-left: 0px" Width="162px" 
            CssClass="style3"></asp:TextBox>
        <span class="style3">&nbsp; </span>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" ErrorMessage="*Required"
            ForeColor="#CC0000" ControlToValidate="txt_hp" CssClass="style3"></asp:RequiredFieldValidator>
        <span class="style3">&nbsp;
        </span>
        <br class="style3" />
        <br class="style3" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong><span class="style3">
        <font color=" black "><strong>H/P Number&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            :</strong></font></span> <strong>&nbsp;<asp:TextBox ID="txt_email" 
            runat="server" Style="margin-left: 32px" Width="167px" CssClass="style3"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*Required"
            ForeColor="#CC0000" ControlToValidate="txt_email" CssClass="style3"></asp:RequiredFieldValidator>
        <br class="style3">
        </br>
        <br class="style3" />
        </strong><span class="style3">
        <font color=" black "><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Address&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            :</strong></font></span> <strong>
        <br class="style3" />
        <span class="style3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </span>
        <asp:TextBox ID="txt_address" runat="server" Height="138px" Width="415px" 
            TextMode="multiline" Columns="50" Rows="5"  Style="margin-left: 13px" 
            CssClass="style3"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator18" runat="server" ErrorMessage="*Required"
            ForeColor="#CC0000" ControlToValidate="txt_address" CssClass="style3"></asp:RequiredFieldValidator>
        <br class="style3" />
        <br class="style3" />
        <br class="style3" />
        </strong><span class="style3">
        <font color=" black "><strong>&nbsp;&nbsp;&nbsp;&nbsp; Date of Birth &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp; :</strong></font></span><strong><span class="style3"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        </span>
        <asp:TextBox ID="TextBox2" runat="server" CssClass="style3"></asp:TextBox>
        <span class="style3">&nbsp;&nbsp;
        </span>
        <asp:Label ID="Label13" runat="server" Text="(MM/DD/YY)" CssClass="style3"></asp:Label>
        <span class="style3">&nbsp;&nbsp;
        </span>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ControlToValidate="TextBox2"
            ErrorMessage="*Required" CssClass="style3"></asp:RequiredFieldValidator>
        <span class="style3">&nbsp;&nbsp;&nbsp;&nbsp;
        </span>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox2"
            ErrorMessage="*Enter a valid date" 
            ValidationExpression="^(?=\d)(?:(?:(?:(?:(?:0?[13578]|1[02])(\/|-|\.)31)\1|(?:(?:0?[1,3-9]|1[0-2])(\/|-|\.)(?:29|30)\2))(?:(?:1[6-9]|[2-9]\d)?\d{2})|(?:0?2(\/|-|\.)29\3(?:(?:(?:1[6-9]|[2-9]\d)?(?:0[48]|[2468][048]|[13579][26])|(?:(?:16|[2468][048]|[3579][26])00))))|(?:(?:0?[1-9])|(?:1[0-2]))(\/|-|\.)(?:0?[1-9]|1\d|2[0-8])\4(?:(?:1[6-9]|[2-9]\d)?\d{2}))($|\ (?=\d)))?(((0?[1-9]|1[012])(:[0-5]\d){0,2}(\ [AP]M))|([01]\d|2[0-3])(:[0-5]\d){1,2})?$" 
            CssClass="style3"></asp:RegularExpressionValidator>
        <br class="style3" />
        <br class="style3" />
        <br class="style3" />
        </strong><span class="style3">
        <font color=" black "><strong>&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label14" runat="server" 
            Text="Roles&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :" 
            Visible="False"></asp:Label>
&nbsp;</strong></font></span><strong><span class="style3"> &nbsp;&nbsp;&nbsp;&nbsp;
        </span>
        <asp:DropDownList ID="ddl_roles" runat="server" Style="margin-left: 0px" 
            CssClass="style3" Visible="False">
            <asp:ListItem>User</asp:ListItem>
            <asp:ListItem>Admin</asp:ListItem>
        </asp:DropDownList>
        <br class="style3" />
        <span class="style3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </span>
        <br class="style3" />
        <br class="style3" />
        <span class="style3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </span>
        <asp:Button ID="Button1" runat="server" Style="margin-left: 247px; margin-top: 4px;"
            Text="Submit" Width="98px" OnClick="Button1_Click" CssClass="style3" />
        <input id="Reset1" type="reset" value="Reset" class="style3" /><span 
            class="style3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><br 
            class="style3" />
        <br class="style3" />
        <br class="style3" />
        <span class="style3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
        </span></strong>
        <font color=" black " size=" 5 ">
        <strong><span class="style2">
        <br class="style1" />
        </span></strong>
        <br />
        <br />
    </div>
    <p>
        &nbsp;</p>
    </fieldset>
    </form>
</body>
</html>
