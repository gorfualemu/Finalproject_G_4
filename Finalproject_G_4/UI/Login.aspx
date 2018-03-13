<%@ Page Title="" Language="C#" MasterPageFile="~/UI/maine.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Finalproject_G_4.UI.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
 
    <link href="../scripts/login.css" rel="stylesheet" />
   

    <style type="text/css">
        .auto-style5 {
            width: 95%;
            padding: 5px;
            margin: 10px;
            height: 213px;
        }
        .auto-style6 {
            width: 499px;
        }
        .auto-style7 {
            width: 514px;
            height: 283px;
            padding: 20px;
            margin-top: 20px;
            margin-left: 400px;
            background-color: #d4dce4;
        }
        .auto-style8 {
            width: 170px;
            text-align: center;
        }
        .auto-style9 {
            width: 91px;
            height: 40px;
            text-align: right;
        }
        .auto-style10 {
            text-align: center;
            font-size: large;
            height: 43px;
        }
    </style>
   

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">
    <div class="auto-style7">
     <fieldset id="field" class="auto-style6">
         <legend> User Login </legend>

         <table class="auto-style5">
             <tr>
                 <td class="auto-style10" colspan="3" style="background-color: #006600; color: #FFFFFF;">User Login</td>
             </tr>
             <tr>
                 <td class="auto-style9">Username</td>
                 <td class="auto-style8">
                     <asp:TextBox ID="txtusername" runat="server"></asp:TextBox>
                 </td>
                 <td>
                     <asp:Label ID="massageerroru" runat="server"></asp:Label>
                 </td>
             </tr>
             <tr>
                 <td class="auto-style9">Password</td>
                 <td class="auto-style8">
                     <asp:TextBox ID="txtpassword" runat="server"></asp:TextBox>
                 </td>
                 <td>
                     <asp:Label ID="massageerrrorp" runat="server"></asp:Label>
                 </td>
             </tr>
             <tr>
                 <td class="auto-style3">&nbsp;</td>
                 <td class="auto-style8">
                     <asp:Button ID="btnlogin" runat="server" Text="Login" Width="125px" OnClick="btnlogin_Click" /><br/><br/>
                     <asp:Label ID="massagesuccess" runat="server"></asp:Label>
                 </td>
                 <td>&nbsp;</td>
             </tr>
         </table>

     </fieldset>
  </div>
</asp:Content>
