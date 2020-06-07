<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Customer_Registration.aspx.cs" Inherits="Customer_Registration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style2 {
            width: 100%;
        }
        .auto-style3 {
            margin-left: 40px;
        }
        .auto-style4 {
            width: 509px;
            height: 270px;
        }
        .auto-style5 {
            width: 255px;
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
                        <td><marquee>
                                <asp:Image ID="Image1" runat="server" Height="31px" ImageUrl="~/images/home_page.png" Width="78px" />
                                <asp:Label ID="Label16" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Forte" Font-Size="Large" ForeColor="Red" Text="WelCome"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="Label17" runat="server" ForeColor="Blue" Text="to Car Rental - Reserve Your Car Today &amp; Save. Quick &amp; Easy Checkout. Cheap Car Rentals"></asp:Label>
<asp:Image ID="Image2" runat="server" Height="31px" ImageUrl="~/images/home_page.png" Width="78px" /></marquee></td>
                    </tr>
                </table>
                <br />
                <table>
                    <tr>
                        <td class="auto-style3">
                <asp:Label ID="Label1" runat="server" Text="Customer Registration" Font-Bold="True" Font-Size="Small" Font-Underline="True" ForeColor="Blue"></asp:Label>
                            <br />
                <br />
                            
                <asp:Label ID="Label2" runat="server" Text="First Name"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox2" runat="server" BackColor="#EFEFEF"></asp:TextBox>
                            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="This Filed is Required" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <asp:Label ID="Label3" runat="server" Text="Last Name"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox3" runat="server" BackColor="#EFEFEF"></asp:TextBox>
                            &nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox3" ErrorMessage="This Filed is Required" ForeColor="Red"></asp:RequiredFieldValidator>
                            <br />
                <asp:Label ID="Label4" runat="server" Text="Email"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox4" runat="server" BackColor="#EFEFEF" TextMode="Email"></asp:TextBox>
                            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox4" ErrorMessage="This Filed is Required" ForeColor="Red"></asp:RequiredFieldValidator>
                            <br />
                <asp:Label ID="Label5" runat="server" Text="Password"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox5" runat="server" BackColor="#EFEFEF" TextMode="Password"></asp:TextBox>
                            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox5" ErrorMessage="This Filed is Required" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <asp:Label ID="Label6" runat="server" Text="Gender"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                
                            <asp:RadioButton ID="RadioButton1" runat="server" Text="Male" />
&nbsp;
                            <asp:RadioButton ID="RadioButton2" runat="server" Text="Female" />
                            <br />
                            <br />
                            <asp:Label ID="Label7" runat="server" Text="Dob"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:TextBox ID="TextBox6" runat="server" BackColor="#EFEFEF" TextMode="Date"></asp:TextBox>
                            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox6" ErrorMessage="This Filed is Required" ForeColor="Red"></asp:RequiredFieldValidator>
                            <br />
                            <asp:Label ID="Label8" runat="server" Text="Mobile"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:TextBox ID="TextBox7" runat="server" BackColor="#EFEFEF" TextMode="Number"></asp:TextBox>
                            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox7" ErrorMessage="This Filed is Required" ForeColor="Red"></asp:RequiredFieldValidator>
                            <br />
                            <asp:Label ID="Label9" runat="server" Text="Address"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:TextBox ID="TextBox8" runat="server" BackColor="#EFEFEF" TextMode="MultiLine"></asp:TextBox>
                            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox8" ErrorMessage="This Filed is Required" ForeColor="Red"></asp:RequiredFieldValidator>
                            <br />
                            <asp:Label ID="Label10" runat="server" Text="Country"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSourceCountry1" DataTextField="Country_Name" DataValueField="Country_Id" AutoPostBack="True">
                            </asp:DropDownList>
                            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="DropDownList1" ErrorMessage="This Filed is Required" ForeColor="Red"></asp:RequiredFieldValidator>
                            <asp:SqlDataSource ID="SqlDataSourceCountry1" runat="server" ConnectionString="<%$ ConnectionStrings:myconstr %>" SelectCommand="SELECT * FROM [Country]"></asp:SqlDataSource>
                            <br />
                            <asp:Label ID="Label11" runat="server" Text="State"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSourceCus_state1" DataTextField="State_Name" DataValueField="State_Id" AutoPostBack="True">
                            </asp:DropDownList>
                            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="DropDownList2" ErrorMessage="This Filed is Required" ForeColor="Red"></asp:RequiredFieldValidator>
                            <asp:SqlDataSource ID="SqlDataSourceCus_state1" runat="server" ConnectionString="<%$ ConnectionStrings:myconstr %>" SelectCommand="SELECT * FROM [State] WHERE ([Country_Id] = @Country_Id)">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="DropDownList1" Name="Country_Id" PropertyName="SelectedValue" Type="Int32" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                            <br />
                            <asp:Label ID="Label12" runat="server" Text="City"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="SqlDataSourceCity1" DataTextField="City_Name" DataValueField="City_Id">
                            </asp:DropDownList>
                            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="DropDownList3" ErrorMessage="This Filed is Required" ForeColor="Red"></asp:RequiredFieldValidator>
                            <asp:SqlDataSource ID="SqlDataSourceCity1" runat="server" ConnectionString="<%$ ConnectionStrings:myconstr %>" SelectCommand="SELECT * FROM [City] WHERE ([State_Id] = @State_Id)">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="DropDownList2" Name="State_Id" PropertyName="SelectedValue" Type="Int32" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                            <br />
                            <asp:Label ID="Label13" runat="server" Text="Pin-Code"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:TextBox ID="TextBox9" runat="server" BackColor="#EFEFEF"></asp:TextBox>
                            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="TextBox9" ErrorMessage="This Filed is Required" ForeColor="Red"></asp:RequiredFieldValidator>
                            <br />
                            <br />
                            
                            <asp:Label ID="Label15" runat="server" Font-Italic="True" Font-Size="Large" ForeColor="Red"></asp:Label>
                            
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            
                            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="Button1" runat="server" Font-Bold="False" Text="Submit" OnClick="Button1_Click" />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Cancel" />
                            <br />
                        </td>
                        <td class="auto-style5">
                            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3679.5473805248366!2d75.88741121443717!3d22.745058732351527!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3962fd539a99e26d%3A0x58058ec7f07ab479!2sSystematix%20Infotech%20Pvt.%20Ltd.!5e0!3m2!1sen!2sin!4v1590183843775!5m2!1sen!2sin" width="400" frameborder="0" style="border-style: none; border-color: inherit; border-width: 0; " allowfullscreen="" aria-hidden="false" tabindex="0" id="I1" name="I1" class="auto-style4"></iframe>
                           </td>
                    </tr>
                </table>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                
                            <asp:TextBox ID="TextBox1" runat="server" BackColor="#EFEFEF" Visible="False"></asp:TextBox>
                
            </td>
        </tr>
    </table>
</asp:Content>

