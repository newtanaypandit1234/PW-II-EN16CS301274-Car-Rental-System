<%@ Page Title="" Language="C#" MasterPageFile="~/Customer_Dashboard.master" AutoEventWireup="true" CodeFile="Cus_After_Search.aspx.cs" Inherits="Cus_After_Search" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style2 {
            margin-left: 40px;
        }
        .auto-style3 {
            height: 24px;
        }
        .auto-style4 {
            margin-left: 40px;
            height: 24px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        &nbsp;</p>
    <p class="text-center">
        <table class="nav-justified">
            <tr>
                <td colspan="4">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="text-center" colspan="4">
                    <asp:Label ID="Label19" runat="server" Text="Searching History"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td class="auto-style2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label6" runat="server" Text="Customer Id"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:Label ID="Label7" runat="server" Text="Booking Id"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label8" runat="server" Text="Car Id"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:Label ID="Label9" runat="server" Text="Pick Date&amp;Time"></asp:Label>
                </td>
                <td>
                    
                    <asp:TextBox ID="TextBox12" runat="server"></asp:TextBox>
                    
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label10" runat="server" Text="Pick Country"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:Label ID="Label11" runat="server" Text="Drop Country"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label12" runat="server" Text="Pick State"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style2">
                    <asp:Label ID="Label13" runat="server" Text="Drop State"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label14" runat="server" Text="Pick City"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style2">
                    <asp:Label ID="Label15" runat="server" Text="Drop City"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label16" runat="server" Text="Pick Address"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style2">
                    <asp:Label ID="Label17" runat="server" Text="Drop Address"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3"></td>
                <td class="auto-style3"></td>
                <td class="auto-style4"></td>
                <td class="auto-style3"></td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label18" runat="server" Text="Amount"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox13" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style2">&nbsp;</td>
                <td>
                    <asp:Button ID="Button2" runat="server" Text="Book" OnClick="Button2_Click" />
&nbsp;
                    <asp:Button ID="Button3" runat="server" Text="Cancel" />
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    &nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    &nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
        <asp:Label ID="Label20" runat="server" Text="Available Cars"></asp:Label>
        <br />
    </p>
    <table class="nav-justified">
        <tr>
            <td>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSourceSearchCar" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" />
                        <asp:TemplateField HeaderText="Car ID" SortExpression="Car_Id">
                            <EditItemTemplate>
                                <asp:Label ID="Label6" runat="server" Text='<%# Eval("Car_Id") %>'></asp:Label>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label6" runat="server" Text='<%# Bind("Car_Id") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Car  Name" SortExpression="Car_Name">
                            <EditItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("Car_Name") %>'></asp:Label>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Bind("Car_Name") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Company" SortExpression="Car_Company_Name">
                            <EditItemTemplate>
                                <asp:Label ID="Label2" runat="server" Text='<%# Eval("Car_Company_Name") %>'></asp:Label>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label2" runat="server" Text='<%# Bind("Car_Company_Name") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Car Type" SortExpression="Car_Type_Id">
                            <EditItemTemplate>
                                <asp:Label ID="Label3" runat="server" Text='<%# Eval("Car_Type_Id") %>'></asp:Label>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label3" runat="server" Text='<%# Bind("Car_Type_Id") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="AC " SortExpression="AC_Type">
                            <EditItemTemplate>
                                <asp:Label ID="Label4" runat="server" Text='<%# Eval("AC_Type") %>'></asp:Label>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label4" runat="server" Text='<%# Bind("AC_Type") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Sheet" SortExpression="Car_Sheet">
                            <EditItemTemplate>
                                <asp:Label ID="Label5" runat="server" Text='<%# Eval("Car_Sheet") %>'></asp:Label>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label5" runat="server" Text='<%# Bind("Car_Sheet") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Image">
                            <ItemTemplate>
                                <asp:Image ID="Image1" runat="server" Height="54px" ImageUrl='<%# "Search.ashx?Car_Id="+Eval("Car_Id") %>' Width="82px" />
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
                <asp:SqlDataSource ID="SqlDataSourceSearchCar" runat="server" ConnectionString="<%$ ConnectionStrings:myconstr %>" DeleteCommand="DELETE FROM [Car_Registration] WHERE [Car_Id] = @Car_Id" InsertCommand="INSERT INTO [Car_Registration] ([Car_Id], [Car_Name], [Car_Company_Name], [Car_Type_Id], [Car_Sheet], [AC_Type], [Status_Id], [Book_Status], [Car_Image]) VALUES (@Car_Id, @Car_Name, @Car_Company_Name, @Car_Type_Id, @Car_Sheet, @AC_Type, @Status_Id, @Book_Status, @Car_Image)" SelectCommand="SELECT [Car_Id], [Car_Name], [Car_Company_Name], [Car_Type_Id], [Car_Sheet], [AC_Type], [Status_Id], [Book_Status], [Car_Image] FROM [Car_Registration]" UpdateCommand="UPDATE [Car_Registration] SET [Car_Name] = @Car_Name, [Car_Company_Name] = @Car_Company_Name, [Car_Type_Id] = @Car_Type_Id, [Car_Sheet] = @Car_Sheet, [AC_Type] = @AC_Type, [Status_Id] = @Status_Id, [Book_Status] = @Book_Status, [Car_Image] = @Car_Image WHERE [Car_Id] = @Car_Id">
                    <DeleteParameters>
                        <asp:Parameter Name="Car_Id" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Car_Id" Type="String" />
                        <asp:Parameter Name="Car_Name" Type="String" />
                        <asp:Parameter Name="Car_Company_Name" Type="String" />
                        <asp:Parameter Name="Car_Type_Id" Type="String" />
                        <asp:Parameter Name="Car_Sheet" Type="String" />
                        <asp:Parameter Name="AC_Type" Type="String" />
                        <asp:Parameter Name="Status_Id" Type="String" />
                        <asp:Parameter Name="Book_Status" Type="String" />
                        <asp:Parameter Name="Car_Image" Type="Object" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Car_Name" Type="String" />
                        <asp:Parameter Name="Car_Company_Name" Type="String" />
                        <asp:Parameter Name="Car_Type_Id" Type="String" />
                        <asp:Parameter Name="Car_Sheet" Type="String" />
                        <asp:Parameter Name="AC_Type" Type="String" />
                        <asp:Parameter Name="Status_Id" Type="String" />
                        <asp:Parameter Name="Book_Status" Type="String" />
                        <asp:Parameter Name="Car_Image" Type="Object" />
                        <asp:Parameter Name="Car_Id" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>

