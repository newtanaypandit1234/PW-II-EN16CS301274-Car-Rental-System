<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Ven_Login.aspx.cs" Inherits="Ven_Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style2 {
        width: 100%;
    }
        .auto-style3 {
            width: 245px;
        }
        .auto-style4 {
            width: 277px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table class="auto-style2">
    <tr>
        <td>
            <table class="auto-style4">
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="X-Small" Font-Underline="True" ForeColor="Blue" Text="Login"></asp:Label>
                        <br />
                        <br />
                        <asp:Label ID="Label2" runat="server" Text="User Name"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="TextBox1" runat="server" BackColor="#F0F0F0"></asp:TextBox>
                        <br />
                        <asp:Label ID="Label3" runat="server" Text="Password"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="TextBox2" runat="server" BackColor="#F0F0F0" TextMode="Password"></asp:TextBox>
                        <br />
                        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button1" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="XX-Small" Text="Login" OnClick="Button1_Click" />
&nbsp;&nbsp;&nbsp;
                        <asp:LinkButton ID="LinkButton1" runat="server">New User</asp:LinkButton>
                    </td>
                </tr>
            </table>
        </td>
    </tr>
</table>
</asp:Content>

