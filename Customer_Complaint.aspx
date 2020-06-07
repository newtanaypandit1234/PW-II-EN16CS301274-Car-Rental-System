<%@ Page Title="" Language="C#" MasterPageFile="~/Customer_Dashboard.master" AutoEventWireup="true" CodeFile="Customer_Complaint.aspx.cs" Inherits="Customer_Complaint" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <br />
&nbsp;&nbsp;
        <table class="nav-justified">
            <tr>
                <td>&nbsp;&nbsp;
                    <br />
&nbsp;<table class="nav-justified">
                        <tr>
                            <td colspan="2">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Label ID="Label1" runat="server" Text="Complaint" Font-Bold="True" Font-Size="Large" Font-Underline="True" ForeColor="Red"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>
                                <asp:Label ID="Label7" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>Customer Id</td>
                            <td>
                                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label2" runat="server" Text="Booking Id"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label3" runat="server" Text="Car Id"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label4" runat="server" Text="Date"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox4" runat="server" TextMode="Date"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label5" runat="server" Text="Driver Id/Name"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label6" runat="server" Text="Complaint"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox6" runat="server" TextMode="MultiLine"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>
                                <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
&nbsp;
                                <asp:Button ID="Button2" runat="server" Text="Cancel" OnClick="Button2_Click" />
                            </td>
                        </tr>
                    </table>
&nbsp;<asp:TextBox ID="TextBox7" runat="server" Visible="False"></asp:TextBox>
                </td>
            </tr>
        </table>
    </p>
                                    
</asp:Content>

