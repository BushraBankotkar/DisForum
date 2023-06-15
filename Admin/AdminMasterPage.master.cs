using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        hello.Text = Session["id"].ToString(); 
    }

    protected string RenderMenu()
    {
        var result = new StringBuilder();
        RenderMenuItem("Home", "AdminHome.aspx", result);
        RenderMenuItem("Users", "Users.aspx", result);
        RenderMenuItem("Category", "AddCategory.aspx", result);
        RenderMenuItem("Complaints", "ShowComplaints.aspx", result);
        RenderMenuItem("Threads", "Threads.aspx", result);
        RenderMenuItem("Comments", "Comments.aspx", result);
        RenderMenuItem("Messages", "Messages.aspx", result);
        RenderMenuItem("Logout", "AdminLogin.aspx", result);
        return result.ToString();
    }

    void RenderMenuItem(string title, string address, StringBuilder output)
    {
        output.AppendFormat("<li><a href=\"{0}\" ", address);

        var requestUrl = HttpContext.Current.Request.Url;        
        if (requestUrl.Segments[requestUrl.Segments.Length - 1].Equals(address, StringComparison.OrdinalIgnoreCase)) // If the requested address is this menu item.
            output.Append("class=\"ActiveMenuButton\"");
        else
            output.Append("class=\"MenuButton\"");

        output.AppendFormat("><span>{0}</span></a></li>|", title);
    }

    protected void OnMenuItemClick(object sender, MenuEventArgs e)
    {
        if(e.Item.Text == "Logout")
        {
            FormsAuthentication.SignOut();
            Session.Abandon();
        }
    }
}