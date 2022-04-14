using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Script.Serialization;


public partial class main_registerapi : System.Web.UI.Page
{

    string regid;
    string regdate;
    string username;
    string password;
    string usertype;
    string contactno;
    string emailid;
    string regfees;
    string query;

    DataClass dc = new DataClass();
    protected void Page_Load(object sender, EventArgs e)
    {
        insertdata();
    }

    void insertdata()
    {
        var res = this.dc.textToJson("palak");
        HttpContext.Current.Response.Clear();
        HttpContext.Current.Response.Write(res);
        HttpContext.Current.Response.End();

        /*regdate = Request.QueryString["regdate"].ToString();
        username = Request.QueryString["username"].ToString();
        password = Request.QueryString["password"].ToString();
        usertype = Request.QueryString["usertype"].ToString();
        contactno = Request.QueryString["contactno"].ToString();
        emailid = Request.QueryString["emailid"].ToString();
        regfees = Request.QueryString["regfees"].ToString();

        //query = Request.QueryString["q"].ToString(); */
       // string query = "insert into register(regdate,username,password,usertype,contactno,emailid,regfees)values('" + regdate + "','" + username + "','" + password + "','" + usertype + "','" + contactno + "','" + emailid + "','" + regfees + "')";

        //string query = "insert into register(regdate,username,password,usertype,contactno,emailid,regfees)values('01/01/2000','abc','xyz','owner','123','abc@yahoo.com','5000')";
       
        //string msg = "";
        //if (dc.saveRecord(query))
        //{
        //     msg= "successful";
        //}
        //else
        //{
        //      msg= "fail";
        //}
        //HttpContext.Current.Response.Clear();
        //HttpContext.Current.Response.Write(msg);
        //HttpContext.Current.Response.End();
    }

}