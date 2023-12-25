<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Sblog.aspx.cs" Inherits="CityBridge.Sblog" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin blog</title>
    <link href="CSS/bootstrap.min.css" rel="stylesheet" />
    <script src="CSS/jquery-3.6.0.min.js"></script>
    <script src="CSS/popper.js"></script>
    <script src="CSS/bootstrap.min.js"></script>

</head>
<body>
    <form id="form1" runat="server">
    <h1>Admin Blog</h1>

        <asp:TextBox ID="txtBlog" runat="server" Placeholder="Blog" ReadOnly="true"></asp:TextBox><br /><br />

        <asp:Button ID="btnLogout" class="btn btn-danger" runat="server" Text="Logout" />

    </form>
</body>
</html>
