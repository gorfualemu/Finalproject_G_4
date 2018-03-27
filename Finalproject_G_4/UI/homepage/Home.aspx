<%@ Page Title="" Language="C#" MasterPageFile="~/UI/maine.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Finalproject_G_4.UI.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../scripts/all.css" rel="stylesheet" />
  
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">
     
    <div class="largehome">
        <div class="left_nav_home" style="overflow-y:scroll">
              <div class="timers">
                   <asp:ScriptManager ID="ScriptManager1" runat="server">
                   </asp:ScriptManager>
                  <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                      <ContentTemplate>
                          <asp:Timer ID="Timer1" runat="server" OnTick="Timer1_Tick1" Interval="1000">
                          </asp:Timer>
                          <asp:Image ID="ImageAnimate" runat="server" Height="374px" Width="337px" />
                      </ContentTemplate>
                  </asp:UpdatePanel>
                       
            </div>
        </div>
        <div class="right_maine_home">
            <p class="mission">
                Video provides a powerful way to help you prove your point.
                 When you click Online Video, you can paste in the embed code for the video you want to add.
                 You can also type a keyword to search online for the video that best fits your document.
                To make your document look professionally produced, Word provides header, footer, cover page, and text box designs that complement each other.
                 For example, you can add a matching cover page, header, and sidebar.
             </p>

        </div>
        <br />
        <div class="left_side">
            <asp:Image class="home_image" runat="server" ImageUrl="~/Resource/reg.jpg" Height="315px" Width="357px" /><br />
        </div>
        <div class="center_side">
            <h1>Our vission </h1>
            <br/>
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
