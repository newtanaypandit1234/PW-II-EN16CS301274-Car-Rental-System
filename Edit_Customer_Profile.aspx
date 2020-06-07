<%@ Page Title="" Language="C#" MasterPageFile="~/Customer_Dashboard.master" AutoEventWireup="true" CodeFile="Edit_Customer_Profile.aspx.cs" Inherits="Edit_Customer_Profile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style2 {
            margin-left: 40px;
        }
        .auto-style3 {
            height: 20px;
            margin-left: 40px;
        }
        .auto-style4 {
            height: 20px;
        }
        .auto-style5 {
            height: 29px;
            margin-left: 40px;
        }
        .auto-style6 {
            height: 29px;
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
                        <td colspan="3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" Font-Underline="True" ForeColor="Blue" Text="Edit Profile"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label14" runat="server"></asp:Label>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Image ID="Image1" runat="server" Height="66px" Width="94px" />
                            <br />
                            <div class="text-right">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:FileUpload ID="FileUpload1" runat="server" Width="134px" />
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">
                            <asp:Label ID="Label2" runat="server" Text="Customer Id"></asp:Label>
                        </td>
                        <td>
                            &nbsp;</td>
                        <td class="text-left">
                            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style5">
                            <asp:Label ID="Label3" runat="server" Text="First Name"></asp:Label>
                        </td>
                        <td class="auto-style6">
                            &nbsp;</td>
                        <td class="auto-style6">
                            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style2">
                            <asp:Label ID="Label4" runat="server" Text="Last Name"></asp:Label>
                        </td>
                        <td>
                            &nbsp;</td>
                        <td>
                            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style2">
                            <asp:Label ID="Label5" runat="server" Text="E-Mail"></asp:Label>
                        </td>
                        <td>
                            &nbsp;</td>
                        <td>
                            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style2">
                            <asp:Label ID="Label13" runat="server" Text="DOB"></asp:Label>
                        </td>
                        <td>&nbsp;</td>
                        <td>
                            <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style2">
                            <asp:Label ID="Label6" runat="server" Text="Gender"></asp:Label>
                        </td>
                        <td>
                            &nbsp;</td>
                        <td>
                            <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style2">
                            <asp:Label ID="Label7" runat="server" Text="Mobile Number"></asp:Label>
                        </td>
                        <td>
                            &nbsp;</td>
                        <td>
                            <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style2">
                            <asp:Label ID="Label8" runat="server" Text="Address"></asp:Label>
                        </td>
                        <td>
                            &nbsp;</td>
                        <td>
                            <asp:TextBox ID="TextBox7" runat="server" TextMode="MultiLine"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style3"></td>
                        <td class="auto-style4">&nbsp;</td>
                        <td class="auto-style4"></td>
                    </tr>
                    <tr>
                        <td class="auto-style3">
                            <asp:Label ID="Label9" runat="server" Text="Country"></asp:Label>
                        </td>
                        <td class="auto-style4">
                            </td>
                        <td class="auto-style4">
                            
                            
                            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSourceCouCust" DataTextField="Country_Name" DataValueField="Country_Id">
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSourceCouCust" runat="server" ConnectionString="<%$ ConnectionStrings:myconstr %>" DeleteCommand="DELETE FROM [Country] WHERE [Country_Id] = @Country_Id" InsertCommand="INSERT INTO [Country] ([Country_Name]) VALUES (@column1)" SelectCommand="SELECT * FROM [Country]" UpdateCommand="UPDATE [Country] SET [Country_Name] = @column1 WHERE [Country_Id] = @Country_Id">
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
                    </tr>
                    <tr>
                        <td class="auto-style2">&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style2">
                            <asp:Label ID="Label10" runat="server" Text="State"></asp:Label>
                        </td>
                        <td>
                            &nbsp;</td>
                        <td>
                            
                            
                            <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" DataSourceID="SqlDataSourceCusSta" DataTextField="State_Name" DataValueField="State_Id">
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSourceCusSta" runat="server" ConnectionString="<%$ ConnectionStrings:myconstr %>" DeleteCommand="DELETE FROM [State] WHERE [State_Id] = @State_Id" InsertCommand="INSERT INTO [State] ([State_Name], [Country_Id]) VALUES (@State_Name, @Country_Id)" SelectCommand="SELECT * FROM [State] WHERE ([Country_Id] = @Country_Id)" UpdateCommand="UPDATE [State] SET [State_Name] = @State_Name, [Country_Id] = @Country_Id WHERE [State_Id] = @State_Id">
                                <DeleteParameters>
                                    <asp:Parameter Name="State_Id" Type="Int32" />
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
                                    <asp:Parameter Name="State_Id" Type="Int32" />
                                </UpdateParameters>
                            </asp:SqlDataSource>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style3">
                            <asp:Label ID="Label11" runat="server" Text="City"></asp:Label>
                        </td>
                        <td class="auto-style4">
                            </td>
                        <td class="auto-style4">
                            
                            
                            
                            
                            
                            
                            
                            
                            <asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="SqlDataSourceCusCit" DataTextField="City_Name" DataValueField="City_Id">
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSourceCusCit" runat="server" ConnectionString="<%$ ConnectionStrings:myconstr %>" DeleteCommand="DELETE FROM [City] WHERE [City_Id] = @City_Id" InsertCommand="INSERT INTO [City] ([City_Name], [State_Id]) VALUES (@City_Name, @State_Id)" SelectCommand="SELECT * FROM [City] WHERE ([State_Id] = @State_Id)" UpdateCommand="UPDATE [City] SET [City_Name] = @City_Name, [State_Id] = @State_Id WHERE [City_Id] = @City_Id">
                                <DeleteParameters>
                                    <asp:Parameter Name="City_Id" Type="Int32" />
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
                                    <asp:Parameter Name="City_Id" Type="Int32" />
                                </UpdateParameters>
                            </asp:SqlDataSource>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style2">
                            <asp:Label ID="Label12" runat="server" Text="Pin-Code"></asp:Label>
                        </td>
                        <td>
                            &nbsp;</td>
                        <td>
                            <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style2">
                            
                        </td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style2">&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style2">&nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            <asp:Button ID="Button1" runat="server" Text="Update" OnClick="Button1_Click" />
&nbsp;&nbsp;
                            <asp:Button ID="Button2" runat="server" Text="Cancel" />
                        </td>
                    </tr>
                </table>
                &nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
    </table>

</asp:Content>

