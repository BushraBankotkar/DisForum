<%@ Page Title="" Language="C#" MasterPageFile="~/CustomerMasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<center>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="catcode" DataSourceID="SqlDataSource1" Width="100%" 
        AllowPaging="True" PageSize="22" AllowSorting="True">
        <Columns>
            <asp:BoundField DataField="catcode" HeaderText="catcode" Visible="False" 
                ReadOnly="True" SortExpression="catcode" InsertVisible="False" />
            
            <asp:HyperLinkField DataNavigateUrlFields="catcode" DataNavigateUrlFormatString="SubjectThreads.aspx?catcode={0}"
                DataTextField="catname" HeaderText="Category" >
            <HeaderStyle BackColor="Black" ForeColor="White" />
            </asp:HyperLinkField>
            <asp:BoundField DataField="noOfThread" HeaderText="Number of Threads" 
                ReadOnly="True" SortExpression="noOfThread">
            <HeaderStyle BackColor="Black" ForeColor="White" />
            </asp:BoundField>
        </Columns>
    </asp:GridView>
    </center>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ForumsConnectionString %>" 
        SelectCommand="GetCategory" SelectCommandType="StoredProcedure">
        
        </asp:SqlDataSource>
</asp:Content>

