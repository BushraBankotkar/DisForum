using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

public class User
{
    private string id, email, fname, lname, occupation, gender, address, country, mobile, profilePic;
	public User()
	{
	}
    public User(string id, string fname, string lname, string gender, string address, string country, string occupation, string mobile, string email, string profilePic)
    {
        this.id = id;
        this.fname = fname;
        this.lname = lname;
        this.gender = gender;
        this.address = address;
        this.country = country;
        this.occupation = occupation;
        this.mobile = mobile;
        this.email = email;
        this.profilePic = profilePic;
    }
    public string Id
    {
        get
        {
            return id;
        }
        set
        {
            id = value;
        }
    }
    public string Fname
    {
        get
        {
            return fname;
        }
        set
        {
            fname = value;
        }
    }
    public string Lname
    {
        get
        {
            return lname;
        }
        set
        {
            lname = value;
        }
    }
    public string Gender
    {
        get
        {
            return gender;
        }
        set
        {
            gender = value;
        }
    }
    public string Address
    {
        get
        {
            return address;
        }
        set
        {
            address = value;
        }
    }
    public string Country
    {
        get
        {
            return country;
        }
        set
        {
            value = country;
        }
    }
    public string Occupation
    {
        get
        {
            return occupation;
        }
        set
        {
            occupation = value;
        }
    }
    public string Mobile
    {
        get
        {
            return mobile;
        }
        set
        {
            mobile = value;
        }
    }
    public string Email
    {
        get
        {
            return email;
        }
        set
        {
            email = value;
        }
    }
    public string ProfilePic
    {
        get
        {
            return profilePic;
        }
        set
        {
            profilePic = value;
        }
    }
}