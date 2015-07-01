<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SelectTripDetails(Admin).aspx.cs"
    Inherits="Bus_Website.SelectTripDetails_Admin_aspx" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Admin::Select Trip</title>
    <img src="bus.png" alt="JS Logo" style="width: 282px; height: 159px; margin-top: 0px" />
    <img src="logo1.PNG" alt="MMU Logo" style="width: 1169px; height: 159px; margin-left: 3px;
        margin-top: 0px" />&nbsp;


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
        <div style='position: absolute; z-index: -20; left: 0; top: 0; width: 100%; height: 120%'>
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
            &nbsp;On&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
        </strong>
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
        </font><font color=" black " size=" 4 "><b>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4"
                DataKeyNames="trip_id" DataSourceID="SqlDataSource1" EnableModelValidation="True"
                ForeColor="#333333" GridLines="None" 
            Style="margin-left: 57px; font-family: Arial; font-size: medium;" Width="16px"
                Height="83px">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:TemplateField HeaderText="Select">
                        <ItemTemplate>
                            <asp:CheckBox ID="CheckBox1" runat="server" />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="trip_id" HeaderText="Trip ID                  " ReadOnly="True"
                        SortExpression="trip_id              ">
                        <ControlStyle Height="10px" Width="10px" />
                        <FooterStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="10px" Wrap="False" />
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="10px" Wrap="False" />
                    </asp:BoundField>
                    <asp:BoundField DataField="bus_id" HeaderText="Bus ID" SortExpression="bus_id">
                        <ControlStyle Height="5px" Width="5px" />
                        <HeaderStyle Height="10px" HorizontalAlign="Center" VerticalAlign="Middle" Width="10px"
                            Wrap="False" />
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="10px" />
                    </asp:BoundField>
                    <asp:BoundField DataField="company_name" HeaderText="Company" SortExpression="company_name">
                        <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="10px" Wrap="False" />
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="10px" Wrap="False" />
                    </asp:BoundField>
                    <asp:BoundField DataField="buscompany_id" HeaderText="Company ID" SortExpression="buscompany_id">
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
                    <asp:BoundField DataField="depart_date" HeaderText="Daparture Date" SortExpression="depart_date">
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
                    <asp:BoundField DataField="total_time" HeaderText="Total Time(Hrs)" SortExpression="total_time">
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
            </asp:GridView>
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
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label4" runat="server" 
            style="font-size: x-large; color: #CC0000" Text="Label" Visible="False"></asp:Label>
            <br />
            <br /></font></b> <font color=" black " size=" 5 ">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>&nbsp;<br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </strong>
                <asp:Button ID="Button1" runat="server" Style="margin-left: 33px" 
            Text="Proceed" OnClick="Button1_Click1" Height="33px" Width="129px" />
        </form>
    </body>
