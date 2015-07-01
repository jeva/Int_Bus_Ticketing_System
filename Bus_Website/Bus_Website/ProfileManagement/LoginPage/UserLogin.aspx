<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserLogin.aspx.cs" Inherits="Bus_Website.Profile_Management.UserLogin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title></title>

<img src="bus.png"  alt="JS Logo" 
        style="width: 282px; height: 159px; margin-top: 0px" /><img 
        src="logo1.PNG"  alt="MMU Logo" 
        style="width: 1169px; height: 123px; margin-left: 3px; margin-top: 0px" />&nbsp;


</head>
<body>
<body BACKGROUND="background.jpg" >

    	<link rel='stylesheet' type='text/css' href='styles.css' />
	<script src='http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js'></script>
    
    
<br />
<br />
<br /> 
    
<div id='cssmenu'>

<ul>
 <li><a href='index.html'><span>Home</span></a></li>
   <li class='has-sub'><a href='#'><span>User Profile</span></a>
      <ul>
         <li class='has-sub'><a href='#'><span>User Login</span></a>
		 <li class='has-sub'><a href='#'><span>Registration</span></a>
		 <li class='has-sub'><a href='#'><span>Edit Profile</span></a>
		 <li class='has-sub'><a href='#'><span>Change Password</span></a>
		 <li class='has-sub'><a href='#'><span>View Profile</span></a>

   </li>
      </ul>
  </li>
  
     <li class='has-sub'><a href='#'><span>Tickets</span></a>
      <ul>
         <li class='has-sub'><a href='#'><span>Purchase Ticket (e-Ticket)</span></a>
		 <li class='has-sub'><a href='#'><span>Print Ticket</span></a>
		 <li class='has-sub'><a href='#'><span>Edit Ticket</span></a>
		 <li class='has-sub'><a href='#'><span>View Ticket</span></a>

   </li>
      </ul>
  
       <li class='has-sub'><a href='#'><span>Trips</span></a>
      <ul>
         <li class='has-sub'><a href='#'><span>Check Trip Schedule</span></a>

   </li>
      </ul>
	  
	      <li class='has-sub'><a href='#'><span>Contact Us</span></a>

   </li>
   
   <li class='has-sub'><a href='#'><span>About Us</span></a>

   </li>
</ul>
</div>
        <form id="form1" runat="server">
        <div>

        <font   color = " blue " size = " 6 " >Username</font>
            <asp:TextBox ID="txt_username" runat="server"></asp:TextBox>
            
   <br />
   <br />

     <font   color = " blue " size = " 6 " >Username</font>
     <asp:TextBox ID="txt_password"  runat="server"></asp:TextBox>
  
    </div>


        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Button" />
        <p>
            <asp:Label ID="Label1" runat="server" ForeColor="White" Text="Label"></asp:Label>
        </p>


  </form>
</body>
</html>
