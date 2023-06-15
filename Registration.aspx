<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" CodeFile="Registration.aspx.cs" Inherits="Default" %>

<asp:Content ContentPlaceHolderID="Head" Runat="Server"></asp:Content>

<asp:Content ContentPlaceHolderID="Content" Runat="Server">

    <form runat="server">
    <div class="Block">
    <span class="BlockHeader">
    <span style="font-size:large;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    Registration
    </span>
    </span>
    </div>
    
    <font size="3px">
    &nbsp;
    <asp:Label ID="Label1" runat="server" Text="First Name"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox 
    ID="Fname" runat="server" Width="278px"></asp:TextBox>
    &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" 
    runat="server" ControlToValidate="Fname" 
    ErrorMessage="Please enter your first name." ForeColor="Red" ></asp:RequiredFieldValidator>
    <br />
    <br />
&nbsp; Last Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="Lname" runat="server" Width="278px"></asp:TextBox>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:RequiredFieldValidator 
    ID="RequiredFieldValidator2" runat="server" ControlToValidate="Lname" 
    ErrorMessage="Please enter your last name." ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
    <br />
&nbsp; Gender&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:RadioButton ID="M" runat="server" Text="Male" GroupName="gen" />
    &nbsp;&nbsp;&nbsp;
    <asp:RadioButton ID="F" runat="server" Text="Female" 
        GroupName="gen" />
    &nbsp;&nbsp;&nbsp;
    <asp:RadioButton ID="O" runat="server" Text="Other" 
        GroupName="gen" />
    &nbsp; <br />
    <br />
&nbsp; Address&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="Address" runat="server" Rows="5" TextMode="MultiLine" 
        Width="278px"></asp:TextBox>
    &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator4" 
    runat="server" ControlToValidate="Address" 
    ErrorMessage="Please enter your address." ForeColor="Red"></asp:RequiredFieldValidator>
    <br />
    <br />
&nbsp; Country&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:DropDownList 
    ID="Country" runat="server" Height="28px">
        <asp:ListItem>--select any one--</asp:ListItem>
        <asp:ListItem>India</asp:ListItem>
        <asp:ListItem>China</asp:ListItem>
        <asp:ListItem>USA</asp:ListItem>
        <asp:ListItem>Germany</asp:ListItem>
        <asp:ListItem>Japan</asp:ListItem>
        <asp:ListItem>UK</asp:ListItem>
        <asp:ListItem>Bhutan</asp:ListItem>
        <asp:ListItem>Indonesia</asp:ListItem>
        <asp:ListItem>Italy</asp:ListItem>
        <asp:ListItem>Sri Lanka</asp:ListItem>
        <asp:ListItem>Algeria</asp:ListItem>
    </asp:DropDownList>
    &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator5" 
    runat="server" ControlToValidate="Country" 
    ErrorMessage="Please select an option." ForeColor="Red" InitialValue="--select any one--" 
        Visible="True"></asp:RequiredFieldValidator>
    <br />
    <br />
&nbsp; Photo&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:FileUpload ID="FileUpload1" runat="server" Width="211px" />
    <br />
    <br />
&nbsp; Occupation&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="occ" runat="server" Width="276px"></asp:TextBox>
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
        ControlToValidate="occ" ErrorMessage="Please enter your occupation." 
        ForeColor="Red"></asp:RequiredFieldValidator>
    <br />
    <br />
&nbsp; Mobile Number&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
    <asp:TextBox ID="Mobile" runat="server" Width="278px"></asp:TextBox>
    &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator6" 
    runat="server" ControlToValidate="Mobile" 
    ErrorMessage="Please enter your mobile number." ForeColor="Red"></asp:RequiredFieldValidator>
    <br />
    <br />
&nbsp; Email Address&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="Email" runat="server" Width="278px"></asp:TextBox>
    &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator1" 
    runat="server" ControlToValidate="Email" 
    ErrorMessage="Please enter a correct email address." ForeColor="Red" 
    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
<asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
    ControlToValidate="Email" ErrorMessage="Please enter your email address." 
    ForeColor="Red"></asp:RequiredFieldValidator>
    <br />
    <br />
&nbsp; Password&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="Password" runat="server" Width="278px" TextMode="Password"></asp:TextBox>
    &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator8" 
        runat="server" ControlToValidate="Password" 
        ErrorMessage="Please enter the password." ForeColor="Red"></asp:RequiredFieldValidator>
    <br />
    <br />
&nbsp; Confirm Password&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="CPassword" runat="server" Width="278px" TextMode="Password"></asp:TextBox>
    &nbsp;<asp:CompareValidator ID="CompareValidator1" runat="server" 
    ControlToCompare="Password" ControlToValidate="CPassword" 
    ErrorMessage="Please check your password." ForeColor="Red"></asp:CompareValidator>
    <br />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </font>

    <span class="ButtonInput"><span><asp:Button runat="server" Text="Register" 
        ID="Register" onclick="Register_Click" /></span></span>
    <span class="ButtonInput"><span>
    <asp:Button runat="server" Text="Reset" 
        ID="Reset" OnClientClick="this.form.reset();return
                false;" CausesValidation="false"/></span></span>
    </form>
</asp:Content>

<asp:Content ContentPlaceHolderID="Footer" Runat="Server"></asp:Content>

<asp:Content ContentPlaceHolderID="AfterBody" Runat="Server"></asp:Content>