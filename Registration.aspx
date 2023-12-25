<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="CityBridge.Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <script src="css/jquery-3.6.0.min.js"></script>
    <script src="css/popper.js"></script>
    <script src="css/bootstrap.min.js"></script>
    <link href="StyleSheet1.css" rel="stylesheet" />
    <title>Registration</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <B>Registration</B>: <b id="username" runat="server"></b><br />
        
        <asp:TextBox ID="txtFullName" runat="server" placeholder ="Full Name"></asp:TextBox><br />
        <asp:RequiredFieldValidator ID="rfvName" runat="server" ControlToValidate="txtFullName" ErrorMessage="Enter Full Name" ForeColor="Red" ></asp:RequiredFieldValidator><br /><br />

        <asp:TextBox ID="txtEmail" runat="server" placeholder ="Email" OnTextChanged="txtEmail_TextChanged" AutoPostBack="true"></asp:TextBox><br />
        <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Enter valid Mail Id" ForeColor="Red" ></asp:RequiredFieldValidator><br />
        <asp:RegularExpressionValidator ID="revEmail" runat="server" ErrorMessage="Enter valid email id" ControlToValidate="txtEmail" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator><br /><br />

        <asp:TextBox ID="txtContact" runat="server" placeholder ="Contact Number"></asp:TextBox><br />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtContact" ErrorMessage="Enter Contact Numbar" ForeColor="Red" ></asp:RequiredFieldValidator><br /><br />

        <asp:DropDownList ID="ddlSubject" runat="server" OnSelectedIndexChanged="ddlSubject_SelectedIndexChanged" AutoPostBack="true" AppendDataBoundItems="true" >
            <asp:ListItem Text="--Select Subject--" Value="0" Selected="True"></asp:ListItem>
        </asp:DropDownList><br /><br />

        <asp:TextBox ID="txtFees" runat="server" placeholder ="Fees" ReadOnly="true"></asp:TextBox><br />
        <%--<asp:RequiredFieldValidator ID="rfvFees" runat="server" ControlToValidate="txtFees" ErrorMessage="Enter Fees" ForeColor="Red" ></asp:RequiredFieldValidator><br /><br />--%>

        <asp:TextBox ID="txtUsername" runat="server" placeholder ="User name" ReadOnly="true"></asp:TextBox><br />
        <%--<asp:RegularExpressionValidator ID="revUsername" runat="server" ErrorMessage="Enter valid Username" ControlToValidate="txtUsername" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator><br /><br />--%>

        <asp:TextBox ID="txtPassword" runat="server" placeholder ="Password" TextMode="Password"></asp:TextBox><br />
        <asp:RequiredFieldValidator ID="pass" runat="server" ControlToValidate="txtPassword" ErrorMessage="Enter Password" ForeColor="Red" ></asp:RequiredFieldValidator><br /><br />

         <asp:Button ID="btnSubmit" runat="server" Text="Submit" CssClass="btn-success" OnClick="btnSubmit_Click"  />
         <asp:Button ID="btnReset" runat="server" Text="Reset" CssClass="btn-warning"/>
        <asp:Button ID="btnLogout" runat="server" Text="Logout" CssClass="btn-danger"  /><br /><br />


        <asp:GridView ID="grdvRegistration" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Width="884px">
            <AlternatingRowStyle BackColor="White" />
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>

    </div>
    </form>
</body>
</html>
