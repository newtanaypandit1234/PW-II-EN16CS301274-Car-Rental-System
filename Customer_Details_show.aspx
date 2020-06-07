<%@ Page Title="" Language="C#" MasterPageFile="~/Admin_MasterPage.master" AutoEventWireup="true" CodeFile="Customer_Details_show.aspx.cs" Inherits="Customer_Details_show" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <br />
    </p>
    <table class="nav-justified">
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="Customer Details"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
              <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSourceCustomerData" ForeColor="#333333" GridLines="None" 
                  >
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:TemplateField HeaderText="Customer Id" SortExpression="Customer_Id">
                            <EditItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("Customer_Id") %>'></asp:Label>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Bind("Customer_Id") %>'></asp:Label>
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
                        <asp:TemplateField HeaderText="Password" SortExpression="Password">
                            <EditItemTemplate>
                                <asp:Label ID="Label5" runat="server" Text='<%# Eval("Password") %>'></asp:Label>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label5" runat="server" Text='<%# Bind("Password") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Gender" SortExpression="Gender">
                            <EditItemTemplate>
                                <asp:Label ID="Label6" runat="server" Text='<%# Eval("Gender") %>'></asp:Label>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label6" runat="server" Text='<%# Bind("Gender") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="DOB" SortExpression="Dob">
                            <EditItemTemplate>
                                <asp:Label ID="Label7" runat="server" Text='<%# Eval("Dob") %>'></asp:Label>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label7" runat="server" Text='<%# Bind("Dob") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Mobile Number" SortExpression="Mobile">
                            <EditItemTemplate>
                                <asp:Label ID="Label8" runat="server" Text='<%# Eval("Mobile") %>'></asp:Label>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label8" runat="server" Text='<%# Bind("Mobile") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Address" SortExpression="Address">
                            <EditItemTemplate>
                                <asp:Label ID="Label9" runat="server" Text='<%# Eval("Address") %>'></asp:Label>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label9" runat="server" Text='<%# Bind("Address") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Country" SortExpression="Country_Id">
                            <EditItemTemplate>
                                <asp:Label ID="Label10" runat="server" Text='<%# Eval("Country_Id") %>'></asp:Label>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label10" runat="server" Text='<%# Bind("Country_Id") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="State" SortExpression="State_Id">
                            <EditItemTemplate>
                                <asp:Label ID="Label11" runat="server" Text='<%# Eval("State_Id") %>'></asp:Label>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label11" runat="server" Text='<%# Bind("State_Id") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText=" City" SortExpression="City_Id">
                            <EditItemTemplate>
                                <asp:Label ID="Label12" runat="server" Text='<%# Eval("City_Id") %>'></asp:Label>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label12" runat="server" Text='<%# Bind("City_Id") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Pin-Code" SortExpression="Pin_Code">
                            <EditItemTemplate>
                                <asp:Label ID="Label13" runat="server" Text='<%# Eval("Pin_Code") %>'></asp:Label>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label13" runat="server" Text='<%# Bind("Pin_Code") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Registration Date" SortExpression="Registration_Date">
                            <EditItemTemplate>
                                <asp:Label ID="Label15" runat="server" Text='<%# Eval("Registration_Date") %>'></asp:Label>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label15" runat="server" Text='<%# Bind("Registration_Date") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Status" SortExpression="Status">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Status") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label16" runat="server" Text='<%# Bind("Status") %>'></asp:Label>
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
                <asp:SqlDataSource ID="SqlDataSourceCustomerData" runat="server" 
                    ConflictDetection="CompareAllValues" 
                    ConnectionString="<%$ ConnectionStrings:myconstr %>" 
                    DeleteCommand="DELETE FROM [Customer_Registration] WHERE [Customer_Id] = @original_Customer_Id "
                    InsertCommand="INSERT INTO [Customer_Registration] ([Customer_Id], [First_Name], [Last_Name], [Email], [Password], [Gender], [Dob], [Mobile], [Address], [Country_Id], [State_Id], [City_Id], [Pin_Code], [Image], [Registration_Date], [Status]) VALUES (@Customer_Id, @First_Name, @Last_Name, @Email, @Password, @Gender, @Dob, @Mobile, @Address, @Country_Id, @State_Id, @City_Id, @Pin_Code, @Image, @Registration_Date, @Status)" 
                    OldValuesParameterFormatString="original_{0}" 
                    SelectCommand="SELECT * FROM [Customer_Registration]" 
                    UpdateCommand="UPDATE [Customer_Registration] SET [First_Name] = @First_Name, [Last_Name] = @Last_Name, [Email] = @Email, [Password] = @Password, [Gender] = @Gender, [Dob] = @Dob, [Mobile] = @Mobile, [Address] = @Address, [Country_Id] = @Country_Id, [State_Id] = @State_Id, [City_Id] = @City_Id, [Pin_Code] = @Pin_Code, [Registration_Date] = @Registration_Date, [Status] = @Status WHERE [Customer_Id] = @original_Customer_Id"
                    >
                    <%--"UPDATE [Customer_Registration] SET [First_Name] = @First_Name, [Last_Name] = @Last_Name, [Email] = @Email, [Password] = @Password, [Gender] = @Gender, [Dob] = @Dob, [Mobile] = @Mobile, [Address] = @Address, [Country_Id] = @Country_Id, [State_Id] = @State_Id, [City_Id] = @City_Id, [Pin_Code] = @Pin_Code, [Registration_Date] = @Registration_Date, [Status] = @Status WHERE [Customer_Id] = @original_Customer_Id"--%>
                <%--<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:myconstr %>" DeleteCommand="DELETE FROM [Customer_Registration] WHERE [Customer_Id] = @original_Customer_Id AND (([First_Name] = @original_First_Name) OR ([First_Name] IS NULL AND @original_First_Name IS NULL)) AND (([Last_Name] = @original_Last_Name) OR ([Last_Name] IS NULL AND @original_Last_Name IS NULL)) AND (([Email] = @original_Email) OR ([Email] IS NULL AND @original_Email IS NULL)) AND (([Password] = @original_Password) OR ([Password] IS NULL AND @original_Password IS NULL)) AND (([Gender] = @original_Gender) OR ([Gender] IS NULL AND @original_Gender IS NULL)) AND (([Dob] = @original_Dob) OR ([Dob] IS NULL AND @original_Dob IS NULL)) AND (([Mobile] = @original_Mobile) OR ([Mobile] IS NULL AND @original_Mobile IS NULL)) AND (([Address] = @original_Address) OR ([Address] IS NULL AND @original_Address IS NULL)) AND (([Country_Id] = @original_Country_Id) OR ([Country_Id] IS NULL AND @original_Country_Id IS NULL)) AND (([State_Id] = @original_State_Id) OR ([State_Id] IS NULL AND @original_State_Id IS NULL)) AND (([City_Id] = @original_City_Id) OR ([City_Id] IS NULL AND @original_City_Id IS NULL)) AND (([Pin_Code] = @original_Pin_Code) OR ([Pin_Code] IS NULL AND @original_Pin_Code IS NULL)) AND (([Image] = @original_Image) OR ([Image] IS NULL AND @original_Image IS NULL)) AND (([Registration_Date] = @original_Registration_Date) OR ([Registration_Date] IS NULL AND @original_Registration_Date IS NULL)) AND (([Status] = @original_Status) OR ([Status] IS NULL AND @original_Status IS NULL))" InsertCommand="INSERT INTO [Customer_Registration] ([Customer_Id], [First_Name], [Last_Name], [Email], [Password], [Gender], [Dob], [Mobile], [Address], [Country_Id], [State_Id], [City_Id], [Pin_Code], [Image], [Registration_Date], [Status]) VALUES (@Customer_Id, @First_Name, @Last_Name, @Email, @Password, @Gender, @Dob, @Mobile, @Address, @Country_Id, @State_Id, @City_Id, @Pin_Code, @Image, @Registration_Date, @Status)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Customer_Registration]" UpdateCommand="UPDATE [Customer_Registration] SET [First_Name] = @First_Name, [Last_Name] = @Last_Name, [Email] = @Email, [Password] = @Password, [Gender] = @Gender, [Dob] = @Dob, [Mobile] = @Mobile, [Address] = @Address, [Country_Id] = @Country_Id, [State_Id] = @State_Id, [City_Id] = @City_Id, [Pin_Code] = @Pin_Code, [Image] = @Image, [Registration_Date] = @Registration_Date, [Status] = @Status WHERE [Customer_Id] = @original_Customer_Id AND (([First_Name] = @original_First_Name) OR ([First_Name] IS NULL AND @original_First_Name IS NULL)) AND (([Last_Name] = @original_Last_Name) OR ([Last_Name] IS NULL AND @original_Last_Name IS NULL)) AND (([Email] = @original_Email) OR ([Email] IS NULL AND @original_Email IS NULL)) AND (([Password] = @original_Password) OR ([Password] IS NULL AND @original_Password IS NULL)) AND (([Gender] = @original_Gender) OR ([Gender] IS NULL AND @original_Gender IS NULL)) AND (([Dob] = @original_Dob) OR ([Dob] IS NULL AND @original_Dob IS NULL)) AND (([Mobile] = @original_Mobile) OR ([Mobile] IS NULL AND @original_Mobile IS NULL)) AND (([Address] = @original_Address) OR ([Address] IS NULL AND @original_Address IS NULL)) AND (([Country_Id] = @original_Country_Id) OR ([Country_Id] IS NULL AND @original_Country_Id IS NULL)) AND (([State_Id] = @original_State_Id) OR ([State_Id] IS NULL AND @original_State_Id IS NULL)) AND (([City_Id] = @original_City_Id) OR ([City_Id] IS NULL AND @original_City_Id IS NULL)) AND (([Pin_Code] = @original_Pin_Code) OR ([Pin_Code] IS NULL AND @original_Pin_Code IS NULL)) AND (([Image] = @original_Image) OR ([Image] IS NULL AND @original_Image IS NULL)) AND (([Registration_Date] = @original_Registration_Date) OR ([Registration_Date] IS NULL AND @original_Registration_Date IS NULL)) AND (([Status] = @original_Status) OR ([Status] IS NULL AND @original_Status IS NULL))">--%>
                    <DeleteParameters>
                        <asp:Parameter Name="original_Customer_Id" Type="String" />
                        <asp:Parameter Name="original_First_Name" Type="String" />
                        <asp:Parameter Name="original_Last_Name" Type="String" />
                        <asp:Parameter Name="original_Email" Type="String" />
                        <asp:Parameter Name="original_Password" Type="String" />
                        <asp:Parameter Name="original_Gender" Type="String" />
                        <asp:Parameter DbType="Date" Name="original_Dob" />
                        <asp:Parameter Name="original_Mobile" Type="String" />
                        <asp:Parameter Name="original_Address" Type="String" />
                        <asp:Parameter Name="original_Country_Id" Type="String" />
                        <asp:Parameter Name="original_State_Id" Type="String" />
                        <asp:Parameter Name="original_City_Id" Type="String" />
                        <asp:Parameter Name="original_Pin_Code" Type="String" />
                        <asp:Parameter Name="original_Image" Type="Object" />
                        <asp:Parameter Name="original_Registration_Date" Type="DateTime" />
                        <asp:Parameter Name="original_Status" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Customer_Id" Type="String" />
                        <asp:Parameter Name="First_Name" Type="String" />
                        <asp:Parameter Name="Last_Name" Type="String" />
                        <asp:Parameter Name="Email" Type="String" />
                        <asp:Parameter Name="Password" Type="String" />
                        <asp:Parameter Name="Gender" Type="String" />
                        <asp:Parameter DbType="Date" Name="Dob" />
                        <asp:Parameter Name="Mobile" Type="String" />
                        <asp:Parameter Name="Address" Type="String" />
                        <asp:Parameter Name="Country_Id" Type="String" />
                        <asp:Parameter Name="State_Id" Type="String" />
                        <asp:Parameter Name="City_Id" Type="String" />
                        <asp:Parameter Name="Pin_Code" Type="String" />
                        <asp:Parameter Name="Image" Type="Object" />
                        <asp:Parameter Name="Registration_Date" Type="DateTime" />
                        <asp:Parameter Name="Status" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="original_Customer_Id" Type="String" />
                        <asp:Parameter Name="Last_Name" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>

