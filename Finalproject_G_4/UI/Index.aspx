<%@ Page Title="" Language="C#" MasterPageFile="~/UI/MainMaster.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="Finalproject_G_4.UI.AfterLogin.Index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../scripts/home_style.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">
    <div class="largeindex">
         <h1> Debre Birhan City Drivining License <br /> 
             Student Information Management System </h1><br/>
        <div class="left_maine">
            <p>this is the maine content page of </p>
        </div>
        <div class="right_maine">
            <asp:Image class="home_image" runat="server" ImageUrl="~/Resource/toyota.jpg" />
        </div><br/>
        <div class="left_side">
            <p> this is the left content page of  </p>
        </div>
        <div class="center_side">
            <h1>Our vission </h1>
        </div>
        <div class="right_side">
            <h1>Our mission </h1>
        </div>
    </div>
</asp:Content>
