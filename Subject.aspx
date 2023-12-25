<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Subject.aspx.cs" Inherits="CityBridge.Subject" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="CSS/bootstrap.min.css" rel="stylesheet" />
    <script src="CSS/jquery-3.6.0.min.js"></script>
    <script src="CSS/popper.js"></script>
    <script src="CSS/bootstrap.min.js"></script>

    <title>Subject</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
     <b>Subject</b>: <b id="username" runat="server"></b><br />
        <asp:TextBox ID="txtSubject" runat="server" placeholder="Enter Subject" ></asp:TextBox><br />
        <asp:RequiredFieldValidator ID="rfvSubject" runat="server" ErrorMessage="Please Enter Subject!" ControlToValidate="txtSubject" ForeColor="Red"></asp:RequiredFieldValidator><br /><br />
        
        <asp:TextBox ID="txtFees" runat="server" placeholder="Fees" ></asp:TextBox><br /><br />

        <asp:Button ID="btnSubmit" class="btn btn-success" runat="server" Text="Submit" OnClick="btnSubmit_Click"/>
        
        <asp:Button ID="btnLogout" class="btn btn-danger" runat="server" Text="Logout"  ValidationGroup="logout" /><br /><br />

        <asp:GridView ID="grdvSubject" runat="server"></asp:GridView>



    </div>
    </form>
</body>
</html>
