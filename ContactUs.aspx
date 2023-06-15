<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ContactUs.aspx.cs" Inherits="ContactUs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Head" Runat="Server">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" Runat="Server">
    <span class="BlockHeader">
        <span style="font-size:large;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Contact Us
    </span>
    </span>
    <div class="ArticleBorder">
    <div class="ArticleBL">

    </div>
    <div class="Article">
    <form runat="server">
    <table width="100%">
    <tr>
    <td>
    <asp:Label ID="lblName" runat="server" Text="Name: "></asp:Label>
    </td>
    <td>
    <asp:TextBox ID="txtName" runat="server" Width="500px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtName" ForeColor="Red" ErrorMessage="Please enter a name" Text="*"></asp:RequiredFieldValidator>
    </td>
    </tr>
    <tr>
    <td>
    <asp:Label ID="lblEmail" runat="server" Text="Email ID: "></asp:Label>
    </td>
    <td>
    <asp:TextBox ID="txtEmail" runat="server" Width="500px"/>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtEmail" ForeColor="Red" ErrorMessage="Please enter an email address" Text="*"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Please enter a valid email address" ControlToValidate="txtEmail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Text="*" ForeColor="red"></asp:RegularExpressionValidator>
    </td>
    </tr>
    <tr>
    <td>
    <asp:Label ID="lblMessage" runat="server" Text="Message: "></asp:Label>
    </td>
    <td>
    <asp:TextBox ID="txtMessage" runat="server" Width="500px" TextMode="MultiLine" 
            Rows="10"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtMessage" ForeColor="Red" ErrorMessage="Please enter a message" Text="*"></asp:RequiredFieldValidator>
    </td>
    </tr>
    <tr>
    <td colspan="2">
        <center><asp:ImageButton ID="btnSubmit" runat="server" height="40" 
                Width="100" ImageUrl="images/button_submit.png" onclick="btnSubmit_Click"/></center>
    </td>
    </tr>
    <tr>
                  <td colspan="2">
                     <asp:ValidationSummary id="valSum" 
                          DisplayMode="BulletList"
                          EnableClientScript="true"
                          HeaderText="You must enter a value in the following fields:"
                          runat="server"/>
                  </td>
               </tr>
    </table>
    </form>
    </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Footer" Runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="AfterBody" Runat="Server">
</asp:Content>

