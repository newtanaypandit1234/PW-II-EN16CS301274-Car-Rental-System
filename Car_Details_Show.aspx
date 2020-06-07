<%@ Page Title="" Language="C#" MasterPageFile="~/Admin_MasterPage.master" AutoEventWireup="true" CodeFile="Car_Details_Show.aspx.cs" Inherits="Car_Details_Show" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
    <br />
&nbsp;</p>
<table class="nav-justified">
    <tr>
        <td>&nbsp;<asp:Label ID="Label1" runat="server" Text="Car Details"></asp:Label>
            <br />
&nbsp;
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSourceCarShow" ForeColor="#333333" GridLines="None" OnRowUpdating="GridView1_RowUpdating">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:TemplateField HeaderText="Car ID" SortExpression="Car_Id">
                        <EditItemTemplate>
                            <asp:Label ID="Label7" runat="server" Text='<%# Eval("Car_Id") %>'></asp:Label>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label8" runat="server" Text='<%# Bind("Car_Id") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Name" SortExpression="Car_Name">
                        <EditItemTemplate>
                            <asp:Label ID="Label8" runat="server" Text='<%# Eval("Car_Name") %>'></asp:Label>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label9" runat="server" Text='<%# Bind("Car_Name") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Vendor Id" SortExpression="Vander_Id">
                        <EditItemTemplate>
                            <asp:Label ID="Label9" runat="server" Text='<%# Eval("Vander_Id") %>'></asp:Label>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label10" runat="server" Text='<%# Bind("Vander_Id") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Comapany" SortExpression="Car_Company_Name">
                        <EditItemTemplate>
                            <asp:Label ID="Label10" runat="server" Text='<%# Eval("Car_Company_Name") %>'></asp:Label>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label11" runat="server" Text='<%# Bind("Car_Company_Name") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Registration No." SortExpression="Car_registration_Number">
                        <EditItemTemplate>
                            <asp:Label ID="Label11" runat="server" Text='<%# Eval("Car_registration_Number") %>'></asp:Label>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label12" runat="server" Text='<%# Bind("Car_registration_Number") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Car No." SortExpression="Car_Number">
                        <EditItemTemplate>
                            <asp:Label ID="Label12" runat="server" Text='<%# Eval("Car_Number") %>'></asp:Label>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label13" runat="server" Text='<%# Bind("Car_Number") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Modal" SortExpression="Car_Model_Year">
                        <EditItemTemplate>
                            <asp:Label ID="Label13" runat="server" Text='<%# Eval("Car_Model_Year") %>'></asp:Label>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label14" runat="server" Text='<%# Bind("Car_Model_Year") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Type ID" SortExpression="Car_Type_Id">
                        <EditItemTemplate>
                            <asp:Label ID="Label6" runat="server" Text='<%# Eval("Car_Type_Id") %>'></asp:Label>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label7" runat="server" Text='<%# Bind("Car_Type_Id") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Sheet" SortExpression="Car_Sheet">
                        <EditItemTemplate>
                            <asp:Label ID="Label5" runat="server" Text='<%# Eval("Car_Sheet") %>'></asp:Label>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label6" runat="server" Text='<%# Bind("Car_Sheet") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="AC" SortExpression="AC_Type">
                        <EditItemTemplate>
                            <asp:Label ID="Label4" runat="server" Text='<%# Eval("AC_Type") %>'></asp:Label>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label5" runat="server" Text='<%# Bind("AC_Type") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Fuel" SortExpression="Fuel_Type">
                        <EditItemTemplate>
                            <asp:Label ID="Label3" runat="server" Text='<%# Eval("Fuel_Type") %>'></asp:Label>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label4" runat="server" Text='<%# Bind("Fuel_Type") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Insurance No." SortExpression="Insurance_Number">
                        <EditItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("Insurance_Number") %>'></asp:Label>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label3" runat="server" Text='<%# Bind("Insurance_Number") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Image">
                        <ItemTemplate>
                            <asp:Image ID="Image1" runat="server" Height="55px" ImageUrl='<%# "Car_Image_handler.ashx?Car_Id="+Eval("Car_Id") %>' Width="83px" />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Regitration Date" SortExpression="Registration_Date">
                        <EditItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("Registration_Date") %>'></asp:Label>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# Bind("Registration_Date") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Status" SortExpression="Status">
                        <EditItemTemplate>
                            <asp:DropDownList ID="DropDownList1" runat="server" SelectedValue='<%# Bind("Status") %>'>
                                <asp:ListItem>Active</asp:ListItem>
                                <asp:ListItem>De-Active</asp:ListItem>
                            </asp:DropDownList>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("Status_Id") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Acction">
                        <EditItemTemplate>
                            <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update" Text="Update"></asp:LinkButton>
                            &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel"></asp:LinkButton>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit"></asp:LinkButton>
                            &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Select" Text="Select"></asp:LinkButton>
                            &nbsp;<asp:LinkButton ID="LinkButton3" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete"></asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                <SortedAscendingCellStyle BackColor="#FDF5AC" />
                <SortedAscendingHeaderStyle BackColor="#4D0000" />
                <SortedDescendingCellStyle BackColor="#FCF6C0" />
                <SortedDescendingHeaderStyle BackColor="#820000" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSourceCarShow" runat="server" ConnectionString="<%$ ConnectionStrings:myconstr %>" DeleteCommand="DELETE FROM [Car_Registration] WHERE [Car_Id] = @original_Car_Id" InsertCommand="INSERT INTO [Car_Registration] ([Car_Id], [Car_Name], [Vander_Id], [Car_Company_Name], [Car_Registration_Number], [Car_Number], [Car_Model_Year], [Car_Type_Id], [Car_Sheet], [AC_Type], [Fuel_Type], [Insurance_Number], [Car_Image], [Registration_Date], [Status]) VALUES (@Car_Id, @Car_Name, @Vander_Id, @Car_Company_Name, @Car_Registration_Number, @Car_Number, @Car_Model_Year, @Car_Type_Id, @Car_Sheet, @AC_Type, @Fuel_Type, @Insurance_Number, @Car_Image, @Registration_Date, @Status)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Car_Registration]" UpdateCommand="UPDATE [Car_Registration] SET [Car_Name] = @Car_Name, [Vander_Id] = @Vander_Id, [Car_Company_Name] = @Car_Company_Name, [Car_Registration_Number] = @Car_Registration_Number, [Car_Number] = @Car_Number, [Car_Model_Year] = @Car_Model_Year, [Car_Type_Id] = @Car_Type_Id, [Car_Sheet] = @Car_Sheet, [AC_Type] = @AC_Type, [Fuel_Type] = @Fuel_Type, [Insurance_Number] = @Insurance_Number,[Registration_Date] = @Registration_Date, [Status] = @Status WHERE [Car_Id] = @original_Car_Id">
                <DeleteParameters>
                    <asp:Parameter Name="original_Car_Id" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Car_Id" Type="String" />
                    <asp:Parameter Name="Car_Name" Type="String" />
                    <asp:Parameter Name="Vander_Id" Type="String" />
                    <asp:Parameter Name="Car_Company_Name" Type="String" />
                    <asp:Parameter Name="Car_Registration_Number" Type="String" />
                    <asp:Parameter Name="Car_Number" Type="String" />
                    <asp:Parameter Name="Car_Model_Year" Type="String" />
                    <asp:Parameter Name="Car_Type_Id" Type="String" />
                    <asp:Parameter Name="Car_Sheet" Type="String" />
                    <asp:Parameter Name="AC_Type" Type="String" />
                    <asp:Parameter Name="Fuel_Type" Type="String" />
                    <asp:Parameter Name="Insurance_Number" Type="String" />
                    <asp:Parameter Name="Car_Image" Type="Object" />
                    <asp:Parameter Name="Registration_Date" Type="DateTime" />
                    <asp:Parameter Name="Status" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Car_Name" Type="String" />
                    <asp:Parameter Name="Vander_Id" Type="String" />
                    <asp:Parameter Name="Car_Company_Name" Type="String" />
                    <asp:Parameter Name="Car_Registration_Number" Type="String" />
                    <asp:Parameter Name="Car_Number" Type="String" />
                    <asp:Parameter Name="Car_Model_Year" Type="String" />
                    <asp:Parameter Name="Car_Type_Id" Type="String" />
                    <asp:Parameter Name="Car_Sheet" Type="String" />
                    <asp:Parameter Name="AC_Type" Type="String" />
                    <asp:Parameter Name="Fuel_Type" Type="String" />
                    <asp:Parameter Name="Insurance_Number" Type="String" />
                    <asp:Parameter Name="Car_Image" Type="Object" />
                    <asp:Parameter Name="Registration_Date" Type="DateTime" />
                    <asp:Parameter Name="Status" Type="String" />
                    <asp:Parameter Name="original_Car_Id" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </td>
    </tr>
</table>
</asp:Content>

