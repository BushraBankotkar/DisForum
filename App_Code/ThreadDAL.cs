using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;
public class ThreadDAL
{
	
        public static string AddNewThread(string uid, string catcode, string title, string text)
    {
        SqlConnection con = new SqlConnection(Database.ConnectionString);
        try
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("AddNewThread", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@uid", SqlDbType.Int).Value = uid;
            cmd.Parameters.Add("@catcode", SqlDbType.Int).Value = catcode;
            cmd.Parameters.Add("@title", SqlDbType.Text).Value=title;
            cmd.Parameters.Add("@text", SqlDbType.Text).Value = text;
            cmd.ExecuteNonQuery();
            return null;
        }
        catch (Exception ex)
        {
            return ex.Message;
        }
        finally
        {
            if (con.State == ConnectionState.Open)
                con.Close();
        }
    }
        public static string AddReply(string uid, string tid, string comm)
        {
            SqlConnection con = new SqlConnection(Database.ConnectionString);
            try
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("AddReply", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@uid", SqlDbType.Int).Value = uid;
                cmd.Parameters.Add("@tid", SqlDbType.Int).Value = tid;
                cmd.Parameters.Add("@comm", SqlDbType.Text).Value = comm;
                cmd.ExecuteNonQuery();
                return null;
            }
            catch (Exception ex)
            {
                return ex.Message;
            }
            finally
            {
                if (con.State == ConnectionState.Open)
                    con.Close();
            }
        }
        public static DataSet Search(string cond)
        {
            SqlConnection con = new SqlConnection(Database.ConnectionString);
            try
            {
                SqlDataAdapter da = new SqlDataAdapter(" SELECT t.tid, u.uid, u.fname, s.catname, CONVERT(varchar(30), t.title) AS title, t.dp, dbo.GetReplyCount(t.tid) AS noreplys FROM Threads AS t INNER JOIN  users AS u ON t.uid = u.uid INNER JOIN  Category AS s ON t.catcode = s.catcode WHERE (t.sno = 1) AND " + cond, con);
                DataSet ds = new DataSet();
                da.Fill(ds, "Threads");
                return ds;
            }
            catch (Exception ex)
            {
                return null;
            }
        }
}