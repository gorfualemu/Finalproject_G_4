<%@ Page Title="" Language="C#" MasterPageFile="~/UI/maine.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Finalproject_G_4.UI.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
 
    <link href="../../scripts/all.css" rel="stylesheet" />
     
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">
    
    <div class="largehome">
                 <div class="left_nav_home" style="overflow-y:scroll">
                     <asp:Image class="left_loginimage" runat="server" ImageUrl="~/Resource/log_picture.PNG" Height="438px" Width="412px" /><br/>
                 </div>
                 
        <div class="right_maine_home"> <%--style="overflow-y: scroll"--%>
            <fieldset class="fieldset">
                <legend>user login</legend>
                <table class="tbl_login">
                    <tr>
                        <td class="tdhead " colspan="3">&nbsp;
                                             <h2 class=" ">User Login </h2>
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td class="tdleft">User Name</td>
                        <td class="tdcenter ">
                            <asp:TextBox ID="txtusername" runat="server" Height="25px" Width="150px"></asp:TextBox>
                        </td>
                        <td class="tdlright ">
                            <asp:Label ID="msgusername" runat="server" Text="?"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="tdleft">Password</td>
                        <td class="tdcenter ">
                            <asp:TextBox ID="txtpassword" runat="server" Height="25px" Width="150px"></asp:TextBox>
                            &nbsp;</td>
                        <td class="tdright">
                            <asp:Label ID="msgpassword" runat="server" Text="?"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="tdleft">&nbsp;</td>
                        <td class="tdcenter ">
                            <asp:ImageButton ID="imgbtnlogin" runat="server" Height="30px" ImageUrl="~/Resource/LOGIN.jpg" OnClick="imgbtnlogin_Click" Width="149px" />
                        </td>
                        <td class="tdright ">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="tblfoot" style="text-align: left;" colspan="3">
                            <asp:Label ID="msgsuccess" runat="server" ForeColor="red" Text="Label"></asp:Label>
                        </td>
                    </tr>
                </table>
            </fieldset>
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
   <%-- using table--%>
</asp:Content>
