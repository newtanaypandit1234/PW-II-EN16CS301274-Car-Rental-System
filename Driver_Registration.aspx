<%@ Page Title="" Language="C#" MasterPageFile="~/Admin_MasterPage.master" AutoEventWireup="true" CodeFile="Driver_Registration.aspx.cs" Inherits="Driver_Registration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style2 {
            margin-left: 40px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <br />
&nbsp;</p>
    <table align="center" class="nav-justified">
        
        <tr>
            <td class="text-center" colspan="2">&nbsp;&nbsp;
                <asp:Label ID="Label1" runat="server" Text="Driver Registration" Font-Bold="True" Font-Italic="False" Font-Size="Large" Font-Underline="True" ForeColor="Red"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">
                
                <asp:Label ID="Label2" runat="server" Text="First Name"></asp:Label>
                
            </td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">
                
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">
                
                <asp:Label ID="Label7" runat="server" Text="Last Name"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">
                
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">
                
                <asp:Label ID="Label3" runat="server" Text="Gender"></asp:Label>
&nbsp;</td>
            <td>
                <asp:RadioButton ID="RadioButton1" runat="server" Text="Male" />
&nbsp;
                <asp:RadioButton ID="RadioButton2" runat="server" Text="Female" />
            </td>
        </tr>
        <tr>
            <td class="auto-style2">
                
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">
                
                <asp:Label ID="Label11" runat="server" Text="DOB"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" TextMode="Date"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">
                
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">
                
                <asp:Label ID="Label12" runat="server" Text="Mobile"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server" TextMode="Number"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">
                
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">
                
                <asp:Label ID="Label4" runat="server" Text="Address"></asp:Label>
                
            </td>
            <td>
                <asp:TextBox ID="TextBox5" runat="server" TextMode="MultiLine"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">
                
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">
                
                <asp:Label ID="Label8" runat="server" Text="Country"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSourceDriverCountry" DataTextField="Country_Name" DataValueField="Country_Id" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSourceDriverCountry" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:myconstr %>" DeleteCommand="DELETE FROM [Country] WHERE [Country_Id] = @original_Country_Id AND (([Country_Name] = @original_column1) OR ([Country_Name] IS NULL AND @original_column1 IS NULL))" InsertCommand="INSERT INTO [Country] ([Country_Name]) VALUES (@column1)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Country]" UpdateCommand="UPDATE [Country] SET [Country_Name] = @column1 WHERE [Country_Id] = @original_Country_Id AND (([Country_Name] = @original_column1) OR ([Country_Name] IS NULL AND @original_column1 IS NULL))">
                    <DeleteParameters>
                        <asp:Parameter Name="original_Country_Id" Type="Int32" />
                        <asp:Parameter Name="original_column1" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="column1" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="column1" Type="String" />
                        <asp:Parameter Name="original_Country_Id" Type="Int32" />
                        <asp:Parameter Name="original_column1" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">
                
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">
                
                <asp:Label ID="Label9" runat="server" Text="State"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" DataSourceID="SqlDataSourceDriverState" DataTextField="State_Name" DataValueField="State_Id">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSourceDriverState" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:myconstr %>" DeleteCommand="DELETE FROM [State] WHERE [State_Id] = @original_State_Id AND (([State_Name] = @original_State_Name) OR ([State_Name] IS NULL AND @original_State_Name IS NULL)) AND (([Country_Id] = @original_Country_Id) OR ([Country_Id] IS NULL AND @original_Country_Id IS NULL))" InsertCommand="INSERT INTO [State] ([State_Name], [Country_Id]) VALUES (@State_Name, @Country_Id)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [State] WHERE ([Country_Id] = @Country_Id)" UpdateCommand="UPDATE [State] SET [State_Name] = @State_Name, [Country_Id] = @Country_Id WHERE [State_Id] = @original_State_Id AND (([State_Name] = @original_State_Name) OR ([State_Name] IS NULL AND @original_State_Name IS NULL)) AND (([Country_Id] = @original_Country_Id) OR ([Country_Id] IS NULL AND @original_Country_Id IS NULL))">
                    <DeleteParameters>
                        <asp:Parameter Name="original_State_Id" Type="Int32" />
                        <asp:Parameter Name="original_State_Name" Type="String" />
                        <asp:Parameter Name="original_Country_Id" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="State_Name" Type="String" />
                        <asp:Parameter Name="Country_Id" Type="Int32" />
                    </InsertParameters>
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList1" Name="Country_Id" PropertyName="SelectedValue" Type="Int32" />
                    </SelectParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="State_Name" Type="String" />
                        <asp:Parameter Name="Country_Id" Type="Int32" />
                        <asp:Parameter Name="original_State_Id" Type="Int32" />
                        <asp:Parameter Name="original_State_Name" Type="String" />
                        <asp:Parameter Name="original_Country_Id" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">
                
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">
                
                <asp:Label ID="Label10" runat="server" Text="City"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="SqlDataSourceDriverCity" DataTextField="City_Name" DataValueField="City_Id">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSourceDriverCity" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:myconstr %>" DeleteCommand="DELETE FROM [City] WHERE [City_Id] = @original_City_Id AND (([City_Name] = @original_City_Name) OR ([City_Name] IS NULL AND @original_City_Name IS NULL)) AND (([State_Id] = @original_State_Id) OR ([State_Id] IS NULL AND @original_State_Id IS NULL))" InsertCommand="INSERT INTO [City] ([City_Name], [State_Id]) VALUES (@City_Name, @State_Id)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [City] WHERE ([State_Id] = @State_Id)" UpdateCommand="UPDATE [City] SET [City_Name] = @City_Name, [State_Id] = @State_Id WHERE [City_Id] = @original_City_Id AND (([City_Name] = @original_City_Name) OR ([City_Name] IS NULL AND @original_City_Name IS NULL)) AND (([State_Id] = @original_State_Id) OR ([State_Id] IS NULL AND @original_State_Id IS NULL))">
                    <DeleteParameters>
                        <asp:Parameter Name="original_City_Id" Type="Int32" />
                        <asp:Parameter Name="original_City_Name" Type="String" />
                        <asp:Parameter Name="original_State_Id" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="City_Name" Type="String" />
                        <asp:Parameter Name="State_Id" Type="Int32" />
                    </InsertParameters>
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList2" Name="State_Id" PropertyName="SelectedValue" Type="Int32" />
                    </SelectParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="City_Name" Type="String" />
                        <asp:Parameter Name="State_Id" Type="Int32" />
                        <asp:Parameter Name="original_City_Id" Type="Int32" />
                        <asp:Parameter Name="original_City_Name" Type="String" />
                        <asp:Parameter Name="original_State_Id" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">
                
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">
                
                <asp:Label ID="Label13" runat="server" Text="Pin-Code"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">
                
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">
                
                <asp:Label ID="Label5" runat="server" Text="ID Proof"></asp:Label>
                
            </td>
            <td>
                <asp:FileUpload ID="FileUpload1" runat="server" />
            </td>
        </tr>
        <tr>
            <td class="auto-style2">
                
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">
                
                <asp:Label ID="Label6" runat="server" Text="Photo"></asp:Label>
                
            </td>
            <td>
                <asp:FileUpload ID="FileUpload2" runat="server" />
            </td>
        </tr>
        <tr>
            <td class="auto-style2">
                
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">
                
                <asp:Label ID="Label14" runat="server"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox7" runat="server" Visible="False"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">
                
                &nbsp;</td>
            <td>&nbsp;<asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
&nbsp;
                <asp:Button ID="Button2" runat="server" Text="Cancel" />
            </td>
        </tr>
    </table>
</asp:Content>

