<%@ Page Title="" Language="C#" MasterPageFile="~/UI/MainMaster.Master" AutoEventWireup="true" CodeBehind="NewUsers.aspx.cs" Inherits="Finalproject_G_4.UI.NewUsers" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">
    <div class="largeindex">
        <div class="left_nav">
        </div>
        <div class="right_maine">
             <h2 style="margin-left:250px;margin-top:40px;"> New Users Registration</h2><br/>
            <fieldset class="fielduser" style="margin-left:150px;width:600px;">
                <legend>user login</legend>
                <table class="tblinstitute" style="margin-left:0px; width:100%;">
                    <tr>
                        <td class="tdleft">Users ID </td>
                        <td class="tdcenter">
                            <asp:TextBox ID="txtid" runat="server" Width="200px" Height="30"></asp:TextBox>
                        </td>
                        <td class="tdright">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="tdleft">Organization</td>
                        <td class="tdcenter">
                            <asp:DropDownList ID="ddlInstName" runat="server" Height="30px" Width="200px">
                            </asp:DropDownList>
                        </td>
                        <td class="tdright">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="tdleft">First Name</td>
                        <td class="tdcenter">
                            <asp:TextBox ID="txtfname" runat="server" Width="200px" Height="30" placeholder="Name of organization"></asp:TextBox>
                        </td>
                        <td class="tdright">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="tdleft">Middle Name</td>
                        <td class="tdcenter">
                            <asp:TextBox ID="txtmname" runat="server" Width="200px" Height="30"></asp:TextBox>
                        </td>
                        <td class="tdright">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="tdleft">Last Name</td>
                        <td class="tdcenter">
                            <asp:TextBox ID="txtlname" runat="server" Width="200px" Height="30"></asp:TextBox>
                        </td>
                        <td class="tdright">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="tdleft">Phone</td>
                        <td class="tdcenter">
                            <asp:TextBox ID="txtphone" runat="server" Width="200px" Height="30"></asp:TextBox>
                        </td>
                        <td class="tdright">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="tdleft">Sex</td>
                        <td class="tdcenter">
                            <asp:DropDownList ID="ddlsex" runat="server" Height="30px" Width="200px">
                                <asp:ListItem>Male</asp:ListItem>
                                <asp:ListItem>Female</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td class="tdright">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="tdleft">Email</td>
                        <td class="tdcenter">
                            <asp:TextBox ID="txtemail" runat="server" Width="200px" Height="30"></asp:TextBox>
                        </td>
                        <td class="tdright">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="tdleft">Kebele</td>
                        <td class="tdcenter">
                            <asp:TextBox ID="txtkebele" runat="server" Width="200px" Height="30"></asp:TextBox>
                        </td>
                        <td class="tdright">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="tdleft">&nbsp;</td>
                        <td class="tdcenter">
                            <asp:Button ID="Button4" runat="server" OnClick="btndelete_Click" Text="delete" />
                            <asp:ImageButton ID="btnsave" runat="server" Height="30" ImageUrl="~/Resource/submit.jpg" OnClick="btnsave_Click" Width="88px" />
                            &nbsp;
                             <asp:ImageButton ID="btnreset" runat="server" Height="30" ImageUrl="~/Resource/reset.PNG" OnClick="btnreset_Click" Width="88px" />
                          
                            <asp:Button ID="btndelete" runat="server" OnClick="btnupdate_Click" Text="update" />
                          
                        </td>
                        <td>
                            
                        </td>
                    </tr>
                    <tr>
                        <td class="tdleft">
                            &nbsp;</td>
                        <td class="auto-style1" colspan="2">
                            <asp:Label ID="msgsuccess" runat="server" Text="success " ForeColor="#006600"></asp:Label><br/>
                            <asp:Label ID="msgerror" runat="server" Text="errror " ForeColor="Red"></asp:Label>
                        </td>
                    </tr>
                </table>
            </fieldset>
           <br />    <br />  
        </div>
    </div>
</asp:Content>
