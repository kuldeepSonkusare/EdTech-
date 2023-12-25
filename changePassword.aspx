<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="changePassword.aspx.cs" Inherits="CityBridge.changePassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <script src="css/jquery-3.6.0.min.js"></script>
    <script src="css/popper.js"></script>
    <script src="css/bootstrap.min.js"></script>
    <link href="StyleSheet1.css" rel="stylesheet" />
    <title>Change Password</title>
</head>
<body>
        <form id="form1" runat="server">
        <h1>Change Password</h1>
        <asp:TextBox ID="txtUsername" runat="server" placeholder="Enter Your Username"></asp:TextBox><br />
        <asp:RequiredFieldValidator ID="rfvUsername" runat="server" ErrorMessage="Please Enter Your Username!" ControlToValidate="txtUsername" ForeColor="Red"></asp:RequiredFieldValidator><br /><br />

        <asp:TextBox ID="txtOldPassword" runat="server" placeholder="Enter Your Old Password"></asp:TextBox><br />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please Enter Password!" ControlToValidate="txtOldPassword" ForeColor="Red"></asp:RequiredFieldValidator><br /><br />

        <asp:TextBox ID="txtNewPassword" runat="server" placeholder="Enter Your New Password"></asp:TextBox><br />
        <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ErrorMessage="Please Enter Password!" ControlToValidate="txtNewPassword" ForeColor="Red"></asp:RequiredFieldValidator><br />
        <asp:CompareValidator ID="cvNewPassword" runat="server" ErrorMessage="Old Password and New Password Must not be Same!" ControlToValidate="txtNewPassword" ControlToCompare="txtOldPassword" ForeColor="Red"></asp:CompareValidator><br /><br />
        
        <asp:TextBox ID="txtRepassword" runat="server" placeholder="Re-Enter Your New Password"></asp:TextBox><br />    
        <asp:RequiredFieldValidator ID="rfvRepassword" runat="server" ErrorMessage="Please Re-Enter Your New Password!" ControlToValidate="txtRepassword" ForeColor="Red"></asp:RequiredFieldValidator><br />
        <asp:CompareValidator ID="cvRepassword" runat="server" ErrorMessage="Password and Re-Entred Password Must be Same!" ControlToValidate="txtRepassword" ControlToCompare="txtNewPassword" ForeColor="Red"></asp:CompareValidator><br /><br />

        <asp:Button ID="btnSubmit" class="btn btn-success" runat="server" Text="Submit" OnClick="btnSubmit_Click"/>
        
        <asp:Button ID="btnLogout" class="btn btn-danger" runat="server" Text="Logout" OnClick="btnLogout_Click1" ValidationGroup="logout" />
    </form>

</body>
</html>
