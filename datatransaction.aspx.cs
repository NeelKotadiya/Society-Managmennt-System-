using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Script.Serialization;

public partial class datatransaction : System.Web.UI.Page
{

    DataClass dc = new DataClass();
    string regdate;
    string username;
    string password;
    string usertype;
    string contactno;
    string emailid;
    string regfees;
    string regid;
    
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["type"] != null)
        {
            if (Request.QueryString["type"].ToString() == "insert")
            {
                insertdata();
            }

            else if (Request.QueryString["type"].ToString() == "update")
            {
                updatedata();
            }
         }
    }

    void insertdata()
    {
        regdate = Request.QueryString["regdate"].ToString();
        username = Request.QueryString["username"].ToString();
        password = Request.QueryString["password"].ToString();
        usertype = Request.QueryString["usertype"].ToString();
        contactno = Request.QueryString["contact"].ToString();
        emailid = Request.QueryString["emailid"].ToString();
        regfees = Request.QueryString["regfees"].ToString();
        string query = "insert into register(regdate,username,password,usertype,contactno,emailid,regfees)values('" + regdate + "','" + username + "','" + password + "','" + usertype + "','" + contactno + "','" + emailid + "','" + regfees + "')";
        dc.saveRecord(query);
        var res = dc.textToJson("");
        HttpContext.Current.Response.Clear();
        HttpContext.Current.Response.Write(res);
        HttpContext.Current.Response.End();  
    }


    void updatedata()
    {
        regid = Request.QueryString["regid"].ToString();
        username = Request.QueryString["name"].ToString();
        contactno = Request.QueryString["contact"].ToString();
        string query = "update register set regdate='"+ regdate +"', username='" + username + "',password='" + password + "',usertype='" + usertype + "',contactno='" + contactno + "',emailid='"+ emailid +"',regfees='"+ regfees +"' where username='" + username + "'";
        dc.saveRecord(query);
        HttpContext.Current.Response.Clear();
        HttpContext.Current.Response.Write("Update Successfully");
        HttpContext.Current.Response.End();
    }
}