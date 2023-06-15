using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class Report : System.Web.UI.Page
{
    
    SqlConnection con = new SqlConnection(Database.ConnectionString);
    SqlCommand cmd,cmd1;
    protected void Page_Load(object sender, EventArgs e)
    {
        Label lbl = (Label)FormView1.FindControl("tid");
        string lblresult = lbl.Text;
        Label1.Text = lblresult;
    }
    protected void ReportBtn_Click(object sender, EventArgs e)
    {
        User u = (User)Session["user"];
        try
        {
            con.Open();

            cmd1 = new SqlCommand("select * from Report where tid='"+Label1.Text+"'and uid='"+u.Id+"'",con);
            SqlDataReader dr = cmd1.ExecuteReader();
            if (dr.HasRows)
            {
               
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('You already reported this thread. Thank you')", true);
                
            }
            else
            {
                con.Close();
                con.Open();
                cmd = new SqlCommand("Insert into Report values('" + u.Id + "','" + Label1.Text + "','" + reason.Text + "','" + comment.Text + "')", con);
                cmd.ExecuteNonQuery();
                
            }
            con.Close();
        }
        catch(Exception ex)
        {
            Console.WriteLine(ex.Message);
        }
    }
}