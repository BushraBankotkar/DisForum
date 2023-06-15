<%@ Page Title="" Language="C#" MasterPageFile="~/CustomerMasterPage.master" AutoEventWireup="true" CodeFile="displayuser.aspx.cs" Inherits="displayuser" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<h2>
        User Profile
    </h2>
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="uid" DataSourceID="SqlDataSource1">
        <ItemTemplate>
            <table>
                <tr>
                    <td>
                        <img alt="Image" width="150px" height="150px" src='images/<%# Eval("uid")%>.jpg' />
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ForumsConnectionString %>"
        SelectCommand="SELECT * FROM [users] WHERE ([uid] = @uid)">
        <SelectParameters>
            <asp:QueryStringParameter Name="uid" QueryStringField="uid" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>

