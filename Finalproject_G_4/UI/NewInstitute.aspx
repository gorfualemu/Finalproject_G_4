<%@ Page Title="" Language="C#" MasterPageFile="~/UI/MainMaster.Master" AutoEventWireup="true" CodeBehind="NewInstitute.aspx.cs" Inherits="Finalproject_G_4.UI.NewInstitute" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style1 {
        width: 100%;
        height: 70px;
    }
    .auto-style2 {
            width: 451px;
        }
        .auto-style3 {
            text-align: center;
            font-size: x-large;
            height: 67px;
        }
        .auto-style4 {
            text-align: center;
            color: #336699;
            font-size: x-large;
            height: 67px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">

    <table class="auto-style1">
    <tr>
        <td class="auto-style4" style="vertical-align: 0%; " colspan="2"><strong>Institute Registration</strong></td>
        <td class="auto-style3"></td>
    </tr>
    <tr>
        <td class="auto-style2" style="vertical-align: 0%; text-align: right">Id</td>
        <td>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style2" style="vertical-align: 0%; text-align: right">Name</td>
        <td>
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style2" style="vertical-align: 0%; text-align: right">Date</td>
        <td>
            <asp:Calendar ID="Calendar1" runat="server" BackColor="#FFFFCC" BorderColor="#FFCC66" BorderWidth="1px" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#663399" Height="200px" ShowGridLines="True" Width="220px">
                <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />
                <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
                <OtherMonthDayStyle ForeColor="#CC9966" />
                <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
                <SelectorStyle BackColor="#FFCC66" />
                <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" ForeColor="#FFFFCC" />
                <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
            </asp:Calendar>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style2" style="vertical-align: 0%; text-align: right">
            <asp:Button ID="btnsave" runat="server" OnClick="btnsave_Click" Text="save" />
        </td>
        <td>
            <asp:Label ID="messagesuccess" runat="server" ForeColor="#006600"></asp:Label>
        </td>
        <td>&nbsp;</td>
    </tr>
</table>

</asp:Content>
