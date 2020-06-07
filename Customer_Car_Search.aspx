<%@ Page Title="" Language="C#" MasterPageFile="~/Customer_Dashboard.master" AutoEventWireup="true" CodeFile="Customer_Car_Search.aspx.cs" Inherits="Customer_Car_Search" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style2 {
            margin-left: 40px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="nav-justified">
        <tr>
            <td>
                <br />
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <table class="nav-justified">
                    <tr>
                        <td colspan="2">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="Label13" runat="server" Text="Search For Car" Font-Bold="True" Font-Italic="True" Font-Names="Times New Roman" Font-Size="XX-Large" Font-Underline="True" ForeColor="Blue"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;
                            <asp:Label ID="Label14" runat="server" Text="Pick-Up Country"></asp:Label>
                        </td>
                        <td>
                            <asp:DropDownList ID="DropDownList1" runat="server" Width="230px" AutoPostBack="True" DataSourceID="SqlDataSourceCusSearchCountry1" DataTextField="Country_Name" DataValueField="Country_Id">
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="DropDownList1" ErrorMessage="This Field Required" ForeColor="Red"></asp:RequiredFieldValidator>
                            <asp:SqlDataSource ID="SqlDataSourceCusSearchCountry1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:myconstr %>" DeleteCommand="DELETE FROM [Country] WHERE [Country_Id] = @original_Country_Id AND (([Country_Name] = @original_column1) OR ([Country_Name] IS NULL AND @original_column1 IS NULL))" InsertCommand="INSERT INTO [Country] ([Country_Name]) VALUES (@column1)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Country]" UpdateCommand="UPDATE [Country] SET [Country_Name] = @column1 WHERE [Country_Id] = @original_Country_Id AND (([Country_Name] = @original_column1) OR ([Country_Name] IS NULL AND @original_column1 IS NULL))">
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
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;
                            <asp:Label ID="Label15" runat="server" Text="Pick-Up State"></asp:Label>
                        </td>
                        <td>
                            
                            <asp:DropDownList ID="DropDownList2" runat="server" Width="230px" AutoPostBack="True" DataSourceID="SqlDataSourcecusSearchState1" DataTextField="State_Name" DataValueField="State_Id">
                            </asp:DropDownList>
                            
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="DropDownList2" ErrorMessage="This Field Required" ForeColor="Red"></asp:RequiredFieldValidator>
                            
                            <asp:SqlDataSource ID="SqlDataSourcecusSearchState1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:myconstr %>" DeleteCommand="DELETE FROM [State] WHERE [State_Id] = @original_State_Id AND (([State_Name] = @original_State_Name) OR ([State_Name] IS NULL AND @original_State_Name IS NULL)) AND (([Country_Id] = @original_Country_Id) OR ([Country_Id] IS NULL AND @original_Country_Id IS NULL))" InsertCommand="INSERT INTO [State] ([State_Name], [Country_Id]) VALUES (@State_Name, @Country_Id)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [State] WHERE ([Country_Id] = @Country_Id)" UpdateCommand="UPDATE [State] SET [State_Name] = @State_Name, [Country_Id] = @Country_Id WHERE [State_Id] = @original_State_Id AND (([State_Name] = @original_State_Name) OR ([State_Name] IS NULL AND @original_State_Name IS NULL)) AND (([Country_Id] = @original_Country_Id) OR ([Country_Id] IS NULL AND @original_Country_Id IS NULL))">
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
                        <td>
                            &nbsp;</td>
                        <td>
                            
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;
                            <asp:Label ID="Label16" runat="server" Text="Pick-Up City"></asp:Label>
                        </td>
                        <td>
                            
                            <asp:DropDownList ID="DropDownList3" runat="server" Width="230px" DataSourceID="SqlDataSourceCusSearchCity1" DataTextField="City_Name" DataValueField="City_Id">
                            </asp:DropDownList>
                            
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="DropDownList3" ErrorMessage="This Field Required" ForeColor="Red"></asp:RequiredFieldValidator>
                            
                            <asp:SqlDataSource ID="SqlDataSourceCusSearchCity1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:myconstr %>" DeleteCommand="DELETE FROM [City] WHERE [City_Id] = @original_City_Id AND (([City_Name] = @original_City_Name) OR ([City_Name] IS NULL AND @original_City_Name IS NULL)) AND (([State_Id] = @original_State_Id) OR ([State_Id] IS NULL AND @original_State_Id IS NULL))" InsertCommand="INSERT INTO [City] ([City_Name], [State_Id]) VALUES (@City_Name, @State_Id)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [City] WHERE ([State_Id] = @State_Id)" UpdateCommand="UPDATE [City] SET [City_Name] = @City_Name, [State_Id] = @State_Id WHERE [City_Id] = @original_City_Id AND (([City_Name] = @original_City_Name) OR ([City_Name] IS NULL AND @original_City_Name IS NULL)) AND (([State_Id] = @original_State_Id) OR ([State_Id] IS NULL AND @original_State_Id IS NULL))">
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
                        <td>
                            &nbsp;</td>
                        <td>
                            
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;
                            <asp:Label ID="Label17" runat="server" Text="Pick-Up Address"></asp:Label>
                        </td>
                        <td>
                            
                            <asp:TextBox ID="TextBox1" runat="server" Height="70px" TextMode="MultiLine" Width="230px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox1" ErrorMessage="This Field Required" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td>
                            
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            
                            &nbsp;
                            
                            <asp:Label ID="Label18" runat="server" Text="Date &amp; Time"></asp:Label>
                            
                        </td>
                        <td class="auto-style2">
                            
                            <asp:TextBox ID="TextBox2" runat="server" TextMode="DateTimeLocal" Width="230px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox2" ErrorMessage="This Field Required" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            
                            &nbsp;</td>
                        <td class="auto-style2">
                            
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            
                            &nbsp;
                            
                            <asp:Label ID="Label19" runat="server" Text="Drop Country"></asp:Label>
                            
                        </td>
                        <td class="auto-style2">
                            
                            <asp:DropDownList ID="DropDownList4" runat="server" Width="230px" AutoPostBack="True" DataSourceID="SqlDataSourceCusSearchCountry" DataTextField="Country_Name" DataValueField="Country_Id">
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="DropDownList4" ErrorMessage="This Field Required" ForeColor="Red"></asp:RequiredFieldValidator>
                            <asp:SqlDataSource ID="SqlDataSourceCusSearchCountry" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:myconstr %>" DeleteCommand="DELETE FROM [Country] WHERE [Country_Id] = @original_Country_Id AND (([Country_Name] = @original_column1) OR ([Country_Name] IS NULL AND @original_column1 IS NULL))" InsertCommand="INSERT INTO [Country] ([Country_Name]) VALUES (@column1)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Country]" UpdateCommand="UPDATE [Country] SET [Country_Name] = @column1 WHERE [Country_Id] = @original_Country_Id AND (([Country_Name] = @original_column1) OR ([Country_Name] IS NULL AND @original_column1 IS NULL))">
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
                        <td>
                            
                            &nbsp;</td>
                        <td class="auto-style2">
                            
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            
                            &nbsp;
                            
                            <asp:Label ID="Label20" runat="server" Text="Drop State"></asp:Label>
                            
                        </td>
                        <td class="auto-style2">
                            
                            <asp:DropDownList ID="DropDownList5" runat="server" Width="230px" AutoPostBack="True" DataSourceID="SqlDataSourceCusSearchSatet" DataTextField="State_Name" DataValueField="State_Id">
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="DropDownList5" ErrorMessage="This Field Required" ForeColor="Red"></asp:RequiredFieldValidator>
                            <asp:SqlDataSource ID="SqlDataSourceCusSearchSatet" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:myconstr %>" DeleteCommand="DELETE FROM [State] WHERE [State_Id] = @original_State_Id AND (([State_Name] = @original_State_Name) OR ([State_Name] IS NULL AND @original_State_Name IS NULL)) AND (([Country_Id] = @original_Country_Id) OR ([Country_Id] IS NULL AND @original_Country_Id IS NULL))" InsertCommand="INSERT INTO [State] ([State_Name], [Country_Id]) VALUES (@State_Name, @Country_Id)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [State] WHERE ([Country_Id] = @Country_Id)" UpdateCommand="UPDATE [State] SET [State_Name] = @State_Name, [Country_Id] = @Country_Id WHERE [State_Id] = @original_State_Id AND (([State_Name] = @original_State_Name) OR ([State_Name] IS NULL AND @original_State_Name IS NULL)) AND (([Country_Id] = @original_Country_Id) OR ([Country_Id] IS NULL AND @original_Country_Id IS NULL))">
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
                                    <asp:ControlParameter ControlID="DropDownList4" Name="Country_Id" PropertyName="SelectedValue" Type="Int32" />
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
                        <td>
                            
                            &nbsp;</td>
                        <td class="auto-style2">
                            
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            
                            &nbsp;
                            
                            <asp:Label ID="Label21" runat="server" Text="Drop City"></asp:Label>
                            
                        </td>
                        <td class="auto-style2">
                            
                            <asp:DropDownList ID="DropDownList6" runat="server" Width="230px" DataSourceID="SqlDataSourceCusSearchCity" DataTextField="City_Name" DataValueField="City_Id">
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextBox3" ErrorMessage="This Field Required" ForeColor="Red"></asp:RequiredFieldValidator>
                            <asp:SqlDataSource ID="SqlDataSourceCusSearchCity" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:myconstr %>" DeleteCommand="DELETE FROM [City] WHERE [City_Id] = @original_City_Id AND (([City_Name] = @original_City_Name) OR ([City_Name] IS NULL AND @original_City_Name IS NULL)) AND (([State_Id] = @original_State_Id) OR ([State_Id] IS NULL AND @original_State_Id IS NULL))" InsertCommand="INSERT INTO [City] ([City_Name], [State_Id]) VALUES (@City_Name, @State_Id)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [City] WHERE ([State_Id] = @State_Id)" UpdateCommand="UPDATE [City] SET [City_Name] = @City_Name, [State_Id] = @State_Id WHERE [City_Id] = @original_City_Id AND (([City_Name] = @original_City_Name) OR ([City_Name] IS NULL AND @original_City_Name IS NULL)) AND (([State_Id] = @original_State_Id) OR ([State_Id] IS NULL AND @original_State_Id IS NULL))">
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
                                    <asp:ControlParameter ControlID="DropDownList5" Name="State_Id" PropertyName="SelectedValue" Type="Int32" />
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
                        <td>
                            
                            &nbsp;</td>
                        <td class="auto-style2">
                            
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            
                            &nbsp;
                            
                            <asp:Label ID="Label22" runat="server" Text="Drop Address"></asp:Label>
                            
                        </td>
                        <td class="auto-style2">
                            
                            <asp:TextBox ID="TextBox3" runat="server" Height="70px" TextMode="MultiLine" Width="230px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="TextBox3" ErrorMessage="This Field Required" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            
                            &nbsp;</td>
                        <td class="auto-style2">
                            
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            
                            &nbsp;</td>
                        <td class="auto-style2">
                            
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            
                            &nbsp;</td>
                        <td class="auto-style2">
                            
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            
                            &nbsp;</td>
                        <td class="auto-style2">
                            
                            <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="Button2" runat="server" Text="Reset" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            
                            &nbsp;</td>
                        <td class="auto-style2">
                            
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            
                            
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>

