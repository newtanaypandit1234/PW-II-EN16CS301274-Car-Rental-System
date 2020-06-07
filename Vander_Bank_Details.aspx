<%@ Page Title="" Language="C#" MasterPageFile="~/Vander_Dashboard.master" AutoEventWireup="true" CodeFile="Vander_Bank_Details.aspx.cs" Inherits="Vander_Bank_Details" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            margin-left: 40px;
        }
        .auto-style2 {
            margin-left: 40px;
            text-align: justify;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="nav-justified">
        <tr>
            <td class="text-justify">&nbsp;<table class="nav-justified">
                <tr>
                    <td colspan="2" class="text-justify">
                        &nbsp;&nbsp;
                        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" Font-Underline="True" ForeColor="Red" Text="Bank Details"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="text-justify">&nbsp;</td>
                    <td class="text-justify">&nbsp;</td>
                </tr>
                <tr>
                    <td class="text-justify">
                        &nbsp;
                        <asp:Label ID="Label2" runat="server" Text="Vander ID"></asp:Label>
                    </td>
                    <td class="text-justify">
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="text-justify">&nbsp;</td>
                    <td class="text-justify">&nbsp;</td>
                </tr>
                <tr>
                    <td class="text-justify">
                        &nbsp;
                        <asp:Label ID="Label3" runat="server" Text="Bank Name"></asp:Label>
                    </td>
                    <td class="text-justify">
                        <asp:DropDownList ID="DropDownList1" runat="server" Width="184px">
                            <asp:ListItem>SELECT</asp:ListItem>
                            <asp:ListItem>SBI</asp:ListItem>
                            <asp:ListItem>BOI</asp:ListItem>
                            <asp:ListItem>ICICI</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="text-justify">&nbsp;</td>
                    <td class="text-justify">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        &nbsp;
                        <asp:Label ID="Label4" runat="server" Text="Account No"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                        
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox2" ErrorMessage="This Filed Required" ForeColor="Red"></asp:RequiredFieldValidator>
                        
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="text-justify">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        &nbsp;
                        <asp:Label ID="Label5" runat="server" Text="IFSC Code"></asp:Label>
                    </td>
                    <td class="auto-style1">
                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="This Filed Required" ControlToValidate="TextBox3" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style2">
                        <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
&nbsp;
                        <asp:Button ID="Button2" runat="server" Text="Cancel" />
                    </td>
                </tr>
                </table>
                <div class="text-justify">
                &nbsp;<asp:TextBox ID="TextBox4" runat="server" Visible="False"></asp:TextBox>
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                </div>
            </td>
        </tr>
    </table>
</asp:Content>

