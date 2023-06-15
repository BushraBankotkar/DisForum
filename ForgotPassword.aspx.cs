using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ForgotPassword : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        string msg = UserDAL.ForgotPassword(txtEmail.Text);
        if (msg == null)
            lblMsg.Text = "A mail has been sent with password. Please use password to login again!";
        else
            lblMsg.Text = "Error -->" + msg;
    }
}