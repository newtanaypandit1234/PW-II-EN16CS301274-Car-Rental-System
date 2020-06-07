<%@ Page Title="" Language="C#" MasterPageFile="~/Admin_MasterPage.master" AutoEventWireup="true" CodeFile="Vendor_Details_show.aspx.cs" Inherits="Vendor_Details_show" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        &nbsp;
    </p>
    <br />
    <table class="nav-justified">
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="Vendor Details"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>           
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSourceVanShows">
                    <Columns>
                        <asp:TemplateField HeaderText="Vendor Id" SortExpression="Vander_Id">
                            <EditItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("Vander_Id") %>'></asp:Label>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Bind("Vander_Id") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="First Name" SortExpression="First_Name">
                            <EditItemTemplate>
                                <asp:Label ID="Label2" runat="server" Text='<%# Eval("First_Name") %>'></asp:Label>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label2" runat="server" Text='<%# Bind("First_Name") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Last Name" SortExpression="Last_Name">
                            <EditItemTemplate>
                                <asp:Label ID="Label3" runat="server" Text='<%# Eval("Last_Name") %>'></asp:Label>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label3" runat="server" Text='<%# Bind("Last_Name") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Email" SortExpression="Email">
                            <EditItemTemplate>
                                <asp:Label ID="Label4" runat="server" Text='<%# Eval("Email") %>'></asp:Label>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label4" runat="server" Text='<%# Bind("Email") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Gender" SortExpression="Gender">
                            <EditItemTemplate>
                                <asp:Label ID="Label5" runat="server" Text='<%# Eval("Gender") %>'></asp:Label>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label5" runat="server" Text='<%# Bind("Gender") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="DOB" SortExpression="Dob">
                            <EditItemTemplate>
                                <asp:Label ID="Label6" runat="server" Text='<%# Eval("Dob") %>'></asp:Label>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label6" runat="server" Text='<%# Bind("Dob") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Mobile" SortExpression="Mobile">
                            <EditItemTemplate>
                                <asp:Label ID="Label7" runat="server" Text='<%# Eval("Mobile") %>'></asp:Label>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label7" runat="server" Text='<%# Bind("Mobile") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Address" SortExpression="Address">
                            <EditItemTemplate>
                                <asp:Label ID="Label8" runat="server" Text='<%# Eval("Address") %>'></asp:Label>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label8" runat="server" Text='<%# Bind("Address") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Country" SortExpression="Country_Id">
                            <EditItemTemplate>
                                <asp:Label ID="Label9" runat="server" Text='<%# Eval("Country_Id") %>'></asp:Label>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label9" runat="server" Text='<%# Bind("Country_Id") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="State" SortExpression="State_Id">
                            <EditItemTemplate>
                                <asp:Label ID="Label10" runat="server" Text='<%# Eval("State_Id") %>'></asp:Label>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label10" runat="server" Text='<%# Bind("State_Id") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="City" SortExpression="City_Id">
                            <EditItemTemplate>
                                <asp:Label ID="Label11" runat="server" Text='<%# Eval("City_Id") %>'></asp:Label>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label11" runat="server" Text='<%# Bind("City_Id") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Pin-Code" SortExpression="Pin_Code">
                            <EditItemTemplate>
                                <asp:Label ID="Label12" runat="server" Text='<%# Eval("Pin_Code") %>'></asp:Label>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label12" runat="server" Text='<%# Bind("Pin_Code") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Registration Date" SortExpression="Registration_Date">
                            <EditItemTemplate>
                                <asp:Label ID="Label13" runat="server" Text='<%# Eval("Registration_Date") %>'></asp:Label>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label13" runat="server" Text='<%# Bind("Registration_Date") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Status" SortExpression="Status">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Status") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label14" runat="server" Text='<%# Bind("Status") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Acction">
                            <EditItemTemplate>
                                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update" Text="Update"></asp:LinkButton>
                                &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel"></asp:LinkButton>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <%--<asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit"></asp:LinkButton>--%>
                                &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Select" Text="Select"></asp:LinkButton>
                                &nbsp;<asp:LinkButton ID="LinkButton3" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete"></asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                    <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                    <RowStyle BackColor="White" ForeColor="#330099" />
                    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                    <SortedAscendingCellStyle BackColor="#FEFCEB" />
                    <SortedAscendingHeaderStyle BackColor="#AF0101" />
                    <SortedDescendingCellStyle BackColor="#F6F0C0" />
                    <SortedDescendingHeaderStyle BackColor="#7E0000" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSourceVanShows" runat="server" ConnectionString="<%$ ConnectionStrings:myconstr %>" 
                    DeleteCommand="DELETE FROM [Vander_Registration] WHERE [Vander_Id] = @Vander_Id" 
                    InsertCommand="INSERT INTO [Vander_Registration] ([Vander_Id], [First_Name], [Last_Name], [Email], [Password], [Gender], [Dob], [Mobile], [Address], [Country_Id], [State_Id], [City_Id], [Pin_Code], [Registration_Date], [Status], [Image]) VALUES (@Vander_Id, @First_Name, @Last_Name, @Email, @Password, @Gender, @Dob, @Mobile, @Address, @Country_Id, @State_Id, @City_Id, @Pin_Code, @Registration_Date, @Status, @Image)" 
                    SelectCommand="SELECT * FROM [Vander_Registration]" 
                    UpdateCommand="UPDATE [Vander_Registration] SET [First_Name] = @First_Name, [Last_Name] = @Last_Name, [Email] = @Email, [Password] = @Password, [Gender] = @Gender, [Dob] = @Dob, [Mobile] = @Mobile, [Address] = @Address, [Country_Id] = @Country_Id, [State_Id] = @State_Id, [City_Id] = @City_Id, [Pin_Code] = @Pin_Code, [Registration_Date] = @Registration_Date, [Status] = @Status WHERE [Vander_Id] = @Vander_Id">
                    <DeleteParameters>
                        <asp:Parameter Name="Vander_Id" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Vander_Id" Type="String" />
                        <asp:Parameter Name="First_Name" Type="String" />
                        <asp:Parameter Name="Last_Name" Type="String" />
                        <asp:Parameter Name="Email" Type="String" />
                        <asp:Parameter Name="Password" Type="String" />
                        <asp:Parameter Name="Gender" Type="String" />
                        <asp:Parameter DbType="Date" Name="Dob" />
                        <asp:Parameter Name="Mobile" Type="String" />
                        <asp:Parameter Name="Address" Type="String" />
                        <asp:Parameter Name="Country_Id" Type="Int32" />
                        <asp:Parameter Name="State_Id" Type="Int32" />
                        <asp:Parameter Name="City_Id" Type="Int32" />
                        <asp:Parameter Name="Pin_Code" Type="Int32" />
                        <asp:Parameter DbType="Date" Name="Registration_Date" />
                        <asp:Parameter Name="Status" Type="String" />
                        <asp:Parameter Name="Image" Type="Object" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="First_Name" Type="String" />
                        <asp:Parameter Name="Last_Name" Type="String" />
                        <asp:Parameter Name="Email" Type="String" />
                        <asp:Parameter Name="Password" Type="String" />
                        <asp:Parameter Name="Gender" Type="String" />
                        <asp:Parameter DbType="Date" Name="Dob" />
                        <asp:Parameter Name="Mobile" Type="String" />
                        <asp:Parameter Name="Address" Type="String" />
                        <asp:Parameter Name="Country_Id" Type="Int32" />
                        <asp:Parameter Name="State_Id" Type="Int32" />
                        <asp:Parameter Name="City_Id" Type="Int32" />
                        <asp:Parameter Name="Pin_Code" Type="Int32" />
                        <asp:Parameter DbType="Date" Name="Registration_Date" />
                        <asp:Parameter Name="Status" Type="String" />
                        <asp:Parameter Name="Image" Type="Object" />
                        <asp:Parameter Name="Vander_Id" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>

