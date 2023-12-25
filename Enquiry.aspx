<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Enquiry.aspx.cs" Inherits="CityBridge.Enquiry" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <script src="css/jquery-3.6.0.min.js"></script>
    <script src="css/popper.js"></script>
    <script src="css/bootstrap.min.js"></script>
    <link href="StyleSheet1.css" rel="stylesheet" />
    <title>Enquiry</title>
</head>
<body>
    <form id="form1" runat="server">
    
    
        <B>Enquiry Form</B>: <b id="username" runat="server"></b><br />
        <asp:TextBox ID="txtFullName" runat="server" placeholder="Enter Full Name"></asp:TextBox><br />
        <asp:RequiredFieldValidator ID="rfvFullname" runat="server" ErrorMessage="Please Enter Your Full Name!" ControlToValidate="txtFullname" ForeColor="Red"></asp:RequiredFieldValidator><br /><br />
        
        <asp:TextBox ID="txtEmail" runat="server" placeholder="Enter Email" TextMode="Email"></asp:TextBox><br />
        <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ErrorMessage="Please Enter Your Email Id" ControlToValidate="txtEmail" ForeColor="Red"></asp:RequiredFieldValidator><br />
        <asp:RegularExpressionValidator ID="revEmail" runat="server" ErrorMessage="Please Enter Valid Email Id!" ControlToValidate="txtEmail" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator><br /><br />

        <asp:TextBox ID="txtContact" runat="server" placeholder="Enter Contact Number" TextMode="Phone"></asp:TextBox><br />
        <asp:RequiredFieldValidator ID="rfvContact" runat="server" ErrorMessage="Please Enter Your Contact! " ControlToValidate="txtContact" ForeColor="Red"></asp:RequiredFieldValidator><br /><br />
       

        <asp:DropDownList ID="ddlSubject" runat="server">
            <asp:ListItem Text="--Select Subject--" Value="0" Selected="True"></asp:ListItem>
        </asp:DropDownList><br /><br />
        
        <asp:TextBox ID="txtFeedback" runat="server" placeholder="Your Feedback"></asp:TextBox><br /><br />
        <asp:RequiredFieldValidator ID="rfvFeedback" runat="server" ErrorMessage="Please Enter Your Feedback!" ControlToValidate="txtFeedback" ForeColor="Red"></asp:RequiredFieldValidator><br /><br />
        
    
        <asp:Button ID="btnSubmit" class="btn btn-success" runat="server" Text="Submit" OnClick="btnSubmit_Click"/>
        
        <asp:Button ID="btnReset" class="btn btn-warning" runat="server" Text="Reset"/>
        <br /><br />

        <asp:GridView ID="grdvEnquiry" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None">
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
    


    
    </form>
</body>
</html>
