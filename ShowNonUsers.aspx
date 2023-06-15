<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ShowNonUsers.aspx.cs" Inherits="ShowNonUsers" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" Runat="Server">
<h2>
        User Profile
    </h2>
    <form runat="server">
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="uid" DataSourceID="SqlDataSource1">
        <ItemTemplate>
            <table>
                <tr>
                    <td>
                        <img class="nonusers" alt="Image" width="50px" height="50px" src='images/<%# Eval("uid")%>.jpg' />
                    </td>
                    <td>
                        <table cellpadding="5" border="2">
                            <tr>
                                <td>
                                    Email Address : </td>
                                <td>
                                    <%# Eval("email") %>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Fullname :
                                </td>
                                <td>
                                    <%# Eval("fname") %>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Joined On :
                                </td>
                                <td>
                                    <%# Eval("dj") %>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Occupation :</td>
                                <td>
                                    <%# Eval("occupation") %>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:FormView>
    </form>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ForumsConnectionString %>"
        SelectCommand="SELECT * FROM [users] WHERE ([uid] = @uid)">
        <SelectParameters>
            <asp:QueryStringParameter Name="uid" QueryStringField="uid" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Footer" Runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="AfterBody" Runat="Server">
</asp:Content>

