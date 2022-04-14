using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Owner_contact : System.Web.UI.Page
{
    DataClass dc = new DataClass();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

        }
    }



    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        String query = "";
        int submitid = Convert.ToInt32(Session["submitid"]);
        query = "insert into submit(username, email , subject , message)values('" + txtuname.Text + "','" + txtemail.Text + "', '"+txtsubject.Text+"' , '" + txtmsg.Text + "')";
       
        if (dc.saveRecord(query))
        {
            clearAll();

            Session["trans"] = "";

            lblmsg1.Text = "Sent Successfully..";
        }
        else
        {
            lblmsg1.Text = " Not Sent..";
        }
    }

    private void clearAll()
    {
        txtuname.Text = "";
        txtemail.Text = "";
        txtsubject.Text = "";
        txtmsg.Text = "";
    }
}