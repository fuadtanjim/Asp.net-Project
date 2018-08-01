<%@ Page Language="C#" AutoEventWireup="true" CodeFile="donate.aspx.cs" Inherits="donate" %>

<!DOCTYPE html>

<html>
<head>
<title>Healthbd</title>



</head>
<body>







   <form id="form1" runat="server">
    <div class="auto-style9">
    
    </div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style15" style="font-style: normal; font-weight: bold; font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif; color: #800080">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Name:</td>
                <td class="auto-style14">
                    <asp:TextBox ID="TextBox1" runat="server" Height="30px" Width="201px"></asp:TextBox>
                </td>
                <td class="auto-style7">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="User name is required" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style10" style="font-family: &quot;Lucida Sans&quot;, &quot;Lucida Sans Regular&quot;, &quot;Lucida Grande&quot;, &quot;Lucida Sans Unicode&quot;, Geneva, Verdana, sans-serif; color: #800080; font-weight: bold">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Phone:</td>
                <td class="auto-style11">
                    <asp:TextBox ID="TextBox2" runat="server" Height="30px" Width="201px"></asp:TextBox>
                </td>
                <td class="auto-style12">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="E-mail is required" ForeColor="Red"></asp:RequiredFieldValidator>
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style2" style="font-family: &quot; lucida sans&quot; , &quot; lucida sans regular&quot; , &quot; lucida grande&quot; , &quot; lucida sans unicode&quot; , geneva, verdana, sans-serif; color: #800080; font-weight: bold">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Blood Group:</td>
                <td class="auto-style3">
                    <asp:DropDownList ID="DropDownList4" runat="server" Width="200px" Height="30px">
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
                <td class="auto-style10" style="font-family: &quot;Lucida Sans&quot;, &quot;Lucida Sans Regular&quot;, &quot;Lucida Grande&quot;, &quot;Lucida Sans Unicode&quot;, Geneva, Verdana, sans-serif; color: #800080; font-weight: bold">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Address:</td>
                <td class="auto-style11">
                    <asp:TextBox ID="TextBox4" runat="server" Height="30px" Width="201px"></asp:TextBox>
                </td>
                <td class="auto-style12">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" ErrorMessage="Address is required" ForeColor="Red"></asp:RequiredFieldValidator>
                    <br />
                </td>
            </tr>
            <tr>
                <td></td>
            </tr>
            <tr>
                <td class="auto-style2" style="font-family: &quot;Lucida Sans&quot;, &quot;Lucida Sans Regular&quot;, &quot;Lucida Grande&quot;, &quot;Lucida Sans Unicode&quot;, Geneva, Verdana, sans-serif; color: #800080; font-weight: bold">&nbsp;</td>
                <td class="auto-style8">
                    <asp:Button ID="Button1" runat="server" Text="Submit"
                        onClientClick="return confirm('Are you sure you want to submit?');" 
                        OnClick="Button1_Click" />
                </td>
                <td>
                    <asp:DynamicHyperLink ID="DynamicHyperLink1" runat="server" NavigateUrl="~/search.aspx">Donate</asp:DynamicHyperLink>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style5">
                    &nbsp;</td>
                <td class="auto-style6"></td>
            </tr>
        </table>
    </form>
</body>
</html>
