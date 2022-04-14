using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Owner_changepassword : System.Web.UI.Page
{
    DataClass dc = new DataClass(); 
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        string pwd;
            int regid = Convert.ToInt32(Session["regid"]);
            DataRow rw= dc.getRecord("select password from register where regid='" + regid + "'");
       
            if (txtoldpassword.Text.Equals(rw["password"]))
            {
               
                    pwd = "update register set password='" + txtnewpassword.Text + "' where regid='" + regid + "'";

                    if (dc.saveRecord(pwd))
                    {
                        lblmsg.Text = "Password Change Successfully..";
                    }
                    else
                    {
                        lblmsg.Text = "Password Not Change..";
                    }
                }
                else
                {
                    lblmsg.Text = "invalid Old password";             
                 }
            }
    }

