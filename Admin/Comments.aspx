<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="Comments.aspx.cs" Inherits="Admin_Comments" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" Runat="Server">
<form id="Form1" runat="server">
<div class="Menu">
    <span style="color:white; font-size:large; font-weight:bold;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Comments</span>
    </div>
<asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
    AutoGenerateColumns="False" DataKeyNames="cid" 
    DataSourceID="SqlDataSource1" PageSize="15" Width="100%" AllowSorting="True">
    <Columns>
        <asp:CommandField ShowEditButton="True" />
        <asp:BoundField DataField="cid" HeaderText="Comment ID" ReadOnly="True" 
            SortExpression="cid" />
        <asp:BoundField DataField="tid" HeaderText="Thread ID" SortExpression="tid" />
        <asp:BoundField DataField="comm" HeaderText="Comments" SortExpression="comm" />
        <asp:BoundField DataField="dp" HeaderText="Posted On" SortExpression="dp" />
        <asp:BoundField DataField="uid" HeaderText="User ID" SortExpression="uid" />
    </Columns>
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="<%$ ConnectionStrings:ForumsConnectionString %>" 
    SelectCommand="SELECT * FROM [comments]" 
    DeleteCommand="DELETE FROM [comments] WHERE [cid] = @cid" 
    InsertCommand="INSERT INTO [comments] ([cid], [tid], [comm], [dp], [uid]) VALUES (@cid, @tid, @comm, @dp, @uid)" 
    UpdateCommand="UPDATE [comments] SET [tid] = @tid, [comm] = @comm, [dp] = @dp, [uid] = @uid WHERE [cid] = @cid">
    <DeleteParameters>
        <asp:Parameter Name="cid" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="cid" Type="Int32" />
        <asp:Parameter Name="tid" Type="Int32" />
        <asp:Parameter Name="comm" Type="String" />
        <asp:Parameter Name="dp" Type="DateTime" />
        <asp:Parameter Name="uid" Type="Int32" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="tid" Type="Int32" />
        <asp:Parameter Name="comm" Type="String" />
        <asp:Parameter Name="dp" Type="DateTime" />
        <asp:Parameter Name="uid" Type="Int32" />
        <asp:Parameter Name="cid" Type="Int32" />
    </UpdateParameters>
</asp:SqlDataSource>
</form>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Footer" Runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="AfterBody" Runat="Server">
</asp:Content>

