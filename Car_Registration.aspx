<%@ Page Title="" Language="C#" MasterPageFile="~/Vander_Dashboard.master" AutoEventWireup="true" CodeFile="Car_Registration.aspx.cs" Inherits="Car_Registration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style1 {
        width: 102%
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <table class="nav-justified">
    <tr>
        <td>
            <br />
            <br />
            <table class="nav-justified">
                <tr>
                    <td>&nbsp;&nbsp;
                        <br />
&nbsp;<br />
&nbsp;<table class="nav-justified">
                            <tr>
                                <td colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label1" runat="server" Text="Car Registation" Font-Bold="True" Font-Size="X-Large" Font-Underline="True" ForeColor="#0000CC"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>
            <asp:Label ID="Label13" runat="server" Font-Size="Large" Font-Underline="True" ForeColor="Red"></asp:Label>
            
                                </td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td>&nbsp;
            <asp:Label ID="Label2" runat="server" Text="Vander ID"></asp:Label>
                                </td>
                                <td>
            <asp:TextBox ID="TextBox1" runat="server" Height="29px" Width="192px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td>&nbsp;
            <asp:Label ID="Label3" runat="server" Text="Car Name"></asp:Label>
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
                                <td>&nbsp;
            <asp:Label ID="Label4" runat="server" Text="Car Company Name"></asp:Label>
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
                                <td>&nbsp;
            <asp:Label ID="Label5" runat="server" Text="Car Registration Number"></asp:Label>
                                </td>
                                <td>
            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td>&nbsp;
            <asp:Label ID="Label6" runat="server" Text="Car Number"></asp:Label>
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
                                <td>&nbsp;
            <asp:Label ID="Label7" runat="server" Text="Car Model Year"></asp:Label>
                                </td>
                                <td>
            <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td>&nbsp;
            <asp:Label ID="Label8" runat="server" Text="Car Type"></asp:Label>
                                </td>
                                <td>
            <asp:DropDownList ID="DropDownList1" runat="server">
                <asp:ListItem>Select</asp:ListItem>
                <asp:ListItem>Spots</asp:ListItem>
                <asp:ListItem>Luxury </asp:ListItem>
                <asp:ListItem>Normal</asp:ListItem>
            </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label14" runat="server" Text="Number Of Sheet"></asp:Label>
                                </td>
                                <td>
                                    <asp:DropDownList ID="DropDownList4" runat="server">
                                        <asp:ListItem>Select</asp:ListItem>
                                        <asp:ListItem>2-Sheeter</asp:ListItem>
                                        <asp:ListItem>5-Sheeter</asp:ListItem>
                                        <asp:ListItem>8-Sheeter</asp:ListItem>
                                        <asp:ListItem>9-Sheeter</asp:ListItem>
                                        <asp:ListItem>26-Sheeter</asp:ListItem>
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td>&nbsp;&nbsp;
            <asp:Label ID="Label9" runat="server" Text="Air Conditioner"></asp:Label>
                                </td>
                                <td>
            <asp:DropDownList ID="DropDownList2" runat="server">
                <asp:ListItem>Select</asp:ListItem>
                <asp:ListItem>AC</asp:ListItem>
                <asp:ListItem>Non AC</asp:ListItem>
            </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td>&nbsp;
            <asp:Label ID="Label10" runat="server" Text="Fuel"></asp:Label>
                                </td>
                                <td>
            <asp:DropDownList ID="DropDownList3" runat="server">
                <asp:ListItem>Select</asp:ListItem>
                <asp:ListItem>Petrol</asp:ListItem>
                <asp:ListItem>Diesel</asp:ListItem>
                <asp:ListItem>CNG Gas</asp:ListItem>
            </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td>&nbsp;
            <asp:Label ID="Label11" runat="server" Text="Insurance Number"></asp:Label>
                                </td>
                                <td>
            <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td>&nbsp;
            <asp:Label ID="Label12" runat="server" Text="Car Image"></asp:Label>
            
                                </td>
                                <td><asp:FileUpload ID="FileUpload1" runat="server" />
            
                                </td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td>&nbsp;&nbsp;&nbsp;&nbsp;
                        
                                </td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td>
            <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
            
        &nbsp;&nbsp;&nbsp;
                                    <asp:Button ID="Button2" runat="server" Text="Cancel" OnClick="Button2_Click" />
                                </td>
                            </tr>
                        </table>
                        <br />
                    </td>
                </tr>
            </table>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            &nbsp;<asp:TextBox ID="TextBox8" runat="server" Visible="False"></asp:TextBox>
        </td>
    </tr>
</table>
    
</asp:Content>




