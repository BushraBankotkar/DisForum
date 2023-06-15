using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ChangeProfile : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            User u = (User)Session["user"];
            txtFname.Text = u.Fname;
            txtLname.Text = u.Lname;
            txtAddress.Text = u.Address;
            txtOccup.Text = u.Occupation;
            txtMobile.Text = u.Mobile;
        }
    }
    protected void btnChange_Click(object sender, EventArgs e)
    {
        User u = (User)Session["user"];
        string str = FileUpload1.FileName;
        FileUpload1.PostedFile.SaveAs(Server.MapPath("~/uploads/" + str));
        string images = "~/uploads/" + str.ToString();
        string msg = UserDAL.ChangeProfile(u.Id, txtFname.Text, txtLname.Text, txtAddress.Text, txtOccup.Text, txtMobile.Text,images);
        if (msg == null)   // success
        {
            // change object in memory
            u.Occupation = txtOccup.Text;
            u.Fname = txtFname.Text;
            u.Lname = txtLname.Text;
            u.Address = txtAddress.Text;
            u.Mobile = txtMobile.Text;

            lblMsg.Text = "Changed Profile Successfully!";
        }
        else
            lblMsg.Text = "Error -->" + msg;
       
    }
}