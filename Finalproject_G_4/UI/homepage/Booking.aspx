<%@ Page Title="" Language="C#" MasterPageFile="~/UI/maine.Master" AutoEventWireup="true" CodeBehind="Booking.aspx.cs" Inherits="Finalproject_G_4.UI.homepage.Booking" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">
         
    <div class="largehome">
        <div class="left_nav_home" style="overflow-y:scroll">
            <asp:Image class="left_loginimage" runat="server" ImageUrl="~/Resource/log_picture.PNG" Height="427px" Width="410px" /><br />
        </div>

        <div class="right_maine_home">
            <h2 style="text-align:center;">New Trainee Registration </h2><br/>
            <table class="tblbooking">
                <tr>
                    <td>
                        <table class="tblbooking">
                            <tr>
                                <td class="tdleft">Institute Name</td>
                                <td class="tdcenter">
                                    <asp:DropDownList ID="ddlInstName" runat="server" Height="28px" Width="200px">
                                    </asp:DropDownList>
                                </td>
                                <td class="tdright">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="tdleft">First Name</td>
                                <td class="tdcenter">
                                    <asp:TextBox ID="txtfname" runat="server" Height="28px" Width="200px"></asp:TextBox>
                                </td>
                                <td class="tdright">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="tdleft">Middle Name</td>
                                <td class="tdcenter">
                                    <asp:TextBox ID="txtmname" runat="server" Height="28px" Width="200px"></asp:TextBox>
                                </td>
                                <td class="tdright">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="tdleft">Last Name</td>
                                <td class="tdcenter">
                                    <asp:TextBox ID="txtlname" runat="server" Height="28px" Width="200px"></asp:TextBox>
                                </td>
                                <td class="tdright">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="tdleft">Sex</td>
                                <td class="tdcenter">

                                    <asp:DropDownList ID="ddlsex" runat="server" Height="29px" Width="200px">
                                        <asp:ListItem>Male</asp:ListItem>
                                        <asp:ListItem>Female</asp:ListItem>
                                    </asp:DropDownList>

                                </td>
                                <td class="tdright">&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="tdleft">Education level</td>
                                <td class="tdcenter">
                                    <asp:DropDownList ID="ddleducation" runat="server" Height="29px" Width="200px">
                                        <asp:ListItem>Grade 4</asp:ListItem>
                                        <asp:ListItem>Grade  5</asp:ListItem>
                                        <asp:ListItem>Grade 6</asp:ListItem>
                                        <asp:ListItem>Grade 7</asp:ListItem>
                                        <asp:ListItem>Grade 8</asp:ListItem>
                                        <asp:ListItem>Grade 9</asp:ListItem>
                                        <asp:ListItem>Grade 10</asp:ListItem>
                                        <asp:ListItem>Grade 11</asp:ListItem>
                                        <asp:ListItem>Grade 12</asp:ListItem>
                                        <asp:ListItem>Diploma</asp:ListItem>
                                        <asp:ListItem>BSC</asp:ListItem>
                                        <asp:ListItem>MSC</asp:ListItem>
                                        <asp:ListItem>Doctor</asp:ListItem>
                                        <asp:ListItem>Profeser</asp:ListItem>
                                    </asp:DropDownList>
                                </td>
                                <td class="tdright">&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="tdleft">Birth Place </td>
                                <td class="tdcenter">
                                    <asp:TextBox ID="txtbirthplace" runat="server" Height="28px" Width="200px"></asp:TextBox>
                                </td>
                                <td class="tdright">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="tdleft">Birth Date</td>
                                <td class="tdcenter">
                                    <asp:TextBox ID="txtbirthdate" runat="server" Type="Date"   Height="28px" Width="200px"></asp:TextBox>
                                </td>
                                <td class="tdright">&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="tdleft">Nation</td>
                                <td class="tdcenter">
                                    <asp:TextBox ID="txtnation" runat="server" Height="28px" Width="200px"></asp:TextBox>
                                </td>
                                <td class="tdright">
                                    &nbsp;</td>
                            </tr>
                          
                        </table>
                    </td>
                    <td>
                        <table>
                              <tr>
                                <td class="tdleft">Current City</td>
                                <td class="tdcenter">
                                    <asp:TextBox ID="txtcurrentcity" runat="server" Height="29px" Width="200px"></asp:TextBox>
                                </td>
                                <td class="tdright">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="tdleft">Region</td>
                                <td class="tdcenter">
                                    <asp:TextBox ID="txtregion" runat="server" Height="29px" Width="200px"></asp:TextBox>
                                </td>
                                <td class="tdright">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="tdleft">Woreda</td>
                                <td class="tdcenter">
                                    <asp:TextBox ID="txtworeda" runat="server" Height="28px" Width="200px"></asp:TextBox>
                                </td>
                                <td class="tdright">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="tdleft">Kebele</td>
                                <td class="tdcenter">
                                    <asp:TextBox ID="txtkebele" runat="server" Height="28px" Width="200px"></asp:TextBox>
                                </td>
                                <td class="tdright">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="tdleft">Phone</td>
                                <td class="tdcenter">
                                    <asp:TextBox ID="txtphone" runat="server" Height="28px" Width="201px"></asp:TextBox>
                                </td>
                                <td class="tdright">&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="tdleft">License Type</td>
                                <td class="tdcenter">
                                    <asp:DropDownList ID="ddllicensetype" runat="server" Height="28px" Width="200px">
                                        <asp:ListItem>p1</asp:ListItem>
                                        <asp:ListItem>P2</asp:ListItem>
                                        <asp:ListItem>P3</asp:ListItem>
                                        <asp:ListItem>D1</asp:ListItem>
                                        <asp:ListItem>D2</asp:ListItem>
                                        <asp:ListItem>D3</asp:ListItem>
                                    </asp:DropDownList>
                                </td>
                                <td class="tdright">&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="tdleft">Current Date</td>
                                <td class="tdcenter">
                                    <asp:TextBox ID="txtcurrentdate" runat="server" Type="Date"  Height="27px" Width="200px"></asp:TextBox>
                                </td>
                                <td class="tdright">&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="tdleft">&nbsp;</td>
                                <td class="tdcenter">  <br/>
                        <asp:ImageButton ID="btnsubmit" runat="server" Height="32px" ImageUrl="~/Resource/submit.jpg" Width="98px" OnClick="btnsubmit_Click" OnClientClick="return validate();" />
                                    &nbsp;&nbsp;&nbsp; 
                        <asp:ImageButton ID="btnreset" runat="server" Height="32px" ImageUrl="~/Resource/reset.PNG" Width="98px" OnClick="btnreset_Click" />
                                </td>
                                <td class="tdright">&nbsp;</td>
                            </tr>
                            <tr>
                                <td class=" " colspan="2" style="text-align:left; font-size:24px;color:red;">
                                   <asp:Label ID="msgerror" runat="server" Font-Bold="True" ForeColor="Red"></asp:Label>
                                    <asp:Label ID="msgsuccess" runat="server" Text="Label" ForeColor="#006600"></asp:Label>
                                </td>
                                <td class="tdright">&nbsp;</td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </div>
        <div class="left_side">
            <asp:Image class="home_image" runat="server" ImageUrl="~/Resource/reg.jpg" Height="332px" Width="354px" /><br />
        </div>
        <div class="center_side">
            <h1>Our vission </h1>
            <br />
            <p class="mission">
                Video provides a powerful way to help you prove your point.
                 When you click Online Video, you can paste in the embed code for the video you want to add.
                 You can also type a keyword to search online for the video that best fits your document.
                To make your document look professionally produced, Word provides header, footer, cover page, and text box designs that complement each other.
                 For example, you can add a matching cover page, header, and sidebar. 
            </p>
        </div>
        <div class="right_side">
            <h1>Our mission </h1>
            <br />
            <p class="mission">
                Video provides a powerful way to help you prove your point.
                 When you click Online Video, you can paste in the embed code for the video you want to add.
                 You can also type a keyword to search online for the video that best fits your document.
                To make your document look professionally produced, Word provides header, footer, cover page, and text box designs that complement each other.
                 For example, you can add a matching cover page, header, and sidebar.  
            </p>
        </div>
    </div>
</asp:Content>
