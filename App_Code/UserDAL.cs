using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Net.Mail;
public class UserDAL
{
	public UserDAL()
	{
		
	}
    public static bool Register(string fname, string lname, string gender, string address, string country, string occupation, string mobile, string email, string password, string profilePic)
    {
        SqlConnection con = new SqlConnection(Database.ConnectionString);
        try
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("RegisterUser", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@fname", SqlDbType.VarChar, 50).Value = fname;
            cmd.Parameters.Add("@lname", SqlDbType.VarChar, 50).Value = lname;
            cmd.Parameters.Add("@gender", SqlDbType.VarChar, 50).Value = gender;
            cmd.Parameters.Add("@address", SqlDbType.VarChar, 50).Value = address;
            cmd.Parameters.Add("@country", SqlDbType.VarChar, 50).Value = country;
            cmd.Parameters.Add("@occupation", SqlDbType.VarChar, 50).Value = occupation;
            cmd.Parameters.Add("@mobile", SqlDbType.VarChar, 50).Value = mobile;
            cmd.Parameters.Add("@email", SqlDbType.VarChar, 50).Value = email;
            cmd.Parameters.Add("@password", SqlDbType.VarChar, 50).Value = password;
            cmd.Parameters.Add("profilePic", SqlDbType.VarChar, 50).Value=profilePic;
            cmd.ExecuteNonQuery();
            return true;
        }
        catch (Exception ex)
        {
            Console.WriteLine(ex.Message);
            return false;
        }
        finally
        {
            if (con.State == ConnectionState.Open)
                con.Close();
        }
    }
    public static User Login(string email, string password)
    {
        SqlConnection con = new SqlConnection(Database.ConnectionString);
        try
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select uid, fname, lname, gender, address, country, occupation, mobile, profilePic from users where email = @email and password = @password", con);
            cmd.Parameters.Add("@email", SqlDbType.VarChar, 50).Value = email;
            cmd.Parameters.Add("@password", SqlDbType.VarChar, 50).Value = password;
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                User u = new User(dr["uid"].ToString(), dr["fname"].ToString(), dr["lname"].ToString(), dr["gender"].ToString(), dr["address"].ToString(), dr["country"].ToString(), dr["occupation"].ToString(), dr["mobile"].ToString(), email, dr["profilePic"].ToString());
                return u;
            }
            else
                return null;
        }
        catch (Exception ex)
        {
            return null;
        }
        finally
        {
            if (con.State == ConnectionState.Open)
                con.Close();
        }
    }
    public static String ForgotPassword(string email)
    {
        SqlConnection con = new SqlConnection(Database.ConnectionString);
        try
        {
            con.Open();
            SqlCommand cmd = new SqlCommand(" select  password from  users where email = @email", con);
            cmd.Parameters.Add("@email", SqlDbType.VarChar, 50).Value = email;
            Object password = cmd.ExecuteScalar();
            if (password == null)
                return "Sorry! Invalid Email Address!";
            else
            {

                MailMessage m = new MailMessage();
                m.To.Add(new MailAddress(email));
                m.From = new MailAddress("bushrabankotkar@gmail.com");
                m.Subject = "Password Recovery";
                m.IsBodyHtml = true;
                m.Body = "Dear User,<p>Password : " + password.ToString() + "<p>Bushra,<br>DiscussionForums.com";
                
                //SmtpClient server = new SmtpClient("classroom");
                //server.Send(m);
                SmtpClient smtpClient = new SmtpClient();
                smtpClient.Host = "smtp.gmail.com";
                smtpClient.Port = 587;
                //smtpClient.UseDefaultCredentials = true;
                smtpClient.Credentials = new System.Net.NetworkCredential("bushrabankotkar@gmail.com", "dawbyat456");
                smtpClient.EnableSsl = true;
                smtpClient.Send(m);
                return null;
            }

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
    public static String ChangePassword(string uid, string oldpwd, string newpwd)
    {
        SqlConnection con = new SqlConnection(Database.ConnectionString);
        try
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("update users set password = @newpwd where uid= @uid and password = @oldpwd", con);
            cmd.Parameters.Add("@uid", SqlDbType.VarChar, 50).Value = uid;
            cmd.Parameters.Add("@oldpwd", SqlDbType.VarChar, 50).Value = oldpwd;
            cmd.Parameters.Add("@newpwd", SqlDbType.VarChar, 50).Value = newpwd;
            int rows = cmd.ExecuteNonQuery();
            if (rows == 1)
                return null; // success
            else
                return "Sorry! Invalid Old Password";
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
    public static String ChangeProfile(string uid, string fname, string lname, string address, string occupation, string mobile, string profilePic)
    {
        SqlConnection con = new SqlConnection(Database.ConnectionString);
        try
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("update users set fname = @fname, lname=@lname, address=@address, occupation = @occupation, mobile=@mobile, profilePic=@profilePic where uid =@uid", con);
            cmd.Parameters.Add("@uid", SqlDbType.VarChar, 10).Value = uid;
            cmd.Parameters.Add("@fname", SqlDbType.VarChar, 50).Value = fname;
            cmd.Parameters.Add("@lname", SqlDbType.VarChar, 50).Value = lname;
            cmd.Parameters.Add("@address", SqlDbType.VarChar, 50).Value = address;
            cmd.Parameters.Add("@occupation", SqlDbType.VarChar, 100).Value = occupation;
            cmd.Parameters.Add("@mobile", SqlDbType.VarChar, 50).Value = mobile;
            cmd.Parameters.Add("@profilePic", SqlDbType.VarChar, 50).Value = profilePic;
            int rows = cmd.ExecuteNonQuery();
            if (rows == 1)
                return null; // success
            else
                return "Sorry! Could not change profile. Try again!";
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
}