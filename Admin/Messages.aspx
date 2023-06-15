<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="Messages.aspx.cs" Inherits="Admin_Messages" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" Runat="Server">
<form runat="server">
<div class="Menu">
    <span style="color:white; font-size:large; font-weight:bold;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Messages</span>
    </div>
    
    <asp:GridView ID="GridView1" runat="server" Width="100%" 
        AutoGenerateColumns="False" DataKeyNames="con_id" 
        DataSourceID="SqlDataSource1" AllowPaging="True" AllowSorting="True">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" />
            <asp:BoundField DataField="con_id" HeaderText="ID" InsertVisible="False" 
                ReadOnly="True" SortExpression="con_id" />
            <asp:BoundField DataField="emailID" HeaderText="Email ID" 
                SortExpression="emailID" />
            <asp:BoundField DataField="message" HeaderText="Message" 
                SortExpression="message" />
            <asp:BoundField DataField="name" HeaderText="Name" SortExpression="name" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ForumsConnectionString %>" 
        SelectCommand="SELECT * FROM [Contact]" 
        DeleteCommand="DELETE FROM [Contact] WHERE [con_id] = @con_id" 
        InsertCommand="INSERT INTO [Contact] ([emailID], [message], [name]) VALUES (@emailID, @message, @name)" 
        UpdateCommand="UPDATE [Contact] SET [emailID] = @emailID, [message] = @message, [name] = @name WHERE [con_id] = @con_id">
        <DeleteParameters>
            <asp:Parameter Name="con_id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="emailID" Type="String" />
            <asp:Parameter Name="message" Type="String" />
            <asp:Parameter Name="name" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="emailID" Type="String" />
            <asp:Parameter Name="message" Type="String" />
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="con_id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
        </form>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Footer" Runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="AfterBody" Runat="Server">
</asp:Content>

