using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnLogin_Click(object sender, EventArgs e)
    {
        User u = UserDAL.Login(txtEmail.Text, txtPwd.Text);
        if (u == null)
            lblMsg.Text = "Sorry! Invalid email/password!";
        else
        {
            Session.Add("user", u);
            Session.Add("uid", u.Id);
            FormsAuthentication.RedirectFromLoginPage(txtEmail.Text, false);
        }
    }
}