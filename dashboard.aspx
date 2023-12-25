<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="dashboard.aspx.cs" Inherits="CityBridge.dashboard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <script src="css/jquery-3.6.0.min.js"></script>
    <script src="css/popper.js"></script>
    <script src="css/bootstrap.min.js"></script>
    <link href="StyleSheet1.css" rel="stylesheet" />
    <title>Dashboard</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <b>Dashboard</b>: <b id="username" runat="server"></b><br />
        <a href="Registration.aspx" class="btn btn-dark" style="align-content:center;font-size:20px;width:300px">Register Students</a><br /><br />
         <a href="Enquiry.aspx" class="btn btn-dark" style="align-content:center;font-size:20px;width:300px">Enquiry</a><br /><br />
        <a href="#" class="btn btn-dark" style="font-size:20px;width:300px">Upadate Students</a><br /><br />
        <a href="Subject.aspx" class="btn btn-dark" style="font-size:20px;width:300px">Add Subject</a><br /><br />
        <a href="News.aspx" class="btn btn-dark" style="font-size:20px;width:300px">Add Latest NEWS</a><br /><br />
        <a href="Blog.aspx" class="btn btn-dark" style="font-size:20px;width:300px">Add Latest Blog</a><br /><br />
        <a href="Upload.aspx" class="btn btn-dark" style="font-size:20px;width:300px">Upload Brouchure</a><br /><br />
        <a href="#" class="btn btn-dark" style="font-size:20px;width:300px">Student Doubt</a><br /><br />
        <a href="A salary.aspx" class="btn btn-dark" style="font-size:20px;width:300px">Salary</a><br /><br />
        <a href="changePassword.aspx" class="btn btn-dark" style="font-size:20px;width:300px">Change Password</a><br /><br />
<%--        <a href="#" class="btn btn-danger" style="font-size:20px;width:300px">Logout</a><br /><br />--%>
        <asp:Button class="btn btn-danger" style="font-size:20px;width:300px" ID="Logout" runat="server" Text="Logout"  OnClientClick="return confirm('Are you Sure?');" OnClick="Logout_Click"/>
    </div>
    </form>
</body>
</html>
