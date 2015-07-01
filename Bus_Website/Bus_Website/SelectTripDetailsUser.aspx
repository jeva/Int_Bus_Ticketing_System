<style type="text/css">
    #form1
    {
        width: 1356px;
    }
</style>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SelectTripDetailsUser.aspx.cs"
    Inherits="Bus_Website.Test" %>

<%@ Register Assembly="System.Web.Extensions, Version=3.5.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35"
    Namespace="System.Web.UI.WebControls" TagPrefix="asp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Trip Results</title>
    <img src="bus.png" alt="JS Logo" style="width: 282px; height: 159px; margin-top: 0px" />
    <img src="logo1.PNG" alt="MMU Logo" style="width: 1169px; height: 159px; margin-left: 3px;
        margin-top: 0px" />&nbsp;&nbsp;


<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js">
</script>

<script>
    $(document).ready(function () {
        $('input:checkbox').click(function () {
            var $inputs = $('input:checkbox')
            if ($(this).is(':checked')) {
                $inputs.not(this).prop('disabled', true);
            } else {
                $inputs.prop('disabled', false);
            }
        })
    })
</script>
</head>
<body>
    <div style='position: absolute; z-index: -20; left: 0; top: 0; width: 100%; height: 150%'>
        <img src="images1.jpg" style='width: 100%; height: 100%' alt='[]' />
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
    <br />
    <br />
    <center>
        <font color=" black " size=" 8 "><strong>Trip Details</strong><br />
            <br />
        </font>
    </center>
    <font color=" black " size=" 5 ">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong><asp:Label
        ID="Label1" runat="server" Text="Label"></asp:Label>
        &nbsp; To&nbsp;&nbsp;
        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
        &nbsp;On&nbsp;&nbsp;&nbsp;<asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
    </strong>
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
        <strong><b>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4"
                DataKeyNames="trip_id" DataSourceID="SqlDataSource1" EnableModelValidation="True"
                ForeColor="#333333" GridLines="None" Style="margin-left: 34px; font-weight: 700; font-family: Arial; font-size: medium;"
                Width="378px" Height="123px">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:TemplateField HeaderText="Select">
                        <ItemTemplate>
                            <asp:CheckBox ID="CheckBox1" runat="server" />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="trip_id" HeaderText="Trip ID                  " ReadOnly="True"
                        SortExpression="trip_id" Visible = "false">
                        <ControlStyle Height="10px" Width="10px" />
                        <FooterStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="10px" Wrap="False" />
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="10px" Wrap="False" />
                    </asp:BoundField>
                    <asp:BoundField DataField="bus_id" HeaderText="Bus ID" SortExpression="bus_id" Visible = "false">
                        <ControlStyle Height="5px" Width="5px" />
                        <HeaderStyle Height="10px" HorizontalAlign="Center" VerticalAlign="Middle" Width="10px"
                            Wrap="False" />
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="10px" />
                    </asp:BoundField>
                    <asp:BoundField DataField="company_name" HeaderText="Company" SortExpression="company_name">
                        <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="10px" Wrap="False" />
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="10px" Wrap="False" />
                    </asp:BoundField>
                    <asp:BoundField DataField="buscompany_id" HeaderText="Company ID" SortExpression="buscompany_id" Visible = "false">
                        <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="10px" Wrap="False" />
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="10px" Wrap="False" />
                    </asp:BoundField>
                    <asp:BoundField DataField="boarding_point" HeaderText="Departure" SortExpression="boarding_point">
                        <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="10px" Wrap="False" />
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="10px" Wrap="False" />
                    </asp:BoundField>
                    <asp:BoundField DataField="arrival_point" HeaderText="Arrival" SortExpression="arrival_point">
                        <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="10px" Wrap="False" />
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Wrap="False" />
                    </asp:BoundField>
                    <asp:BoundField DataField="depart_date" HeaderText="Departure Date" SortExpression="depart_date">
                        <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="10px" Wrap="False" />
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="10px" Wrap="False" />
                    </asp:BoundField>
                    <asp:BoundField DataField="depart_time" HeaderText="Departure Time (24Hrs)" SortExpression="depart_time">
                        <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="10px" Wrap="False" />
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="10px" Wrap="False" />
                    </asp:BoundField>
                    <asp:BoundField DataField="arrival_time" HeaderText="Arrival Time (24Hrs)" SortExpression="arrival_time">
                        <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="10px" Wrap="False" />
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Wrap="False" />
                    </asp:BoundField>
                    <asp:BoundField DataField="adult_fare" HeaderText="Adult Fare (RM)" SortExpression="adult_fare">
                        <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Wrap="False" />
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Wrap="False" />
                    </asp:BoundField>
                    <asp:BoundField DataField="child_fare" HeaderText="Child Fare (RM)" SortExpression="child_fare">
                        <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="10px" Wrap="False" />
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="10px" Wrap="False" />
                    </asp:BoundField>
                    <asp:BoundField DataField="total_time" HeaderText="Total Time (Hrs)" SortExpression="total_time">
                        <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="10px" Wrap="False" />
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="10px" Wrap="False" />
                    </asp:BoundField>
                </Columns>
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            </asp:GridView></strong>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Online_BusConnectionString %>"
            SelectCommand="sp_CheckTrip" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:SessionParameter Name="boarding_point" SessionField="boarding_point" Type="String" />
                <asp:SessionParameter Name="arrival_point" SessionField="arrival_point" Type="String" />
                <asp:SessionParameter DefaultValue="" Name="depart_date" SessionField="depart_date"
                    Type="DateTime" />
                <asp:SessionParameter Name="depart_time" SessionField="depart_time" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label4" runat="server" Text="Label" 
        style="font-size: x-large; color: #CC0000" Visible="False"></asp:Label>
        <br />
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" Style="margin-left: 33px" 
        Text="Proceed" OnClick="Button1_Click1" Height="39px" Width="112px" />
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
    </form>
</body>
</html>
