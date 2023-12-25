<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TrainerRegistration.aspx.cs" Inherits="CityBridge.TrainerRegistration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <link href="css/bootstrap.min.css" rel="stylesheet" />
    <script src="css/jquery-3.6.0.min.js"></script>
    <script src="css/popper.js"></script>
    <script src="css/bootstrap.min.js"></script>
    <link href="StyleSheet1.css" rel="stylesheet" />
    <title>Trainer Registration</title>
</head>
<body>
        <form id="form1" runat="server">
        <h1>Trainer Registration</h1>
        <asp:TextBox ID="txtFName" runat="server" placeholder="Enter First Name"></asp:TextBox><br />
        <asp:RequiredFieldValidator ID="rfvFName" runat="server" ErrorMessage="Please Enter Your First Name!" ControlToValidate="txtFName" ForeColor="Red"></asp:RequiredFieldValidator><br /><br />
        
        <asp:TextBox ID="txtMName" runat="server" placeholder="Enter Middle Name"></asp:TextBox><br />
        <asp:RequiredFieldValidator ID="rfvMName" runat="server" ErrorMessage="Please Enter Your Middle Name!" ControlToValidate="txtMName" ForeColor="Red"></asp:RequiredFieldValidator><br /><br />

        <asp:TextBox ID="txtLName" runat="server" placeholder="Enter Last Name"></asp:TextBox><br />
        <asp:RequiredFieldValidator ID="rfvLName" runat="server" ErrorMessage="Please Enter Your Last Name!" ControlToValidate="txtLName" ForeColor="Red"></asp:RequiredFieldValidator><br /><br />
        
        <asp:TextBox ID="txtEmail" runat="server" placeholder="Enter Email" TextMode="Email" OnTextChanged="txtEmail_TextChanged" AutoPostBack="true"></asp:TextBox><br />
        <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ErrorMessage="Please Enter Your Email Id" ControlToValidate="txtEmail" ForeColor="Red"></asp:RequiredFieldValidator><br />
        <asp:RegularExpressionValidator ID="revEmail" runat="server" ErrorMessage="Please Enter Valid Email Id!" ControlToValidate="txtEmail" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator><br /><br />

        <asp:TextBox ID="txtContact" runat="server" placeholder="Enter Contact Number" TextMode="Phone"></asp:TextBox><br />
        <asp:RequiredFieldValidator ID="rfvContact" runat="server" ErrorMessage="Please Enter Your Contact!" ControlToValidate="txtContact" ForeColor="Red"></asp:RequiredFieldValidator><br />
        
        <asp:TextBox ID="txtPhonepay" runat="server" placeholder="Enter Phone Pay Number" ></asp:TextBox><br />
        <asp:RequiredFieldValidator ID="rfvPhonepay" runat="server" ErrorMessage="Please Enter Your Phone Pay Number!" ControlToValidate="txtPhonepay" ForeColor="Red"></asp:RequiredFieldValidator><br />

        <asp:TextBox ID="txtGpay" runat="server" placeholder="Enter Google Number" ></asp:TextBox><br />
        <asp:RequiredFieldValidator ID="rfvGpay" runat="server" ErrorMessage="Please Enter Your Google Number!" ControlToValidate="txtGpay" ForeColor="Red"></asp:RequiredFieldValidator><br />

        <asp:TextBox ID="txtUsername" runat="server" placeholder="Enter Username" ReadOnly="true"></asp:TextBox><br /><br />
        
        <asp:TextBox ID="txtPassword" runat="server" placeholder="Enter Password" TextMode="Password"></asp:TextBox><br />
        <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ErrorMessage="Please Enter Password!" ControlToValidate="txtPassword" ForeColor="Red"></asp:RequiredFieldValidator><br /><br />
    
        <asp:TextBox ID="txtRepassword" runat="server" placeholder="Re-Enter Your Password"></asp:TextBox><br />    
        <asp:RequiredFieldValidator ID="rfvRepassword" runat="server" ErrorMessage="Please Re-Enter Your Password!" ControlToValidate="txtRepassword" ForeColor="Red"></asp:RequiredFieldValidator><br />
        <asp:CompareValidator ID="cvRepassword" runat="server" ErrorMessage="Password and Re-Entred Password Must be Same!" ControlToValidate="txtRepassword" ControlToCompare="txtPassword" ForeColor="Red"></asp:CompareValidator><br /><br />

        <asp:DropDownList ID="ddlSubject" runat="server" AppendDataBoundItems="true" AutoPostBack="true">
            <asp:ListItem Text="--Select Subject--" Value="0" Selected="True"></asp:ListItem>
        </asp:DropDownList><br /><br />

        <asp:TextBox ID="txtSalary" runat="server" placeholder="Salary"></asp:TextBox><br /><br />

        <asp:Button ID="btnSubmit" class="btn btn-success" runat="server" Text="Submit" OnClick="btnSubmit_Click"/>
        
        <asp:Button ID="btnReset" class="btn btn-warning" runat="server" Text="Reset"/>
        <br /><br />
        <asp:GridView ID="grdvTrainer" runat="server"></asp:GridView>
    </form>

</body>
</html>
