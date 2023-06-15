<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="Threads.aspx.cs" Inherits="Threads" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" Runat="Server">
<form runat="server">

<div class="Menu">
    <span style="color:white; font-size:large; font-weight:bold;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Threads</span>
    </div>
    <asp:GridView ID="GridView1" runat="server" 
        AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="tid,sno" 
        DataSourceID="SqlDataSource1" Width="100%" PageSize="15">
        <Columns>
            <asp:CommandField ShowEditButton="True" />
            <asp:BoundField DataField="tid" HeaderText="Thread ID" ReadOnly="True" 
                SortExpression="tid" />
            <asp:BoundField DataField="sno" HeaderText="sno" ReadOnly="True" 
                SortExpression="sno" Visible="false"/>
            <asp:BoundField DataField="title" HeaderText="Title" SortExpression="title" />
            <asp:BoundField DataField="text" HeaderText="Text" SortExpression="text" />
            <asp:BoundField DataField="uid" HeaderText="User ID" SortExpression="uid" />
            <asp:BoundField DataField="dp" HeaderText="Posted On" SortExpression="dp" />
            <asp:BoundField DataField="catcode" HeaderText="Category code" 
                SortExpression="catcode" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ForumsConnectionString %>" 
        DeleteCommand="DELETE FROM [Threads] WHERE [tid] = @tid AND [sno] = @sno" 
        InsertCommand="INSERT INTO [Threads] ([tid], [sno], [title], [text], [uid], [dp], [catcode]) VALUES (@tid, @sno, @title, @text, @uid, @dp, @catcode)" 
        SelectCommand="SELECT * FROM [Threads]" 
        UpdateCommand="UPDATE [Threads] SET [title] = @title, [text] = @text, [uid] = @uid, [dp] = @dp, [catcode] = @catcode WHERE [tid] = @tid AND [sno] = @sno">
        <DeleteParameters>
            <asp:Parameter Name="tid" Type="Int32" />
            <asp:Parameter Name="sno" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="tid" Type="Int32" />
            <asp:Parameter Name="sno" Type="Int32" />
            <asp:Parameter Name="title" Type="String" />
            <asp:Parameter Name="text" Type="String" />
            <asp:Parameter Name="uid" Type="Int32" />
            <asp:Parameter Name="dp" Type="DateTime" />
            <asp:Parameter Name="catcode" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="title" Type="String" />
            <asp:Parameter Name="text" Type="String" />
            <asp:Parameter Name="uid" Type="Int32" />
            <asp:Parameter Name="dp" Type="DateTime" />
            <asp:Parameter Name="catcode" Type="Int32" />
            <asp:Parameter Name="tid" Type="Int32" />
            <asp:Parameter Name="sno" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    </form>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Footer" Runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="AfterBody" Runat="Server">
</asp:Content>

