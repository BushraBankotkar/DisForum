<%@ Page Title="" Language="C#" MasterPageFile="~/CustomerMasterPage.master" AutoEventWireup="true" CodeFile="MyComments.aspx.cs" Inherits="MyComments" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<center><h2>My Comments</h2></center>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="cid" DataSourceID="SqlDataSource1" Width="100%" 
        AllowPaging="True" OnRowDeleting="GridView1_RowDeleting" OnPageIndexChanging="GridView1_PageIndexChanging" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating">
        <Columns>
            <asp:BoundField DataField="cid" HeaderText="ID" ReadOnly="True" 
                SortExpression="cid">
            <HeaderStyle BackColor="Black" ForeColor="White" />
            </asp:BoundField>
            <asp:BoundField DataField="tid" HeaderText="tid" SortExpression="tid" 
                Visible="false" >
            <HeaderStyle BackColor="Black" ForeColor="White" />
            </asp:BoundField>
            <asp:BoundField DataField="comm" HeaderText="Comments" SortExpression="comm" >
            <HeaderStyle BackColor="Black" ForeColor="White" Width="60%"/>
            </asp:BoundField>
            <asp:BoundField DataField="dp" HeaderText="dp" SortExpression="dp" Visible="false" />
            <asp:BoundField DataField="uid" HeaderText="uid" SortExpression="uid" Visible="false"/>
            <asp:CommandField ShowDeleteButton="true" />
            <asp:CommandField ShowEditButton="true" />  
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ForumsConnectionString %>" 
        SelectCommand="SELECT * FROM [comments] WHERE ([uid] = @uid)" 
        DeleteCommand="Delete from [comments] where ([cid]=@cid)" 
        UpdateCommand="UPDATE [comments]
SET [comm] = @comm
WHERE [cid]=@cid">
        <DeleteParameters>
            <asp:Parameter Name="cid" />
        </DeleteParameters>
        <SelectParameters>
            <asp:SessionParameter Name="uid" SessionField="uid" Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="comm" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>


