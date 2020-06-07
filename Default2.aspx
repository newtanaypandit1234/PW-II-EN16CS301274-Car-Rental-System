<%@ Page Title="" Language="C#" MasterPageFile="~/Admin_MasterPage.master" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSourceTestData">
        <Columns>
            <asp:TemplateField HeaderText="Vander" SortExpression="Vander_Id">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Vander_Id") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("Vander_Id") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Name1" SortExpression="First_Name">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("First_Name") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("First_Name") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Last name" SortExpression="Last_Name">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Last_Name") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("Last_Name") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Email" SortExpression="Email">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("Email") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("Email") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Password" SortExpression="Password">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("Password") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label5" runat="server" Text='<%# Bind("Password") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="GEnder" SortExpression="Gender">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("Gender") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label6" runat="server" Text='<%# Bind("Gender") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Dob" SortExpression="Dob">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("Dob") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label7" runat="server" Text='<%# Bind("Dob") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Mobile" SortExpression="Mobile">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox8" runat="server" Text='<%# Bind("Mobile") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label8" runat="server" Text='<%# Bind("Mobile") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Address" SortExpression="Address">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox9" runat="server" Text='<%# Bind("Address") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label9" runat="server" Text='<%# Bind("Address") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Country" SortExpression="Country_Id">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox10" runat="server" Text='<%# Bind("Country_Id") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label10" runat="server" Text='<%# Bind("Country_Id") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="State" SortExpression="State_Id">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox11" runat="server" Text='<%# Bind("State_Id") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label11" runat="server" Text='<%# Bind("State_Id") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="City" SortExpression="City_Id">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox12" runat="server" Text='<%# Bind("City_Id") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label12" runat="server" Text='<%# Bind("City_Id") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Pin code" SortExpression="Pin_Code">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox13" runat="server" Text='<%# Bind("Pin_Code") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label13" runat="server" Text='<%# Bind("Pin_Code") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Registration" SortExpression="Registration_Date">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox14" runat="server" Text='<%# Bind("Registration_Date") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label14" runat="server" Text='<%# Bind("Registration_Date") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Status" SortExpression="Status">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox15" runat="server" Text='<%# Bind("Status") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label15" runat="server" Text='<%# Bind("Status") %>'></asp:Label>
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
        <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
        <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
        <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
        <RowStyle BackColor="White" ForeColor="#003399" />
        <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
        <SortedAscendingCellStyle BackColor="#EDF6F6" />
        <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
        <SortedDescendingCellStyle BackColor="#D6DFDF" />
        <SortedDescendingHeaderStyle BackColor="#002876" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSourceTestData" runat="server" ConnectionString="<%$ ConnectionStrings:myconstr %>" DeleteCommand="DELETE FROM [Vander_Registration] WHERE [Vander_Id] = @Vander_Id" InsertCommand="INSERT INTO [Vander_Registration] ([Vander_Id], [First_Name], [Last_Name], [Email], [Password], [Gender], [Dob], [Mobile], [Address], [Country_Id], [State_Id], [City_Id], [Pin_Code], [Registration_Date], [Status], [Image]) VALUES (@Vander_Id, @First_Name, @Last_Name, @Email, @Password, @Gender, @Dob, @Mobile, @Address, @Country_Id, @State_Id, @City_Id, @Pin_Code, @Registration_Date, @Status, @Image)" SelectCommand="SELECT * FROM [Vander_Registration]" UpdateCommand="UPDATE [Vander_Registration] SET [First_Name] = @First_Name, [Last_Name] = @Last_Name, [Email] = @Email, [Password] = @Password, [Gender] = @Gender, [Dob] = @Dob, [Mobile] = @Mobile, [Address] = @Address, [Country_Id] = @Country_Id, [State_Id] = @State_Id, [City_Id] = @City_Id, [Pin_Code] = @Pin_Code, [Registration_Date] = @Registration_Date, [Status] = @Status, [Image] = @Image WHERE [Vander_Id] = @Vander_Id">
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
</asp:Content>

