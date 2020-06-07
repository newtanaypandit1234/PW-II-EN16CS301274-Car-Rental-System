<%@ Page Title="" Language="C#" MasterPageFile="~/Vander_Dashboard.master" AutoEventWireup="true" CodeFile="Edit_Vendor_Profile.aspx.cs" Inherits="Edit_Vendor_Profile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            margin-left: 40px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">  
    
    <table class="nav-justified">
        <tr>
            <td>&nbsp;
                <br />
&nbsp;
                <table class="nav-justified">
                    <tr>
                        <td colspan="3" class="text-left">
                            &nbsp;<asp:Label ID="Label1" runat="server" Text="Edit Profile" Font-Bold="True" Font-Size="X-Large" Font-Underline="True" ForeColor="Red"></asp:Label>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label14" runat="server"></asp:Label>
                        </td>
                        <td>&nbsp;</td>
                        <td class="text-right">
                            <asp:Image ID="Image2" runat="server" Height="59px" Width="58px" />
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;
                            <asp:Label ID="Label2" runat="server" Text="Vendor Id"></asp:Label>
                        </td>
                        <td>
                            &nbsp;</td>
                        <td>
                            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;
                            <asp:Label ID="Label3" runat="server" Text="First Name"></asp:Label>
                        </td>
                        <td>
                            &nbsp;</td>
                        <td>
                            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;
                            <asp:Label ID="Label4" runat="server" Text="Last Name"></asp:Label>
                        </td>
                        <td>
                            &nbsp;</td>
                        <td>
                            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;
                            <asp:Label ID="Label5" runat="server" Text="E-Mail"></asp:Label>
                        </td>
                        <td>
                            &nbsp;</td>
                        <td>
                            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="text-left">&nbsp;&nbsp;
                            <asp:Label ID="Label13" runat="server" Text="Dob"></asp:Label>
                        </td>
                        <td>&nbsp;</td>
                        <td>
                            <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;
                            <asp:Label ID="Label6" runat="server" Text="Gender"></asp:Label>
                        </td>
                        <td>
                            &nbsp;</td>
                        <td>
                            <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;
                            <asp:Label ID="Label7" runat="server" Text="Mobile Number"></asp:Label>
                        </td>
                        <td>
                            
                            &nbsp;</td>
                        <td>
                            
                            <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                            
                        </td>
                        <td>
                            
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;
                            <asp:Label ID="Label8" runat="server" Text="Address"></asp:Label>
                        </td>
                        <td class="auto-style1">
                            &nbsp;</td>
                        <td class="auto-style1">
                            <asp:TextBox ID="TextBox7" runat="server" TextMode="MultiLine" Width="208px"></asp:TextBox>
                        </td>
                        <td class="auto-style1">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;
                            <asp:Label ID="Label9" runat="server" Text="Country"></asp:Label>
                        </td>
                        <td>
                            &nbsp;</td>
                        <td>
                            <asp:DropDownList ID="DropDownList1" runat="server" Width="170px" DataSourceID="SqlDataSourceEdCountry" DataTextField="Country_Name" DataValueField="Country_Id" AutoPostBack="True">
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSourceEdCountry" runat="server" ConnectionString="<%$ ConnectionStrings:myconstr %>" DeleteCommand="DELETE FROM [Country] WHERE [Country_Id] = @Country_Id" InsertCommand="INSERT INTO [Country] ([Country_Name]) VALUES (@column1)" SelectCommand="SELECT * FROM [Country]" UpdateCommand="UPDATE [Country] SET [Country_Name] = @column1 WHERE [Country_Id] = @Country_Id">
                                <DeleteParameters>
                                    <asp:Parameter Name="Country_Id" Type="Int32" />
                                </DeleteParameters>
                                <InsertParameters>
                                    <asp:Parameter Name="column1" Type="String" />
                                </InsertParameters>
                                <UpdateParameters>
                                    <asp:Parameter Name="column1" Type="String" />
                                    <asp:Parameter Name="Country_Id" Type="Int32" />
                                </UpdateParameters>
                            </asp:SqlDataSource>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;
                            <asp:Label ID="Label10" runat="server" Text="State"></asp:Label>
                        </td>
                        <td>
                            &nbsp;</td>
                        <td>
                            <asp:DropDownList ID="DropDownList2" runat="server" Width="170px" DataSourceID="SqlDataSourceEdState" DataTextField="State_Name" DataValueField="State_Id" AutoPostBack="True">
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSourceEdState" runat="server" ConnectionString="<%$ ConnectionStrings:myconstr %>" SelectCommand="SELECT * FROM [State] WHERE ([Country_Id] = @Country_Id)">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="DropDownList1" Name="Country_Id" PropertyName="SelectedValue" Type="Int32" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;
                            <asp:Label ID="Label11" runat="server" Text="City"></asp:Label>
                        </td>
                        <td>
                            &nbsp;</td>
                        <td>
                            <asp:DropDownList ID="DropDownList3" runat="server" Width="170px" DataSourceID="SqlDataSourceEdCity" DataTextField="City_Name" DataValueField="City_Id">
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSourceEdCity" runat="server" ConnectionString="<%$ ConnectionStrings:myconstr %>" DeleteCommand="DELETE FROM [City] WHERE [City_Id] = @original_City_Id" InsertCommand="INSERT INTO [City] ([City_Name], [State_Id]) VALUES (@City_Name, @State_Id)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [City] WHERE ([State_Id] = @State_Id2)" UpdateCommand="UPDATE [City] SET [City_Name] = @City_Name, [State_Id] = @State_Id WHERE [City_Id] = @original_City_Id">
                                <DeleteParameters>
                                    <asp:Parameter Name="original_City_Id" Type="Int32" />
                                </DeleteParameters>
                                <InsertParameters>
                                    <asp:Parameter Name="City_Name" Type="String" />
                                    <asp:Parameter Name="State_Id" Type="Int32" />
                                </InsertParameters>
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="DropDownList2" Name="State_Id2" PropertyName="SelectedValue" Type="Int32" />
                                </SelectParameters>
                                <UpdateParameters>
                                    <asp:Parameter Name="City_Name" Type="String" />
                                    <asp:Parameter Name="State_Id" Type="Int32" />
                                    <asp:Parameter Name="original_City_Id" Type="Int32" />
                                </UpdateParameters>
                            </asp:SqlDataSource>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;
                            <asp:Label ID="Label12" runat="server" Text="Pin-Code"></asp:Label>
                        </td>
                        <td class="auto-style1">
                            &nbsp;</td>
                        <td class="auto-style1">
                            <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                        </td>
                        <td class="auto-style1">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td class="auto-style1">&nbsp;</td>
                        <td class="auto-style1">&nbsp;</td>
                        <td class="auto-style1">&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td class="auto-style1">
                            &nbsp;</td>
                        <td class="auto-style1">
                            <asp:Button ID="Button1" runat="server" Text="Update" OnClick="Button1_Click" />
&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="Button2" runat="server" Text="Cancel" />
                        </td>
                        <td class="auto-style1">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td class="auto-style1">
                            &nbsp;</td>
                        <td class="auto-style1">
                            &nbsp;</td>
                        <td class="auto-style1">
                            &nbsp;</td>
                    </tr>
                </table>
                &nbsp;</td>
        </tr>
    </table>
    
</asp:Content>

