<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="ShowComplaints.aspx.cs" Inherits="Admin_ShowComplaints" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" Runat="Server">
<center>
<div class="Menu">
    <span style="color:white; font-size:large; font-weight:bold;">&nbsp;&nbsp; Complaints</span>
    </div>
<form runat="server">
    <asp:FormView ID="FormView1" runat="server" AllowPaging="True" 
        DataKeyNames="rid" DataSourceID="SqlDataSource1" BackColor="White" 
        BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
        ForeColor="Purple" GridLines="Horizontal" Width="100%">
        <EditItemTemplate>
            Report ID
            <asp:Label ID="ridLabel1" runat="server" Text='<%# Eval("rid") %>' />
            <br />
            User ID
            <asp:TextBox ID="uidTextBox" runat="server" Text='<%# Bind("uid") %>' />
            <br />
            Thread ID
            <asp:TextBox ID="tidTextBox" runat="server" Text='<%# Bind("tid") %>' />
            <br />
            Reason
            <asp:TextBox ID="reasonTextBox" runat="server" Text='<%# Bind("reason") %>' />
            <br />
            Comments
            <asp:TextBox ID="commentsTextBox" runat="server" 
                Text='<%# Bind("comments") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <EditRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
        <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
        <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
        <InsertItemTemplate>
            User ID
            <asp:TextBox ID="uidTextBox" runat="server" Text='<%# Bind("uid") %>' />
            <br />
            Thread ID
            <asp:TextBox ID="tidTextBox" runat="server" Text='<%# Bind("tid") %>' />
            <br />
            Reason
            <asp:TextBox ID="reasonTextBox" runat="server" Text='<%# Bind("reason") %>' />
            <br />
            Comments
            <asp:TextBox ID="commentsTextBox" runat="server" 
                Text='<%# Bind("comments") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            Reason ID:&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="ridLabel" runat="server" Text='<%# Eval("rid") %>' />
            <br />
            User ID:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="uidLabel" runat="server" Text='<%# Bind("uid") %>' />
            <br />
            Thread ID:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="tidLabel" runat="server" Text='<%# Bind("tid") %>' />
            <br />
            Reason:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="reasonLabel" runat="server" Text='<%# Bind("reason") %>' />
            <br />
            Comments:&nbsp;&nbsp;&nbsp;
            <asp:Label ID="commentsLabel" runat="server" Text='<%# Bind("comments") %>' />
            <br />

           
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" 
                CommandName="Delete" Text="Delete" ForeColor="Red" />
           

        </ItemTemplate>
        <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
    </asp:FormView>
    </center>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ForumsConnectionString %>" 
        DeleteCommand="DELETE FROM [Report] WHERE [rid] = @rid" 
        InsertCommand="INSERT INTO [Report] ([uid], [tid], [reason], [comments]) VALUES (@uid, @tid, @reason, @comments)" 
        SelectCommand="SELECT * FROM [Report] ORDER BY [rid] DESC" 
        
        UpdateCommand="UPDATE [Report] SET [uid] = @uid, [tid] = @tid, [reason] = @reason, [comments] = @comments WHERE [rid] = @rid">
        <DeleteParameters>
            <asp:Parameter Name="rid" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="uid" Type="Int32" />
            <asp:Parameter Name="tid" Type="Int32" />
            <asp:Parameter Name="reason" Type="String" />
            <asp:Parameter Name="comments" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="uid" Type="Int32" />
            <asp:Parameter Name="tid" Type="Int32" />
            <asp:Parameter Name="reason" Type="String" />
            <asp:Parameter Name="comments" Type="String" />
            <asp:Parameter Name="rid" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    </form>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Footer" Runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="AfterBody" Runat="Server">
</asp:Content>

