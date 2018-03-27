<%@ Page Title="" Language="C#" MasterPageFile="~/UI/MainMaster.Master" AutoEventWireup="true" CodeBehind="NewNotice.aspx.cs" Inherits="Finalproject_G_4.UI.NewNotice" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style type="text/css">
        .auto-style1 {
            text-align: left;
            height: 40px;
        }
        .auto-style2 {
            text-align: left;
            width: 250px;
            height: 40px;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">

    <div class="largeindex">
        <div class="left_nav">
        </div>
        <div class="right_maine">
            <h2 style="margin-left: 500px; margin-top: 40px;">New Notice For User</h2>
            <br />
            <fieldset class="fieldinst" style="margin-left: 350px; width: 600px;">
                <legend>Notice </legend>
                <table class="tbnotice" style="margin-left: 0px;">
                    <tr>
                        <td class="tdleft">Organization Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                        <td class="tdcenter">
                            <asp:textbox id="txtorg" runat="server" width="285px" height="20px"></asp:textbox>
                        </td>
                        <td class="tdright">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="tdleft">Notice&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                        <td class="tdcenter">
                            <asp:textbox id="txtnotice" runat="server" width="285px" height="40px"></asp:textbox>
                        </td>
                        <td class="tdright">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="tdleft">&nbsp;</td>
                        <td class="auto-style2">
                            <asp:DropDownList ID="DropDownList1" runat="server" Height="23px" Width="97px">
                                <asp:ListItem Selected="True">Public</asp:ListItem>
                                <asp:ListItem>Privat</asp:ListItem>
                            </asp:DropDownList> &nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;
                            <asp:Button ID="btnpost" runat="server" Text="Post" OnClick="btnpost_Click" />
                        </td>
                        <td class="tdright">&nbsp;</td>
                    </tr>

                    <tr>
                        <td class="tdleft">&nbsp;</td>
                        <td class="auto-style1" colspan="2">
                            <asp:Label ID="msgsuccess" style="color:green;" runat="server" Text=" success message" ></asp:Label> <br/>
                             <asp:Label ID="msgerror" style="color:red;" runat="server" Text="message" ></asp:Label>
                        </td>
                    </tr>

                </table>
            </fieldset>
        </div>
    </div>
</asp:Content>
