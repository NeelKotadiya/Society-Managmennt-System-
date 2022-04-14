using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class userregister : System.Web.UI.Page
{
    DataClass dc = new DataClass();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        string query;
        int regid = dc.primary("select max(regid) from register");
        string regdate = DateTime.Today.ToString("MM/dd/yyyy");
        query = "insert into register(regid,regdate,username,password,usertype,contactno,emailid,regfees) values('" + regid + "','" + regdate + "','" + txtusername.Text + "','" + txtpassword.Text + "','" + ddusertype.SelectedItem.Text + "','" + txtcontact.Text + "','" + txtemail.Text + "','" + txtfees.Text + "')";
        bool result = dc.saveRecord(query);
        if (result)
        {
            if (ddusertype.SelectedItem.Text.Equals("Owner"))
            {
                query = "insert into owner(ownerid,ownername,contactno,emailid) values('" + regid + "' , '" + txtusername.Text + "' , '" + txtcontact.Text + "','" + txtemail.Text + "')";
                dc.saveRecord(query);
            }

            if (ddusertype.SelectedItem.Text.Equals("Committee"))
            {
                query = "insert into Committee(Memberid,Membername,contactno,emailid) values('" + regid + "' , '" + txtusername.Text + "' , '" + txtcontact.Text + "','" + txtemail.Text + "')";
                dc.saveRecord(query);
            }
            clearAll();
            lblmsg.Text = "Register Successfully..";
        }
        else
        {
            lblmsg.Text = "user not Registered..";
        }
    }

    private void clearAll()
    {
        txtusername.Text = "";
        txtpassword.Text = "";
        ddusertype.SelectedIndex = 0;
        txtcontact.Text = "";
        txtemail.Text = "";
        txtfees.Text = "";

    }

    protected void btncancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("mainhome.aspx");
    }
}