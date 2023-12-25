<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AskDoubt.aspx.cs" Inherits="CityBridge.AskDoubt" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <script src="css/jquery-3.6.0.min.js"></script>
    <script src="css/popper.js"></script>
    <script src="css/bootstrap.min.js"></script>
    <link href="StyleSheet1.css" rel="stylesheet" />
    <title>Ask Doubt</title>
</head>
<body>
    <form id="form1" runat="server">
    <B>Ask Doubt</B>: <b id="username" runat="server"></b><br />
        <asp:TextBox ID="txtName" runat="server" placeholder="Enter Your Name"></asp:TextBox><br />
        <asp:RequiredFieldValidator ID="rfvname" runat="server" ErrorMessage="Please Enter Your Name!" ControlToValidate="txtName" ForeColor="Red"></asp:RequiredFieldValidator><br /><br />

        <asp:DropDownList ID="ddlSubject" runat="server">
            <asp:ListItem Text="--Select Subject--" Value="0" Selected="True"></asp:ListItem>
        </asp:DropDownList><br />
        <asp:RequiredFieldValidator ID="rfvSubject" runat="server" ErrorMessage="Please Select the Subject!" ControlToValidate="ddlSubject" ForeColor="Red"></asp:RequiredFieldValidator><br /><br />

        <asp:TextBox ID="txtDoubt" runat="server" placeholder="Enter Your Doubt" ></asp:TextBox><br />
        <asp:RequiredFieldValidator ID="rfvDoubt" runat="server" ErrorMessage="Please Enter Your Doubt!" ControlToValidate="txtDoubt" ForeColor="Red"></asp:RequiredFieldValidator><br /><br />
        
        <asp:TextBox ID="txtDate" runat="server" placeholder="Date" TextMode="Date" ></asp:TextBox><br />
         <asp:RequiredFieldValidator ID="rfvDate" runat="server" ErrorMessage="Please Choose the Date!" ControlToValidate="txtDate" ForeColor="Red"></asp:RequiredFieldValidator><br /><br />

        <asp:Button ID="btnSubmit" class="btn btn-success" runat="server" Text="Submit"/>
        
        <asp:Button ID="btnLogout" class="btn btn-danger" runat="server" Text="Logout" />

    </form>
</body>
</html>
