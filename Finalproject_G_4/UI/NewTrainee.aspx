<%@ Page Title="" Language="C#" MasterPageFile="~/UI/MainMaster.Master" AutoEventWireup="true" CodeBehind="NewTrainee.aspx.cs" Inherits="Finalproject_G_4.UI.NewTrainee" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../scripts/all.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            text-decoration-style: wavy;
            text-align: right;
            min-width: 100px;
            height: 50px;
        }
        .auto-style2 {
            text-align: center;
            min-width: 100px;
            height: 50px;
        }
        .auto-style3 {
            text-align: left;
            min-width: 100px;
            height: 50px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">
    <div class="largeindex">
        <div class="right_maine">
 
            <br />
   <h2 style="text-align:center;">New Trainee Registration </h2>
            <fieldset class="fieldset_trainee">
                <legend>trainee</legend>
            <table class="tbltrainee">
                <tr>
                    <td class="tdleft" >
                        <table class="tbltraineel">
                             <tr>
                                <td class="tdleft">Trainee ID</td>
                                <td class="tdcenter">
                                    <asp:TextBox ID="txtstudId" runat="server" Height="28px" Width="200px"></asp:TextBox>
                                </td>
                                <td class="tdright">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="tdleft">Institute Name</td>
                                <td class="tdcenter">
                                    <asp:DropDownList ID="ddlInstName" runat="server" Height="28px" Width="200px">
                                    </asp:DropDownList>
                                </td>
                                <td class="tdright">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="tdleft">First Name</td>
                                <td class="tdcenter">
                                    <asp:TextBox ID="txtfname" runat="server" Height="28px" Width="200px"></asp:TextBox>
                                </td>
                                <td class="tdright">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="tdleft">Middle Name</td>
                                <td class="tdcenter">
                                    <asp:TextBox ID="txtmname" runat="server" Height="28px" Width="200px"></asp:TextBox>
                                </td>
                                <td class="tdright">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="tdleft">Last Name</td>
                                <td class="tdcenter">
                                    <asp:TextBox ID="txtlname" runat="server" Height="28px" Width="200px"></asp:TextBox>
                                </td>
                                <td class="tdright">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="tdleft">Sex</td>
                                <td class="tdcenter">

                                    <asp:DropDownList ID="ddlsex" runat="server" Height="29px" Width="200px">
                                        <asp:ListItem>Male</asp:ListItem>
                                        <asp:ListItem>Female</asp:ListItem>
                                    </asp:DropDownList>

                                </td>
                                <td class="tdright">&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="tdleft">Education level</td>
                                <td class="tdcenter">
                                    <asp:DropDownList ID="ddleducation" runat="server" Height="29px" Width="200px">
                                        <asp:ListItem>Grade 4</asp:ListItem>
                                        <asp:ListItem>Grade  5</asp:ListItem>
                                        <asp:ListItem>Grade 6</asp:ListItem>
                                        <asp:ListItem>Grade 7</asp:ListItem>
                                        <asp:ListItem>Grade 8</asp:ListItem>
                                        <asp:ListItem>Grade 9</asp:ListItem>
                                        <asp:ListItem>Grade 10</asp:ListItem>
                                        <asp:ListItem>Grade 11</asp:ListItem>
                                        <asp:ListItem>Grade 12</asp:ListItem>
                                        <asp:ListItem>Diploma</asp:ListItem>
                                        <asp:ListItem>BSC</asp:ListItem>
                                        <asp:ListItem>MSC</asp:ListItem>
                                        <asp:ListItem>Doctor</asp:ListItem>
                                        <asp:ListItem>Profeser</asp:ListItem>
                                    </asp:DropDownList>
                                </td>
                                <td class="tdright">&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="tdleft">Birth Place </td>
                                <td class="tdcenter">
                                    <asp:TextBox ID="txtbirthplace" runat="server" Height="28px" Width="200px"></asp:TextBox>
                                </td>
                                <td class="tdright">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="tdleft">Birth Date</td>
                                <td class="tdcenter">
                                    <asp:TextBox ID="txtbirthdate" runat="server" Type="Date"   Height="28px" Width="200px"></asp:TextBox>
                                </td>
                                <td class="tdright">&nbsp;</td>
                            </tr>
                          
                        </table>
                    </td>
                    <td class="tdcenter">
                        <table>
                              <tr>
                                <td class="tdleft">Nation</td>
                                <td class="tdcenter">
                                    <asp:TextBox ID="txtnation" runat="server" Height="28px" Width="200px"></asp:TextBox>
                                </td>
                                <td class="tdright">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="tdleft">Current City</td>
                                <td class="tdcenter">
                                    <asp:TextBox ID="txtcurrentcity" runat="server" Height="29px" Width="200px"></asp:TextBox>
                                </td>
                                <td class="tdright">&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="tdleft">Region</td>
                                <td class="tdcenter">
                                    <asp:TextBox ID="txtregion" runat="server" Height="29px" Width="200px"></asp:TextBox>
                                </td>
                                <td class="tdright">&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="tdleft">Woreda</td>
                                <td class="tdcenter">
                                    <asp:TextBox ID="txtworeda" runat="server" Height="28px" Width="200px"></asp:TextBox>
                                </td>
                                <td class="tdright">&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="tdleft">Kebele</td>
                                <td class="tdcenter">
                                    <asp:TextBox ID="txtkebele" runat="server" Height="28px" Width="200px"></asp:TextBox>
                                </td>
                                <td class="tdright">&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="tdleft">Phone</td>
                                <td class="tdcenter">
                                    <asp:TextBox ID="txtphone" runat="server" Height="28px" Width="201px"></asp:TextBox>
                                </td>
                                <td class="tdright">&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="tdleft">License Type</td>
                                <td class="tdcenter">
                                    <asp:DropDownList ID="ddllicensetype" runat="server" Height="28px" Width="200px">
                                        <asp:ListItem>p1</asp:ListItem>
                                        <asp:ListItem>P2</asp:ListItem>
                                        <asp:ListItem>P3</asp:ListItem>
                                        <asp:ListItem>D1</asp:ListItem>
                                        <asp:ListItem>D2</asp:ListItem>
                                        <asp:ListItem>D3</asp:ListItem>
                                    </asp:DropDownList>
                                </td>
                                <td class="tdright">&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="tdleft">Current Date</td>
                                <td class="tdcenter">
                                    <asp:TextBox ID="txtcurrentdate" runat="server" Type="Date" Height="27px" Width="200px"></asp:TextBox>
                                </td>
                                <td class="tdright">&nbsp;</td>
                            </tr>
                          
                        </table>
                    </td>
                    <td class="tdright">
                        <fieldset class="fielset_document">
                            <legend>documents</legend>
                            <table>
                                <tr>
                                    <td class="tdleft">studPhoto</td>
                                    <td class="tdcenter">
                                        <asp:FileUpload ID="Filephoto" runat="server" />
                                    </td>
                                    <td class="tdright">&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="tdleft">studDocument</td>
                                    <td  class="tdcenter">
                                        <asp:FileUpload ID="FileDocument" runat="server" />
                                    </td>
                                    <td class="tdright">
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="tdleft">studMedical</td>
                                    <td  class="tdcenter">
                                        <asp:FileUpload ID="FileMedical" runat="server" />
                                    </td>
                                    <td class="tdright">&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style1">studIdentity</td>
                                    <td  class="auto-style2">
                                        <asp:FileUpload ID="FileIdentity" runat="server" />
                                        <br />
                                    </td>
                                    <td class="auto-style3"> </td>
                                </tr>
                                <tr>
                                    <td class="tdleft">
                                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
                                    </td>
                                    <td  class="tdcenter"> 
                                        <asp:Image ID="Image16" runat="server" Height="58px" Width="97px" BorderStyle="Dashed" />
                                    </td>
                                    <td class="tdright"></td>
                                </tr>
                                 <tr>
                                    <td class="tdleft"></td>
                                    <td  class="tdcenter">
                                        <asp:Image ID="Image17" runat="server" BorderStyle="Dashed" Height="58px" Width="97px" />
                                     </td>
                                    <td class="tdright"></td>
                                </tr>
                                 <tr>
                                    <td class="tdleft"></td>
                                    <td  class="tdcenter">
                                        <asp:Image ID="Image18" runat="server" BorderStyle="Dashed" Height="58px" Width="97px" />
                                     </td>
                                    <td class="tdright"></td>
                                </tr>
                                 <tr>
                                    <td class="tdleft"></td>
                                    <td  class="tdcenter"> 
                                        <asp:Image ID="Image19" runat="server" BorderColor="Black" BorderStyle="Dashed" Height="58px" Width="97px" />
                                     </td>
                                    <td class="tdright"></td>
                                </tr>
                            </table>
                        </fieldset>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td class="tdcenter">
                        <asp:ImageButton ID="btnsubmit" runat="server" Height="32px" ImageUrl="~/Resource/submit.jpg" Width="98px" OnClick="btnsubmit_Click" />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                        <asp:ImageButton ID="btnreset" runat="server" Height="32px" ImageUrl="~/Resource/reset.PNG" Width="98px" OnClick="btnreset_Click" />
                    </td>
                    <td class="tdright">
                        <asp:Label ID="msgerror" runat="server" Font-Bold="True" ForeColor="Red"></asp:Label>
                        <asp:Label ID="msgsuccess" runat="server" Text=" " ForeColor="#006600"></asp:Label>
                        <asp:Label ID="msgdocumenterror" runat="server" Text="Label"></asp:Label>
                        <br />
                    </td>
                </tr>
            </table>
            </fieldset>
        </div>
    </div>
</asp:Content>
