<%@ Page Language="C#" AutoEventWireup="true" CodeFile="doct.aspx.cs" Inherits="doct" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table class="auto-style1">
     <tr>
                <td class="auto-style2">Division:</td>
                <td class="auto-style10">
                    <asp:DropDownList ID="DropDownList3" runat="server" Width="275px">
                        <asp:ListItem>Select division</asp:ListItem>
                        <asp:ListItem>Dhaka</asp:ListItem>
                        <asp:ListItem>Chittagong</asp:ListItem>
                        <asp:ListItem>Khulna</asp:ListItem>
                        <asp:ListItem>Barisal</asp:ListItem>
                        <asp:ListItem>Rajshahi</asp:ListItem>
                        <asp:ListItem>Sylhet</asp:ListItem>
                        <asp:ListItem>Rajshahi</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style14"></td>
            </tr>
            <tr>
                <td class="auto-style2">Specialization:</td>
                <td class="auto-style10">
                    <asp:DropDownList ID="DropDownList4" runat="server" Width="275px">
                        <asp:ListItem Value="Select group"></asp:ListItem>
                        <asp:ListItem>Cardiologist</asp:ListItem>
                        <asp:ListItem>Dentist</asp:ListItem>
                        <asp:ListItem>AB+</asp:ListItem>
                        <asp:ListItem>B+</asp:ListItem>
                        <asp:ListItem>O-</asp:ListItem>
                        <asp:ListItem>A-</asp:ListItem>
                        <asp:ListItem>AB-</asp:ListItem>
                        <asp:ListItem>B-</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style14">&nbsp;</td>
            </tr>
    </div>
            <tr>
                <td>
                    <asp:Button ID="Button1" runat="server" Height="35px" OnClick="Button1_Click" Text="Search" Width="71px" />
                </td>
            </tr>
         </table>
        </div>
        <p>
            &nbsp;</p>
    </form>
</body>
</html>
