using System;
using System.Collections.Generic;
using System.Linq;
using System.Configuration;
using System.Web.Configuration;
using System.Data;

public class Database
{
    public static string ConnectionString
    {
		get
        {
            return WebConfigurationManager.ConnectionStrings["ForumsConnectionString"].ConnectionString;
        }
	}
}