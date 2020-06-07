<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style2 {
            width: 100%;
        }
        .auto-style3 {
            width: 401px;
        }
        .auto-style4 {
            height: 502px;
            margin-left: 0;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">    
    <table class="auto-style2">
        <tr>
            <td>
               
                <br />
                <table class="auto-style2">
                    <tr>
                        <td>                            
                            <marquee>
                                <asp:Image ID="Image1" runat="server" Height="31px" ImageUrl="~/images/home_page.png" Width="78px" />
                                <asp:Label ID="Label11" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Forte" Font-Size="Large" ForeColor="Red" Text="WelCome"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="Label12" runat="server" ForeColor="Blue" Text="to Car Rental - Reserve Your Car Today &amp; Save. Quick &amp; Easy Checkout. Cheap Car Rentals"></asp:Label>
<asp:Image ID="Image2" runat="server" Height="31px" ImageUrl="~/images/home_page.png" Width="78px" /></marquee></td>
                    </tr>
                </table>
                &nbsp;<table>
                <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="False" Font-Names="Times New Roman" Font-Size="Large" Font-Underline="True" Text="Search For Car" ForeColor="Blue"></asp:Label>
                        <br />
                        <br />
                        <asp:Label ID="Label2" runat="server" Text="Pick Up Country"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:DropDownList ID="DropDownList1" runat="server" Height="17px" Width="237px" AutoPostBack="True" DataSourceID="SqlDataSourceSearchCountry" DataTextField="Country_Name" DataValueField="Country_Id">
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="DropDownList1" ErrorMessage="This Field Required" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:SqlDataSource ID="SqlDataSourceSearchCountry" runat="server" ConnectionString="<%$ ConnectionStrings:myconstr %>" DeleteCommand="DELETE FROM [Country] WHERE [Country_Id] = @Country_Id" InsertCommand="INSERT INTO [Country] ([Country_Name]) VALUES (@column1)" SelectCommand="SELECT * FROM [Country]" UpdateCommand="UPDATE [Country] SET [Country_Name] = @column1 WHERE [Country_Id] = @Country_Id">
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
                        <br />
                        <asp:Label ID="Label3" runat="server" Text="Pick Up State"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:DropDownList ID="DropDownList2" runat="server" Height="16px" Width="235px" AutoPostBack="True" DataSourceID="SqlDataSourceSearchState" DataTextField="State_Name" DataValueField="State_Id">
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="DropDownList2" ErrorMessage="This Field Required" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:SqlDataSource ID="SqlDataSourceSearchState" runat="server" ConnectionString="<%$ ConnectionStrings:myconstr %>" DeleteCommand="DELETE FROM [State] WHERE [State_Id] = @State_Id" InsertCommand="INSERT INTO [State] ([State_Name], [Country_Id]) VALUES (@State_Name, @Country_Id)" SelectCommand="SELECT * FROM [State] WHERE ([Country_Id] = @Country_Id)" UpdateCommand="UPDATE [State] SET [State_Name] = @State_Name, [Country_Id] = @Country_Id WHERE [State_Id] = @State_Id">
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
                        <br />
                        <asp:Label ID="Label4" runat="server" Text="Pick Up  City"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:DropDownList ID="DropDownList3" runat="server" Height="16px" Width="235px" DataSourceID="SqlDataSourceSearchCity" DataTextField="City_Name" DataValueField="City_Id">
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="DropDownList3" ErrorMessage="This Field Required" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:SqlDataSource ID="SqlDataSourceSearchCity" runat="server" ConnectionString="<%$ ConnectionStrings:myconstr %>" SelectCommand="SELECT * FROM [City] WHERE ([State_Id] = @State_Id)">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="DropDownList2" Name="State_Id" PropertyName="SelectedValue" Type="Int32" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                        <br />
                        <asp:Label ID="Label5" runat="server" Text="Pick Up Address"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="TextBox1" runat="server" BackColor="#EEEEEE" Height="69px" TextMode="MultiLine" Width="237px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox1" ErrorMessage="This Field Required" ForeColor="Red"></asp:RequiredFieldValidator>
                        <br />
                        <asp:Label ID="Label6" runat="server" Text="Date &amp; Time"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="TextBox2" runat="server" BackColor="#EEEEEE" Height="19px" TextMode="DateTimeLocal" Width="239px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox2" ErrorMessage="This Field Required" ForeColor="Red"></asp:RequiredFieldValidator>
                        <br />
                        <br />
                        <asp:CheckBox ID="CheckBox1" runat="server" Text="Pleace Cick Me For More Details" />
                        <br />
                        <br />
                        <asp:Label ID="Label7" runat="server" Text="Drop Country"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:DropDownList ID="DropDownList4" runat="server" Height="16px" Width="238px" AutoPostBack="True" DataSourceID="SqlDataSourceSearchCountry1" DataTextField="Country_Name" DataValueField="Country_Id">
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="DropDownList4" ErrorMessage="This Field Required" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:SqlDataSource ID="SqlDataSourceSearchCountry1" runat="server" ConnectionString="<%$ ConnectionStrings:myconstr %>" DeleteCommand="DELETE FROM [Country] WHERE [Country_Id] = @Country_Id" InsertCommand="INSERT INTO [Country] ([Country_Name]) VALUES (@column1)" SelectCommand="SELECT * FROM [Country]" UpdateCommand="UPDATE [Country] SET [Country_Name] = @column1 WHERE [Country_Id] = @Country_Id">
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
                        <br />
                        <asp:Label ID="Label8" runat="server" Text="Drop State"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:DropDownList ID="DropDownList5" runat="server" Height="16px" Width="237px" AutoPostBack="True" DataSourceID="SqlDataSourceSearchSate1" DataTextField="State_Name" DataValueField="State_Id">
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="DropDownList5" ErrorMessage="This Field Required" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:SqlDataSource ID="SqlDataSourceSearchSate1" runat="server" ConnectionString="<%$ ConnectionStrings:myconstr %>" DeleteCommand="DELETE FROM [State] WHERE [State_Id] = @State_Id" InsertCommand="INSERT INTO [State] ([State_Name], [Country_Id]) VALUES (@State_Name, @Country_Id)" SelectCommand="SELECT * FROM [State] WHERE ([Country_Id] = @Country_Id)" UpdateCommand="UPDATE [State] SET [State_Name] = @State_Name, [Country_Id] = @Country_Id WHERE [State_Id] = @State_Id">
                            <DeleteParameters>
                                <asp:Parameter Name="State_Id" Type="Int32" />
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
                                <asp:Parameter Name="State_Id" Type="Int32" />
                            </UpdateParameters>
                        </asp:SqlDataSource>
                        <br />
                        <asp:Label ID="Label9" runat="server" Text="Drop City"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:DropDownList ID="DropDownList6" runat="server" Height="16px" Width="238px" DataSourceID="SqlDataSourceSarchCity1" DataTextField="City_Name" DataValueField="City_Id">
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="DropDownList6" ErrorMessage="This Field Required" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:SqlDataSource ID="SqlDataSourceSarchCity1" runat="server" ConnectionString="<%$ ConnectionStrings:myconstr %>" DeleteCommand="DELETE FROM [City] WHERE [City_Id] = @City_Id" InsertCommand="INSERT INTO [City] ([City_Name], [State_Id]) VALUES (@City_Name, @State_Id)" SelectCommand="SELECT * FROM [City] WHERE ([State_Id] = @State_Id)" UpdateCommand="UPDATE [City] SET [City_Name] = @City_Name, [State_Id] = @State_Id WHERE [City_Id] = @City_Id">
                            <DeleteParameters>
                                <asp:Parameter Name="City_Id" Type="Int32" />
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
                                <asp:Parameter Name="City_Id" Type="Int32" />
                            </UpdateParameters>
                        </asp:SqlDataSource>
                        <br />
                        <asp:Label ID="Label10" runat="server" Text="Drop Address"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="TextBox3" runat="server" BackColor="#EEEEEE" Height="65px" TextMode="MultiLine" Width="240px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="TextBox3" ErrorMessage="This Field Required" ForeColor="Red"></asp:RequiredFieldValidator>
                        <br />
                        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
&nbsp;
                        <asp:Button ID="Button2" runat="server" Text="Reset" />
                        <br />
                    </td>
                   
                    <td class="auto-style3">
                        <asp:Label  runat="server" Text="About us"></asp:Label>
                        <marquee direction="up">We Provide The awesome Facalities of Premium Cars which<Br> includes outstation rides <br>and provides best quality services<br> at affordable rates</marquee>
                        <br />
                        <br />
                        <br />
                        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3679.5473805248366!2d75.88741121443717!3d22.745058732351527!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3962fd539a99e26d%3A0x58058ec7f07ab479!2sSystematix%20Infotech%20Pvt.%20Ltd.!5e0!3m2!1sen!2sin!4v1590183843775!5m2!1sen!2sin" width="400" frameborder="0" style="border-style: none; border-color: inherit; border-width: 0; " allowfullscreen="" aria-hidden="false" tabindex="0" id="I1" name="I1" class="auto-style4"></iframe>
                    </td>
                   
                </tr>
                </table>
&nbsp;&nbsp;</td>
        </tr>
        
    </table>
</asp:Content>

