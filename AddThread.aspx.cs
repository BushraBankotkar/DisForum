using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class AddThread : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnAdd_Click(object sender, EventArgs e)
    {
        User u = (User)Session["user"];
        string msg = ThreadDAL.AddNewThread(u.Id, ddlSubjects.SelectedItem.Value, titleText.Text, txtText.Text);
        if (msg == null)
            lblMsg.Text = "Thread has been added sucessfully!";
        else
            lblMsg.Text = "Sorry! Error -->" + msg;
    }
}