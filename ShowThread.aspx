<%@ Page Title="" Language="C#" MasterPageFile="~/CustomerMasterPage.master" AutoEventWireup="true" CodeFile="ShowThread.aspx.cs" Inherits="ShowThread"%>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>

        <asp:FormView ID="FormView1" runat="server" DataKeyNames="tid" 
            DataSourceID="SqlDataSource1" Width="100%">
            <ItemTemplate>
                
                <h2><%# Eval("title") %></h2>
                <h4 style="text-align:right;">Author : <%# Eval("fname")%>  <br />Posted On : <%# Eval("dp") %></h4>
                
                <pre><%# Server.HtmlEncode(Eval("text").ToString()) %></pre>
                <br />
                
                <asp:Label runat="server" ID="tid" text='<%# Eval("tid")%>' Visible="false"></asp:Label>
                <p align="right"><a href='Report.aspx?tid=<%#Eval("tid")%>'> Report </a></p>
                <p align="left"><asp:ImageButton runat="server" ID="btnLike" Text="Like" onClick="btnLike_Click" ImageUrl="images/like.png" Height="30" Width="30"/>
                   &nbsp;&nbsp;&nbsp; &nbsp;<asp:ImageButton ID="dislike" runat="server" Text="Dislike" OnClick="dislike_Click" ImageUrl="images/dislike.png" Height="30" Width="30"/>
                </p>

            </ItemTemplate>
            
        </asp:FormView>
    
   &nbsp;<asp:Label runat="server" Text="Label" ID="likeLabel"></asp:Label>&nbsp;&nbsp;
   <asp:Label runat="server" Text="Label" ID="dislikeLabel"></asp:Label>
    </div>
    
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ForumsConnectionString %>"
            SelectCommand="select u.uid, tid, title,dp, text, fname from users u, Threads t
where u.uid = t.uid and tid = @tid">
            <SelectParameters>
                <asp:QueryStringParameter Name="tid" QueryStringField="tid" />
            </SelectParameters>
        </asp:SqlDataSource>

    

         <br />
    <br />
    <br />

    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource2"
        Width="100%" style="margin-right: 0px">
        <HeaderTemplate >
           <table border="1" width="100%">
        </HeaderTemplate>
        <ItemTemplate>
            <tr>
            
              <td width="25%" style="background-color:#c5d5cb; font-family:Cursive; text-align:center;">
                <asp:Image ID="MImageLabel" runat="server" Width="100px" Height="100px" ImageUrl='<%#Eval("profilePic")%>' />
                <br />
                <a href='displayuser.aspx?uid=<%#Eval("uid")%>'> <%#Eval("fname") %> </a>
                <br />
                
                <%#Eval("dp") %>
                <br />
               
                
              </td>
              <td style="border-top-style:dashed; border-bottom-style:dashed; padding-left:10px; padding-bottom:2px; padding-right:10px; padding-top:2px; max-width:30px; overflow:auto;">
               <pre style="font-family:Berlin Sans FB; max-width:30px;"><%# Server.HtmlEncode(Eval("comm").ToString())%> </pre>
                  <br>
               </br>
                  
              </td>
            <tr>
        </ItemTemplate>

        <FooterTemplate>
          </table>
        </FooterTemplate>
    </asp:DataList>

    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ForumsConnectionString %>"
        SelectCommand="GetCommentDetails" SelectCommandType="StoredProcedure">
        <SelectParameters>
            <asp:QueryStringParameter Name="tid" QueryStringField="tid" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />
         Reply To This Thread:<br />
    <asp:TextBox ID="txtReply" runat="server" Height="128px" TextMode="MultiLine" 
        Width="1140px" placeholder="Type a message here.."></asp:TextBox><br />
        
    <center><asp:Button ID="btnReply" runat="server" Text="Add Reply" 
        onclick="btnReply_Click" /><asp:Label ID="lblMsg" runat="server" ></asp:Label></center><br />

    <br />
    
        
</asp:Content>

