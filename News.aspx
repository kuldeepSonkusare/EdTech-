<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="News.aspx.cs" Inherits="CityBridge.News" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <link href="CSS/bootstrap.min.css" rel="stylesheet" />
    <script src="CSS/jquery-3.6.0.min.js"></script>
    <script src="CSS/popper.js"></script>
    <script src="CSS/bootstrap.min.js"></script>

    <title>latest news</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <B>latest news</B>: <b id="username" runat="server"></b><br />

        <asp:TextBox ID="txtNews" runat="server" Placeholder="Latest News" ></asp:TextBox><br /><br />

        <asp:TextBox ID="txtDate" runat="server"></asp:TextBox><br />

        <asp:Button ID="btnSubmit" class="btn btn-success" runat="server" Text="Submit" OnClick="btnSubmit_Click"/>

        <asp:Button ID="btnLogout" class="btn btn-danger" runat="server" Text="Logout" ValidationGroup="logout" /><br /><br />

        <asp:GridView ID="grdvNews" runat="server"></asp:GridView>
    </div>
    </form>
</body>
</html>
