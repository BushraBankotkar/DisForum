using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Admin_AddCategory : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void AddCategory_Click(object sender, ImageClickEventArgs e)
    {
        SqlConnection con = new SqlConnection(Database.ConnectionString);
        try
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("Insert into Category(catname, nothreads) values(@cname, @nothreads)",con);
            cmd.Parameters.AddWithValue("@cname", addCat.Text);
            cmd.Parameters.AddWithValue("@nothreads", SqlDbType.Int).Value=0;
            cmd.ExecuteNonQuery();
            Label2.Visible = true;
        }
        catch(Exception ex)
        {
            Console.WriteLine(ex.Message);
            Label2.Text = "Error inserting record!!";
            Label2.ForeColor = System.Drawing.Color.Red;
        }
    }
}