<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="CityBridge.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <script src="css/jquery-3.6.0.min.js"></script>
    <script src="css/popper.js"></script>
    <script src="css/bootstrap.min.js"></script>
    <link href="StyleSheet1.css" rel="stylesheet" />

    <title>index</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <h1>Login</h1><br />
        <asp:TextBox ID="txtUsername" runat="server" placeholder ="User name"></asp:TextBox><br />
        <asp:RegularExpressionValidator ID="revUsername" runat="server" ErrorMessage="Enter valid email id" ControlToValidate="txtUsername" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator><br />
        <asp:TextBox ID="txtPassword" runat="server" placeholder ="Password" TextMode="Password"></asp:TextBox><br />
        <asp:RequiredFieldValidator ID="pass" runat="server" ControlToValidate="txtPassword" ErrorMessage="Enter Password" ForeColor="Red" ></asp:RequiredFieldValidator><br /><br />
        <asp:Button ID="btnLogin" runat="server" Text="Login" CssClass="btn-success" Width="93px" OnClick="btnLogin_Click" />
        <asp:Button ID="btnReset" runat="server" Text="Reset" CssClass="btn-warning" Width="92px"/><br />
    </div>
    </form>
</body>
</html>
