<%@ Page Title="" Language="C#" MasterPageFile="~/UI/MainMaster.Master" AutoEventWireup="true" CodeBehind="NewUserAccount.aspx.cs" Inherits="Finalproject_G_4.UI.NewUserAccount" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../scripts/all.css" rel="stylesheet" />
     
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">
     <div class="largeindex">
        <div class="left_nav">
        </div>
        <div class="right_maine">
             <h2 style="margin-left:250px;margin-top:40px;"> New&nbsp; Create User Account</h2><br/>
            <fieldset class="fielduseraccount" style="margin-left:150px;width:600px;">
                <legend>create account</legend>
                <table class="tblinsuseraccount" style="margin-left:0px; width:100%;">
                    <tr>
                        <td  colspan="3"><h2 style="text-align:center; background-color: #669999;">First Search User Profile</h2></td>
                    </tr>
                    <tr>
                        <td class="tdleft">&nbsp;Enter User ID</td>
                        <td class="tdcenter">
                            <asp:TextBox ID="txtuserid" runat="server" Width="140px" Height="30" placeholder="Name of organization"></asp:TextBox>
                            <strong>&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="btnsearch" runat="server" CssClass="auto-style1" ForeColor="#333399" Text="Search" OnClick="btnsearch_Click" height="30px" />
                            </strong>
                        </td>
                        <td class="tdright">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="tdleft">First Name</td>
                        <td class="tdcenter">
                            <asp:TextBox ID="txtfname" runat="server" Width="200px" Height="30" placeholder="First Name"></asp:TextBox>
                        </td>
                        <td class="tdright">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="tdleft">Last&nbsp;&nbsp; Name</td>
                        <td class="tdcenter">
                            <asp:TextBox ID="txtlname" runat="server" Width="200px" Height="30"></asp:TextBox>
                        </td>
                        <td class="tdright">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="tdleft" colspan="3"><h2 style="text-align:center; background-color: #669999;">Assign User Role</h2></td>
                    </tr>
                    <tr>
                        <td class="tdleft">UserName</td>
                        <td class="tdcenter">
                            <asp:TextBox ID="txtusername" runat="server" Width="200px" Height="30"></asp:TextBox>
                        </td>
                        <td class="tdright">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="tdleft">Password</td>
                        <td class="tdcenter">
                            <asp:TextBox ID="txtpassword" runat="server" Width="200px" Height="30"></asp:TextBox>
                        </td>
                        <td class="tdright">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="tdleft">Confirm password</td>
                        <td class="tdcenter">
                            <asp:TextBox ID="txtconfirmpass" runat="server" Width="200px" Height="30"></asp:TextBox>
                        </td>
                        <td class="tdright">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="tdleft">User Role</td>
                        <td class="tdcenter">
                            <asp:DropDownList ID="ddlrole" runat="server" Height="30px" Width="200px">
                                <asp:ListItem>Admin</asp:ListItem>
                                <asp:ListItem>Institute Manager</asp:ListItem>
                                <asp:ListItem>Examiner</asp:ListItem>
                                <asp:ListItem>Trainer</asp:ListItem>
                                <asp:ListItem>Trainee</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td class="tdright">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="tdleft">&nbsp;</td>
                        <td class="tdcenter">
                            <asp:ImageButton ID="btnsave" runat="server" Height="30" ImageUrl="~/Resource/submit.jpg" OnClick="btnsave_Click" Width="88px" />
                            &nbsp; &nbsp; &nbsp; &nbsp;
                             <asp:ImageButton ID="btnreset" runat="server" Height="30" ImageUrl="~/Resource/reset.PNG" OnClick="btnreset_Click" Width="88px" />
                          
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
