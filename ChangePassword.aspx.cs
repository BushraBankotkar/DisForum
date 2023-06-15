using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ChangePasswordaspx : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnChange_Click(object sender, EventArgs e)
    {
        
        User u = (User)Session["user"];
        string msg = UserDAL.ChangePassword(u.Id,
              txtOldpwd.Text,
              txtNewpwd.Text);
        if (msg == null)
            lblMsg.Text = "Password Changed Sucessfully!";
        else
            lblMsg.Text = "Error -->" + msg;
    }
}