<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Users.aspx.cs" Inherits="Users" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

</head>
<body style="height: 96px">

    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="Label_welcome" runat="server" Text="Welcome    "></asp:Label>
    
    </div>
        <p>
            <asp:Button ID="B_logout" runat="server" OnClick="B_logout_Click" Text="Logout" />
        </p>
    </form>
</body>
</html>
