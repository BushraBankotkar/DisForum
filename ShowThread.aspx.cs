using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class ShowThread : System.Web.UI.Page
{


    SqlCommand cmd, cmd1, cmd2, cmd3,cmd4;
    string Lblresult1, Lblresult;
    SqlConnection con;
    int n;
    
    protected void Page_Load(object sender, EventArgs e)
    {

        User u = (User)Session["user"];
        Lblresult1 = u.Id;
        Label Lbl = (Label)FormView1.FindControl("tid");
        Lblresult = Lbl.Text;
        likeLabel.Text = "0";
        con = new SqlConnection(Database.ConnectionString);
        con.Open();
        cmd2 = new SqlCommand("select sum(likes) from Likes where tid='"+Lblresult+"'"+"group by tid",con);
        SqlDataReader dr =  cmd2.ExecuteReader();
        string count="";
        if(dr.Read())
        {
            count = dr.GetInt32(0).ToString();
            likeLabel.Text = count+" likes";
        }
        
        else
        {
            likeLabel.Text = "0 like";
        }
        con.Close();
        con.Open();
        cmd4 = new SqlCommand("select sum(dislikes) from Dislikes where tid='" + Lblresult + "'" + "group by tid", con);
        SqlDataReader dr1 = cmd4.ExecuteReader();
        string count1 = "";
        if (dr1.Read())
        {
            count1 = dr1.GetInt32(0).ToString();
            dislikeLabel.Text = count1 + " dislikes";
        }

        else
        {
            dislikeLabel.Text = "0 dislike";
        }
        con.Close();
    }
   
    protected void btnReply_Click(object sender, EventArgs e)
    {
        User u = (User)Session["user"];
        string msg = ThreadDAL.AddReply(u.Id, Request.QueryString["tid"].ToString(), txtReply.Text);
        if (msg == null)
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Reply added')", true);
            DataList1.DataBind();
            txtReply.Text = "";
        }
        else
        {
            lblMsg.Text = "Sorry! Error -->" + msg;
        }
     

    }

    protected void btnLike_Click(object sender, EventArgs e)
    {
        
            con = new SqlConnection(Database.ConnectionString);
            con.Open();
            Label Lbl = (Label)FormView1.FindControl("tid");
            string Lblresult = Lbl.Text;
            //Label Lbl1 = (Label)FormView1.FindControl("uid");

            cmd1 = new SqlCommand("select * from Likes where tid='" + Lblresult + "'and uid='" + Lblresult1 + "'", con);
            SqlDataReader dr = cmd1.ExecuteReader();

            if (dr.HasRows)
            {
                con.Close();
                con.Open();
                cmd3 = new SqlCommand("delete from likes where tid='" + Lblresult + "'and uid='" + Lblresult1 + "'", con);
                cmd3.ExecuteNonQuery();
                this.Page_Load(null, null);
               // ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('You unliked the post')", true);
                con.Close();
            }
           else
            {
                con.Close();
                con.Open();
                cmd = new SqlCommand("insert into Likes values('" + Lblresult1 + "','" + Lblresult + "',1)", con);
                cmd.ExecuteNonQuery();
               
                this.Page_Load(null, null);
                //ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('You liked the post')", true);
                FormView1.DataBind();

                con.Close();
                con.Open();
                cmd = new SqlCommand("select * from Dislikes where tid='" + Lblresult + "'and uid='" + Lblresult1 + "'", con);
                SqlDataReader d = cmd.ExecuteReader();
                if (d.HasRows)
                {
                    con.Close();
                    con.Open();
                    cmd3 = new SqlCommand("delete from Dislikes where tid='" + Lblresult + "'and uid='" + Lblresult1 + "'", con);
                    cmd3.ExecuteNonQuery();
                    this.Page_Load(null, null);
                    con.Close();
                }
            }
        
    }
    protected void dislike_Click(object sender, EventArgs e)
    {
        con = new SqlConnection(Database.ConnectionString);
        con.Open();
        Label Lbl = (Label)FormView1.FindControl("tid");
        string Lblresult = Lbl.Text;
        cmd1 = new SqlCommand("select * from Dislikes where tid='" + Lblresult + "'and uid='" + Lblresult1 + "'", con);
        SqlDataReader dr = cmd1.ExecuteReader();
        if (dr.HasRows)
        {
            con.Close();
            con.Open();
            cmd3 = new SqlCommand("delete from Dislikes where tid='" + Lblresult + "'and uid='" + Lblresult1 + "'", con);
            cmd3.ExecuteNonQuery();
            this.Page_Load(null, null);
            con.Close();
        }
        else if(!dr.HasRows)
        {
            con.Close();
            con.Open();
            cmd = new SqlCommand("insert into Dislikes values('" + Lblresult1 + "','" + Lblresult + "',1)", con);
            cmd.ExecuteNonQuery();
            this.Page_Load(null, null);
            FormView1.DataBind();
            con.Close();
            con.Open();
            cmd = new SqlCommand("select * from Likes where tid='" + Lblresult + "'and uid='" + Lblresult1 + "'", con);
            SqlDataReader d = cmd.ExecuteReader();
            if (d.HasRows)
            {
                con.Close();
                con.Open();
                cmd3 = new SqlCommand("delete from Likes where tid='" + Lblresult + "'and uid='" + Lblresult1 + "'", con);
                cmd3.ExecuteNonQuery();
                this.Page_Load(null, null);
                con.Close();
            }
        }
    }
    protected void Report_Click(object sender, EventArgs e)
    {
        Response.Redirect("Report.aspx");
    }

}

