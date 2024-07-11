<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Validation.aspx.cs" Inherits="Validation.Validation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h3>Please fill in all the fields in the following form:
            </h3>
                <table style="width: 100%;">
                    <tr>
                        <td>&nbsp;Name:</td>
                        <td>
                            <asp:TextBox runat="server" ID="nameTextBox"></asp:TextBox><asp:RequiredFieldValidator runat="server" ErrorMessage="Enter the name please." ID="nameRequiredFieldValidator" Display="Dynamic" ControlToValidate="nameTextBox" ForeColor="Red"></asp:RequiredFieldValidator>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;E-mail</td>
                        <td>
                            <asp:TextBox runat="server" ID="emailTextBox" TextMode="Email"></asp:TextBox>&nbsp;email@domain.com<asp:RequiredFieldValidator runat="server" ErrorMessage="Enter the email address please" ID="emailRequiredFieldValidator" ForeColor="Red" ControlToValidate="emailTextBox" Display="Dynamic"></asp:RequiredFieldValidator><asp:RegularExpressionValidator ID="emailRegularExpressionValidator" runat="server" ErrorMessage="Enter the email in a valid format please" Display="Dynamic" ForeColor="Red" ControlToValidate="emailTextBox"  ValidationExpression="^\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$"></asp:RegularExpressionValidator></td>
                    </tr>
                    <tr>
                        <td>&nbsp;Phone</td>
                        <td>
                            <asp:TextBox runat="server" ID="phoneTextBox" TextMode="Phone"></asp:TextBox>&nbsp;(555) 555-1234<asp:RequiredFieldValidator runat="server" ErrorMessage="Enter the phone number please" ID="phoneRequiredFieldValidator" ControlToValidate="phoneTextBox" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator><asp:RegularExpressionValidator runat="server" ErrorMessage="Enter the phone number in a valid format." ID="phoneRegularExpressionValidator" Display="Dynamic" ControlToValidate="phoneTextBox" ValidationExpression="^\(?\d{3}\)?[-.\s]?\d{3}[-.\s]?\d{4}$" ForeColor="Red"></asp:RegularExpressionValidator></td>
                    </tr>
                </table>
            <p>
                <asp:Button runat="server" Text="Button" ID="submitButton"></asp:Button>&nbsp;</p>
            <p>
                <asp:Label runat="server" Text="Label" ID="outputLabel" Visible="False"></asp:Label>&nbsp;</p>
        </div>
    </form>
</body>
</html>
