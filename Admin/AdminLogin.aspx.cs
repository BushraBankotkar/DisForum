using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class AdminLogin : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnLogin_Click(object sender, EventArgs e)
    {
        con = new SqlConnection(@"Data Source=LAPTOP-39KJ737P;Initial Catalog=DForum;User ID=bushra;Password=bushra");
        
        cmd = new SqlCommand("LogAdmin",con);
        cmd.CommandType = CommandType.StoredProcedure;
        SqlParameter p1 = new SqlParameter("username", txtUname.Text);
        SqlParameter p2 = new SqlParameter("password", txtAPwd.Text);
        cmd.Parameters.Add(p1);
        cmd.Parameters.Add(p2);
     con.Open();
        SqlDataReader rd = cmd.ExecuteReader();
        if (rd.HasRows)
        {
            rd.Read();
            Session["id"] = txtUname.Text; 
            Response.Redirect("AdminHome.aspx");
            Session.RemoveAll();
        }
        else
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Login failed')", true);
        }  
    }
}