<%@ Page Title="" Language="C#" MasterPageFile="~/UI/MainMaster.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="Finalproject_G_4.UI.AfterLogin.Index" %>
<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=12.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../scripts/all.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">
    <div class="largeindex">
        <div class="left_nav_index">
            <asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager>
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <asp:Timer ID="Timer1" runat="server" Interval="1000" OnTick="Timer1_click">
                    </asp:Timer>
                    <asp:Image ID="Image17" Width="428px" Height="440" runat="server" />

                </ContentTemplate>
            </asp:UpdatePanel>


            <br />
        </div>

        <div class="right_maine_index">
              
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Drivinglicense %>" SelectCommand="SELECT [FirstName], [MiddleName], [LastName], [Sex], [BirthDate], [Woreda], [Kebele], [Phone], [LicenseType] FROM [Trainee]"></asp:SqlDataSource>
              
        </div>
    </div>
</asp:Content>
