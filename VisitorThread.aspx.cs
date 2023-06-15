using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class VisitorThread : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSearch_Click(object sender, EventArgs e)
    {
        string cond = " 1 = 1 ";

        if (txtTitle.Text.Length > 0)
            cond += " and title like '%" + txtTitle.Text + "%'";

        if (txtAuthor.Text.Length > 0)
            cond += " and fname like '%" + txtAuthor.Text + "%'";

        if (txtFromDate.Text.Length > 0)
            cond += " and dp >='" + txtFromDate.Text + "'";

        if (txtToDate.Text.Length > 0)
            cond += " and dp <='" + txtToDate.Text + "'";

        // get data from database
        SqlConnection con = new SqlConnection(Database.ConnectionString);
        SqlDataAdapter da = new SqlDataAdapter("select u.uid, tid,title,fname,dp from users u, Threads b where u.uid = b.uid and " + cond, con);
        DataSet ds = new DataSet();
        da.Fill(ds, "Threads");

        GridView1.DataSource = ds.Tables[0];
        GridView1.DataBind();
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        this.btnSearch_Click(null,null);
    }
}