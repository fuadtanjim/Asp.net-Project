<%@ Page Language="C#" AutoEventWireup="true" CodeFile="register.aspx.cs" Inherits="register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style2" style="font-style: normal; font-weight: bold; font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif; color: #800080">User Name:</td>
                <td class="auto-style3">
                    <asp:TextBox ID="TextBox1" runat="server" Width="220px" CssClass="auto-style14" Height="30px" ForeColor="#3366FF"></asp:TextBox>
                </td>
                <td class="auto-style7">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="User name is required" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2" style="font-family: &quot; lucida sans&quot; , &quot; lucida sans regular&quot; , &quot; lucida grande&quot; , &quot; lucida sans unicode&quot; , geneva, verdana, sans-serif; color: #800080; font-weight: bold">E-mail:</td>
                <td class="auto-style3">
                    <asp:TextBox ID="TextBox2" runat="server" Width="220px" Height="30px"></asp:TextBox>
                </td>
                <td class="auto-style7">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="E-mail is required" ForeColor="Red"></asp:RequiredFieldValidator>
                    <br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="You must enter valid e-mail id" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="text-right" style="font-family: &quot; lucida sans&quot; , &quot; lucida sans regular&quot; , &quot; lucida grande&quot; , &quot; lucida sans unicode&quot; , geneva, verdana, sans-serif; color: #800080; font-weight: bold">Password:</td>
                <td class="auto-style5">
                    <asp:TextBox ID="TextBox3" runat="server" TextMode="Password" Width="220px" Height="30px"></asp:TextBox>
                </td>
                <td class="auto-style8">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="Password is required" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2" style="font-family: &quot; lucida sans&quot; , &quot; lucida sans regular&quot; , &quot; lucida grande&quot; , &quot; lucida sans unicode&quot; , geneva, verdana, sans-serif; color: #800080; font-weight: bold">Confirm Password:</td>
                <td class="auto-style3">
                    <asp:TextBox ID="TextBox4" runat="server" TextMode="Password" Width="220px" Height="30px"></asp:TextBox>
                </td>
                <td class="auto-style7">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" ErrorMessage="Confirm password is required" ForeColor="Red"></asp:RequiredFieldValidator>
                    <br />
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox3" ControlToValidate="TextBox4" ErrorMessage="Both password must be same" ForeColor="Red"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2" style="font-family: &quot; lucida sans&quot; , &quot; lucida sans regular&quot; , &quot; lucida grande&quot; , &quot; lucida sans unicode&quot; , geneva, verdana, sans-serif; color: #800080; font-weight: bold">Division:</td>
                <td class="auto-style3">
                    <asp:DropDownList ID="DropDownList3" runat="server" Width="220px" Height="22px">
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
                <td></td>
            </tr>
            <tr>
                <td class="auto-style2" style="font-family: &quot; lucida sans&quot; , &quot; lucida sans regular&quot; , &quot; lucida grande&quot; , &quot; lucida sans unicode&quot; , geneva, verdana, sans-serif; color: #800080; font-weight: bold">Blood Group:</td>
                <td class="auto-style3">
                    <asp:DropDownList ID="DropDownList4" runat="server" Width="220px" Height="22px">
                        <asp:ListItem Value="Select group"></asp:ListItem>
                        <asp:ListItem>O+</asp:ListItem>
                        <asp:ListItem>A+</asp:ListItem>
                        <asp:ListItem>AB+</asp:ListItem>
                        <asp:ListItem>B+</asp:ListItem>
                        <asp:ListItem>O-</asp:ListItem>
                        <asp:ListItem>A-</asp:ListItem>
                        <asp:ListItem>AB-</asp:ListItem>
                        <asp:ListItem>B-</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style5">
                    <asp:Button ID="Button1" runat="server" Text="Submit"
                        OnClientClick="return confirm('Are you sure you want to submit?');"
                        OnClick="Button1_Click" />
                    <input id="Reset1" class="auto-style9" type="reset" value="reset" /></td>
                <td class="auto-style6"></td>
            </tr>
        </table>
    </form>
</body>
</html>
