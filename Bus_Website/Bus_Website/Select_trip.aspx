<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Select_trip.aspx.cs" Inherits="Bus_Website.Ticket_Management.WebForm1" %>

<%@ Register assembly="System.Web.Extensions, Version=3.5.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI" tagprefix="asp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <style type="text/css">
        #Reset1
        {
            width: 87px;
            margin-left: 66px;
        }
    </style>
<h1>Select Trip </h1>
    <title>Ticket Management :: Select Trip </title>
</head>
<body>
    <form id="form1" runat="server">
    <div>

    <fieldset>
    
        <br />
    
    Bus Company :  
        <asp:DropDownList ID="DropDownList1" runat="server" style="margin-left: 23px">
        </asp:DropDownList>

        </br>
        </br>
   
    Boarding Point :
        <asp:DropDownList ID="DropDownList2" runat="server" style="margin-left: 20px">
        </asp:DropDownList>
        
        </br>
        </br>
   
    Arrival Point  :
        <asp:DropDownList ID="DropDownList3" runat="server" style="margin-left: 33px">
        </asp:DropDownList>
        
        </br>
        </br>
   
    Departure Date  :
        <asp:TextBox ID="txt_departure_date" runat="server" style="margin-left: 18px"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" Height="23px" onclick="Button1_Click" 
            style="margin-left: 45px" Text="Date" />
        <br />


&nbsp;<asp:Calendar ID="Calendar1" runat="server" BackColor="#FFFFCC" 
            BorderColor="#FFCC66" BorderWidth="1px" DayNameFormat="Shortest" 
            Font-Names="Verdana" Font-Size="8pt" ForeColor="#663399" Height="200px" 
            onselectionchanged="Calendar1_SelectionChanged" ShowGridLines="True" 
            style="margin-left: 14px" Visible="False" Width="329px">
            <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />
            <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
            <OtherMonthDayStyle ForeColor="#CC9966" />
            <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
            <SelectorStyle BackColor="#FFCC66" />
            <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" 
                ForeColor="#FFFFCC" />
            <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
        </asp:Calendar>
             
        <br />
        <br />
        Return Date&nbsp;  :<asp:TextBox ID="txt_return_date" runat="server" 
            style="margin-left: 29px"></asp:TextBox>
        <asp:Button ID="Button2" runat="server" Height="23px" onclick="Button2_Click" 
            style="margin-left: 56px" Text="Date" />
        <br />
             
        <br />
        <asp:Calendar ID="Calendar2" runat="server" BackColor="#FFFFCC" 
            BorderColor="#FFCC66" BorderWidth="1px" DayNameFormat="Shortest" 
            Font-Names="Verdana" Font-Size="8pt" ForeColor="#663399" Height="200px" 
            onselectionchanged="Calendar2_SelectionChanged" ShowGridLines="True" 
            style="margin-left: 15px" Visible="False" Width="326px">
            <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />
            <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
            <OtherMonthDayStyle ForeColor="#CC9966" />
            <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
            <SelectorStyle BackColor="#FFCC66" />
            <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" 
                ForeColor="#FFFFCC" />
            <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
        </asp:Calendar>
        <br />
        <br />
        Departure Time&nbsp; :&nbsp;
        <asp:TextBox ID="txt_depart_time" runat="server" style="margin-left: 3px"></asp:TextBox>
        <br />
        <br />
        Arrival Time&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :
        <asp:TextBox ID="txt_return_time" runat="server" style="margin-left: 6px"></asp:TextBox>
        <br />

        <br />
             
        </br>
        &nbsp;&nbsp;
        <asp:Button ID="Button3" runat="server" onclick="Button3_Click" 
            style="margin-left: 44px" Text="Submit " />
        <input id="Reset1" type="reset" value="Reset" /><br />
    
        <br />

    </fieldset>
    
    </div>
    <p>

    </p>
    </form>
    </body>
</html>
