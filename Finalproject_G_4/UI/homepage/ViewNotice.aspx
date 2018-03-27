<%@ Page Title="" Language="C#" MasterPageFile="~/UI/maine.Master" AutoEventWireup="true" CodeBehind="ViewNotice.aspx.cs" Inherits="Finalproject_G_4.UI.homepage.ViewNotice" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">
       
    <div class="largehome">
                 <div class="left_nav_home" style="overflow-y:scroll">
                     <asp:Image class="left_loginimage" runat="server" ImageUrl="~/Resource/log_picture.PNG" Height="384px" Width="403px" /><br />
                 </div>
                 
        <div class="right_maine_home">
              <p>
                Debre Birhan City Transport Agency<br />
                the studet who went to register to get driving license you can register now <br />
              the start date is today and the deadline of the registration is the next monday
            </p>
             
             
              <br />
              <asp:GridView ID="gvnotice" AutoGenerateColumns="False" Width="90%" min_Height=" 100px"
                 style="text-align:center;"  runat="server"  CellPadding="4" ForeColor="#333333" GridLines="None" OnRowEditing="gvnotice_RowEditing">
                  
                  <AlternatingRowStyle BackColor="White" />
                  <EditRowStyle BackColor="#7C6F57" />
                  <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                  <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                  <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                  <RowStyle BackColor="#E3EAEB" />
                  <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                  <SortedAscendingCellStyle BackColor="#F8FAFA" />
                  <SortedAscendingHeaderStyle BackColor="#246B61" />
                  <SortedDescendingCellStyle BackColor="#D4DFE1" />
                  <SortedDescendingHeaderStyle BackColor="#15524A" />
              <Columns>
                    <asp:TemplateField HeaderText="Organization" InsertVisible="true">
                        <ItemTemplate>
                            <asp:Label Text='<%#Eval("Organization")%>' runat="server"></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtorg" Text='<%#Eval("Organization")%>' runat="server" />
                        </EditItemTemplate>
                    </asp:TemplateField>
                   <asp:TemplateField HeaderText="Message" InsertVisible="true">
                        <ItemTemplate>
                            <asp:Label Text='<%#Eval("Description")%>' runat="server"></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtdesc" Text='<%#Eval("Description")%>' runat="server" />
                        </EditItemTemplate>
                    </asp:TemplateField>
                   <asp:TemplateField HeaderText="Date" InsertVisible="true">
                        <ItemTemplate>
                            <asp:Label Text='<%#Eval("PDate")%>' runat="server"></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtdate" Text='<%#Eval("PDate")%>' runat="server" />
                        </EditItemTemplate>
                    </asp:TemplateField>
                  <asp:TemplateField HeaderText="">
                        <ItemTemplate>
                            <asp:ImageButton runat="server" ImageUrl="~/Images/edit.png" ID="ibe" CommandName="Edite" ToolTip="edit" Width="20px" Height="30px" />
                            <asp:ImageButton runat="server" ImageUrl="~/Images/Delete.png" ID="ibd" CommandName="Delete" Width="20px" Height="30px" />

                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:ImageButton runat="server" ImageUrl="~/Images/update.png" ID="ibu" CommandName="Update" Width="20px" Height="30px" />
                            <asp:ImageButton runat="server" ImageUrl="~/Images/Cancel.png" ID="ibc" CommandName="Cancel" Width="20px" Height="30px" />
                        </EditItemTemplate>
                        <HeaderStyle Height="50px" Width="100px" />
                    </asp:TemplateField>
              </Columns>
              
              </asp:GridView>
             
             
        </div>
        <div class="left_side">
            <asp:Image class="home_image" runat="server" ImageUrl="~/Resource/reg.jpg" Height="332px" Width="354px" /><br />
        </div>
        <div class="center_side">
            <h1>Our vission </h1>
            <br />
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
                 <br />
    </div>
</asp:Content>
