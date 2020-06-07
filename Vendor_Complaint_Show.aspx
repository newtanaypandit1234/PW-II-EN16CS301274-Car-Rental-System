<%@ Page Title="" Language="C#" MasterPageFile="~/Admin_MasterPage.master" AutoEventWireup="true" CodeFile="Vendor_Complaint_Show.aspx.cs" Inherits="Vendor_Complaint_Show" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <br />
        <table class="nav-justified">
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSourceVenComplaint">
                        <Columns>
                            <asp:TemplateField HeaderText="Complaint Id" SortExpression="Complaint_Id">
                                <EditItemTemplate>
                                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("Complaint_Id") %>'></asp:Label>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("Complaint_Id") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Vendor Id" SortExpression="Vander_Id">
                                <EditItemTemplate>
                                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("Vander_Id") %>'></asp:Label>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("Vander_Id") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Booking Id" SortExpression="Booking_Id">
                                <EditItemTemplate>
                                    <asp:Label ID="Label3" runat="server" Text='<%# Eval("Booking_Id") %>'></asp:Label>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("Booking_Id") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Car Id" SortExpression="Car_Id">
                                <EditItemTemplate>
                                    <asp:Label ID="Label4" runat="server" Text='<%# Eval("Car_Id") %>'></asp:Label>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("Car_Id") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Date" SortExpression="Date">
                                <EditItemTemplate>
                                    <asp:Label ID="Label5" runat="server" Text='<%# Eval("Date") %>'></asp:Label>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label5" runat="server" Text='<%# Bind("Date") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Driver Id" SortExpression="Driver_Id">
                                <EditItemTemplate>
                                    <asp:Label ID="Label6" runat="server" Text='<%# Eval("Driver_Id") %>'></asp:Label>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label6" runat="server" Text='<%# Bind("Driver_Id") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Complaint" SortExpression="Complaint">
                                <EditItemTemplate>
                                    <asp:Label ID="Label7" runat="server" Text='<%# Eval("Complaint") %>'></asp:Label>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label7" runat="server" Text='<%# Bind("Complaint") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Status" SortExpression="Status">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Status") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label8" runat="server" Text='<%# Bind("Status") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Acction">
                                <EditItemTemplate>
                                    <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update" Text="Update"></asp:LinkButton>
                                    &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel"></asp:LinkButton>
                                </EditItemTemplate>
                                <ItemTemplate>
                                   <%-- <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit"></asp:LinkButton>--%>
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
                    <asp:SqlDataSource ID="SqlDataSourceVenComplaint" runat="server" ConnectionString="<%$ ConnectionStrings:myconstr %>" DeleteCommand="DELETE FROM [Complaint] WHERE [Complaint_Id] = @original_Complaint_Id AND (([Vander_Id] = @original_Vander_Id) OR ([Vander_Id] IS NULL AND @original_Vander_Id IS NULL)) AND (([Booking_Id] = @original_Booking_Id) OR ([Booking_Id] IS NULL AND @original_Booking_Id IS NULL)) AND (([Car_Id] = @original_Car_Id) OR ([Car_Id] IS NULL AND @original_Car_Id IS NULL)) AND (([Date] = @original_Date) OR ([Date] IS NULL AND @original_Date IS NULL)) AND (([Driver_Id] = @original_Driver_Id) OR ([Driver_Id] IS NULL AND @original_Driver_Id IS NULL)) AND (([Complaint] = @original_Complaint) OR ([Complaint] IS NULL AND @original_Complaint IS NULL)) AND (([Status] = @original_Status) OR ([Status] IS NULL AND @original_Status IS NULL))" InsertCommand="INSERT INTO [Complaint] ([Complaint_Id], [Vander_Id], [Booking_Id], [Car_Id], [Date], [Driver_Id], [Complaint], [Status]) VALUES (@Complaint_Id, @Vander_Id, @Booking_Id, @Car_Id, @Date, @Driver_Id, @Complaint, @Status)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [Complaint_Id], [Vander_Id], [Booking_Id], [Car_Id], [Date], [Driver_Id], [Complaint], [Status] FROM [Complaint]" UpdateCommand="UPDATE [Complaint] SET [Vander_Id] = @Vander_Id, [Booking_Id] = @Booking_Id, [Car_Id] = @Car_Id, [Date] = @Date, [Driver_Id] = @Driver_Id, [Complaint] = @Complaint, [Status] = @Status WHERE [Complaint_Id] = @original_Complaint_Id AND (([Vander_Id] = @original_Vander_Id) OR ([Vander_Id] IS NULL AND @original_Vander_Id IS NULL)) AND (([Booking_Id] = @original_Booking_Id) OR ([Booking_Id] IS NULL AND @original_Booking_Id IS NULL)) AND (([Car_Id] = @original_Car_Id) OR ([Car_Id] IS NULL AND @original_Car_Id IS NULL)) AND (([Date] = @original_Date) OR ([Date] IS NULL AND @original_Date IS NULL)) AND (([Driver_Id] = @original_Driver_Id) OR ([Driver_Id] IS NULL AND @original_Driver_Id IS NULL)) AND (([Complaint] = @original_Complaint) OR ([Complaint] IS NULL AND @original_Complaint IS NULL)) AND (([Status] = @original_Status) OR ([Status] IS NULL AND @original_Status IS NULL))" ConflictDetection="CompareAllValues">
                        <DeleteParameters>
                            <asp:Parameter Name="original_Complaint_Id" Type="String" />
                            <asp:Parameter Name="original_Vander_Id" Type="String" />
                            <asp:Parameter Name="original_Booking_Id" Type="String" />
                            <asp:Parameter Name="original_Car_Id" Type="String" />
                            <asp:Parameter Name="original_Date" Type="DateTime" />
                            <asp:Parameter Name="original_Driver_Id" Type="String" />
                            <asp:Parameter Name="original_Complaint" Type="String" />
                            <asp:Parameter Name="original_Status" Type="String" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="Complaint_Id" Type="String" />
                            <asp:Parameter Name="Vander_Id" Type="String" />
                            <asp:Parameter Name="Booking_Id" Type="String" />
                            <asp:Parameter Name="Car_Id" Type="String" />
                            <asp:Parameter Name="Date" Type="DateTime" />
                            <asp:Parameter Name="Driver_Id" Type="String" />
                            <asp:Parameter Name="Complaint" Type="String" />
                            <asp:Parameter Name="Status" Type="String" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="Vander_Id" Type="String" />
                            <asp:Parameter Name="Booking_Id" Type="String" />
                            <asp:Parameter Name="Car_Id" Type="String" />
                            <asp:Parameter Name="Date" Type="DateTime" />
                            <asp:Parameter Name="Driver_Id" Type="String" />
                            <asp:Parameter Name="Complaint" Type="String" />
                            <asp:Parameter Name="Status" Type="String" />
                            <asp:Parameter Name="original_Complaint_Id" Type="String" />
                            <asp:Parameter Name="original_Vander_Id" Type="String" />
                            <asp:Parameter Name="original_Booking_Id" Type="String" />
                            <asp:Parameter Name="original_Car_Id" Type="String" />
                            <asp:Parameter Name="original_Date" Type="DateTime" />
                            <asp:Parameter Name="original_Driver_Id" Type="String" />
                            <asp:Parameter Name="original_Complaint" Type="String" />
                            <asp:Parameter Name="original_Status" Type="String" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
        </table>
    </p>
</asp:Content>

