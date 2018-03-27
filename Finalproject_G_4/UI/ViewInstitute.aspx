<%@ Page Title="" Language="C#" MasterPageFile="~/UI/MainMaster.Master" AutoEventWireup="true" CodeBehind="ViewInstitute.aspx.cs" Inherits="Finalproject_G_4.UI.Indexpage.ViewInstitute" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../../scripts/all.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="view" ContentPlaceHolderID="content" runat="server">
    <div class="largeindex">
        <div class="indexarea">
            <asp:GridView ID="gvemployee" runat="server" CellPadding="4" AutoGenerateColumns="False" Width="1100px" ShowHeaderWhenEmpty="True"
               DataKeyNames="InstID" OnRowEditing="gvemployee_RowEditing" OnRowUpdating="gvemployee_RowUpdating" OnRowCancelingEdit="gvemployee_RowCancelingEdit" OnRowDeleting="gvemployee_RowDeleting"
                ForeColor="#333333" GridLines="None">

                <EditRowStyle BackColor="#7C6F57" />

                <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#E3EAEB" />
                <SelectedRowStyle BackColor="#C5BBAF" ForeColor="#333333" Font-Bold="True" />
                <SortedAscendingCellStyle BackColor="#F8FAFA" />
                <SortedAscendingHeaderStyle BackColor="#246B61" />
                <SortedDescendingCellStyle BackColor="#D4DFE1" />
                <SortedDescendingHeaderStyle BackColor="#15524A" />
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:TemplateField HeaderText="Name" InsertVisible="False">
                        <ItemTemplate>
                            <asp:Label Text='<%#Eval("Name")%>' runat="server"></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtname" Text='<%#Eval("Name")%>' runat="server" />
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="txtempid" runat="server" />
                        </FooterTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Zone">
                        <ItemTemplate>
                            <asp:Label Text='<%#Eval("Zone")%>' runat="server"></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtzone" Text='<%#Eval("Zone")%>' runat="server" />
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="txtzone" runat="server" />
                        </FooterTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Town">
                        <ItemTemplate>
                            <asp:Label Text='<%#Eval("Town")%>' runat="server"></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txttown" Text='<%#Eval("Town")%>' runat="server" />
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="txttown" runat="server" />
                        </FooterTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Phone">
                        <ItemTemplate>
                            <asp:Label Text='<%#Eval("Phone")%>' runat="server"></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtphone" Text='<%#Eval("Phone")%>' runat="server" />
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="txtphone" runat="server" />
                        </FooterTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Fax">
                        <ItemTemplate>
                            <asp:Label Text='<%#Eval("Fax")%>' runat="server"></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtfax" Text='<%#Eval("Fax")%>' runat="server" />
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="txtfax" runat="server" />
                        </FooterTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="StartDate">
                        <ItemTemplate>
                            <asp:Label Text='<%#Eval("StartDate")%>' runat="server"></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtstartdate" Text='<%#Eval("StartDate")%>' runat="server" />
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="txtstartdate" runat="server" />
                        </FooterTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Owner">
                        <ItemTemplate>
                            <asp:Label Text='<%#Eval("Owner")%>' runat="server"></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtowner" Text='<%#Eval("Owner")%>' runat="server" />
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="txtowner" runat="server" />
                        </FooterTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Kebele">
                        <ItemTemplate>
                            <asp:Label Text='<%#Eval("Kebele")%>' runat="server"></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtkebele" Text='<%#Eval("Kebele")%>' runat="server" />
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="txtkebele" runat="server" />
                        </FooterTemplate>
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
    <br />
    <asp:Label ID="labelsuccessmessage" runat="server" ForeColor="Green"/>
        <br />
    <asp:Label ID="labelerrormessage" runat="server" ForeColor="red"/>
        </div>
    </div>
</asp:Content>
