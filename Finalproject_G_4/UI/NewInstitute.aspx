﻿<%@ Page Title="" Language="C#" MasterPageFile="~/UI/MainMaster.Master" AutoEventWireup="true" CodeBehind="NewInstitute.aspx.cs" Inherits="Finalproject_G_4.UI.NewInstitute" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../scripts/all.css" rel="stylesheet" />
 
    <style type="text/css">
        .auto-style1 {
            text-align: center;
            height: 40px;
        }
    </style>
 
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">

     <div class="largeindex">
        <div class="left_nav">
        </div>
        <div class="right_maine">
             <h2 style="margin-left:250px;margin-top:40px;"> New Institute Registration</h2><br/>
            <fieldset class="fieldinst" style="margin-left:150px;width:600px;">
                <legend>user login</legend>
                <table class="tblinstitute" style="margin-left:0px; width:100%;">
                    <tr>
                        <td class="tdleft">Institute ID</td>
                        <td class="tdcenter">
                            <asp:TextBox ID="txtid" runat="server" Width="200px" Height="30"></asp:TextBox>
                        </td>
                        <td class="tdright">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="tdleft">Institute Name</td>
                        <td class="tdcenter">
                            <asp:TextBox ID="txtname" runat="server" Width="200px" Height="30" placeholder="Name of organization"></asp:TextBox>
                        </td>
                        <td class="tdright">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="tdleft">Zone</td>
                        <td class="tdcenter">
                            <asp:TextBox ID="txtzone" runat="server" Width="200px" Height="30"></asp:TextBox>
                        </td>
                        <td class="tdright">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="tdleft">Town</td>
                        <td class="tdcenter">
                            <asp:TextBox ID="txttown" runat="server" Width="200px" Height="30"></asp:TextBox>
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
                        <td class="tdleft">Fax</td>
                        <td class="tdcenter">
                            <asp:TextBox ID="txtfax" runat="server" Width="200px" Height="30"></asp:TextBox>
                        </td>
                        <td class="tdright">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="tdleft">Start Date</td>
                        <td class="tdcenter">
                            <asp:TextBox ID="txtstartdate" runat="server" Width="200px" Height="30"></asp:TextBox>
                        </td>
                        <td class="tdright">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="tdleft">Owner</td>
                        <td class="tdcenter">
                            <asp:TextBox ID="txtowner" runat="server" Width="200px" Height="30"></asp:TextBox>
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
                            <asp:ImageButton ID="btnsave" runat="server" Height="44px" ImageUrl="~/Resource/submit.jpg" OnClick="btnsave_Click" Width="88px" />
                            &nbsp;

                          
                            <asp:ImageButton ID="btnsave0" runat="server" Height="44px" ImageUrl="~/Resource/reset.PNG" OnClick="btnsave_Click" Width="88px" />

                          
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
            <br /><br />
        </div>
    </div>
</asp:Content>
