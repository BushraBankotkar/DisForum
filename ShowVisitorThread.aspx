<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ShowVisitorThread.aspx.cs" Inherits="ShowVisitorThread" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" Runat="Server">
<form id="form1" runat="server">
    <div>
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="tid" DataSourceID="SqlDataSource1">
            <ItemTemplate>
                <h2><%# Eval("title") %></h2>
                <h4>Author : <%# Eval("fname")%>  <br />Posted On : <%# Eval("dp") %></h4>
                
               <pre> <%# Server.HtmlEncode(Eval("text").ToString()) %></pre>
            </ItemTemplate>
        </asp:FormView>
    
    </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ForumsConnectionString %>"
            SelectCommand="select tid, title,dp, text, fname from users u, threads b
where u.uid = b.uid and tid = @tid">
            <SelectParameters>
                <asp:QueryStringParameter Name="tid" QueryStringField="tid" DefaultValue="" />
            </SelectParameters>
        </asp:SqlDataSource>
        <p />
        <a href="login.aspx">Go Back</a>
        
        
    </form>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Footer" Runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="AfterBody" Runat="Server">
</asp:Content>

