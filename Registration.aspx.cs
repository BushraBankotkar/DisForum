using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default : System.Web.UI.Page 
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Register_Click(object sender, EventArgs e)
    {
        string gend="";
        if(M.Checked)
        {
            gend = M.Text;
        }
        else if (F.Checked)
        {
            gend = F.Text;
        }
        else if(O.Checked)
        {
            gend = O.Text;
        }

            string str = FileUpload1.FileName;
            FileUpload1.PostedFile.SaveAs(Server.MapPath("~/uploads/" + str));
            string images = "~/uploads/" + str.ToString();
           

        bool done;

        done = UserDAL.Register(Fname.Text, Lname.Text, gend, Address.Text, Country.SelectedItem.Text, occ.Text, Mobile.Text, Email.Text, Password.Text, images);
        if (done)
            Response.Redirect("Login.aspx");
        else
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Registration failed')", true);
    }
}