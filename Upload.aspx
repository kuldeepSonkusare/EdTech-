<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Upload.aspx.cs" Inherits="CityBridge.Upload" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <script src="css/jquery-3.6.0.min.js"></script>
    <script src="css/popper.js"></script>
    <script src="css/bootstrap.min.js"></script>
    <link href="StyleSheet1.css" rel="stylesheet" />
    <title>Upload</title>
</head>
<body>
        <form id="form1" runat="server">
        <B>Upload</B> : <b id="username" runat="server"></b><br />
        <asp:FileUpload ID="FileUpload1" runat="server" /><br /><br />

        <asp:Button ID="btnSubmit" class="btn btn-success" runat="server" Text="Submit" OnClick="btnSubmit_Click"/>
        
        <asp:Button ID="btnLogout" class="btn btn-danger" runat="server" Text="Logout" />
    </form>

</body>
</html>
