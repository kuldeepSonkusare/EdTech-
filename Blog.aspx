<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Blog.aspx.cs" Inherits="CityBridge.Blog" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="CSS/bootstrap.min.css" rel="stylesheet" />
    <script src="CSS/jquery-3.6.0.min.js"></script>
    <script src="CSS/popper.js"></script>
    <script src="CSS/bootstrap.min.js"></script>

    <title>Admin Blog</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
      <B>Admin Blog</B>: <b id="username" runat="server"></b><br />
        <asp:TextBox ID="txtBlog" runat="server" placeholder="Enter Your Blog" TextMode="MultiLine" MaxLength="500" ></asp:TextBox> <br />
        <asp:RequiredFieldValidator ID="rfvBlog" runat="server" ErrorMessage="Please Enter Blog!" ControlToValidate="txtBlog" ForeColor="Red"></asp:RequiredFieldValidator><br /><br />
        
        <asp:TextBox ID="txtDate" runat="server" placeholder="Date" ReadOnly="true" ></asp:TextBox><br />
        <%--<asp:RequiredFieldValidator ID="rfvDate" runat="server" ErrorMessage="Please Choose the Date!" ControlToValidate="txtDate" ForeColor="Red"></asp:RequiredFieldValidator><br /><br />
        --%>
        <asp:Button ID="btnSubmit" class="btn btn-success" runat="server" Text="Submit" OnClick="btnSubmit_Click"/>
        
        <asp:Button ID="btnLogout" class="btn btn-danger" runat="server" Text="Logout" ValidationGroup="logout" OnClick="btnLogout_Click" />

        <asp:GridView ID="grdvBlog" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None">
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
