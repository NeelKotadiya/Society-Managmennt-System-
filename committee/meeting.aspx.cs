using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class committee_meeting : System.Web.UI.Page
{
    DataClass dc = new DataClass();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    private void clearAll()
    {
        txtsubject.Text = "";
        txttopic.Text = "";
        txtpresent.Text = "";
        txtheadby.Text = "";
        txtdes.Text = "";

    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        //int regid = Convert.ToInt32(Session["regid"]);
        String query = "";
        
        query = "insert into meeting(meetdate,subject,topic,present,headby,description) values('" + txtcal.Text + "','" + txtsubject.Text + "','" + txttopic.Text + "','" + txtpresent.Text + "','" + txtheadby.Text + "','"+ txtdes.Text +"')";
        if (dc.saveRecord(query))
        {
            clearAll();
            lblmsg.Text = "Submit Successfully..";
        }
        else
        {
            lblmsg.Text = "Not Submited";
        }
        if (dc.saveRecord(query))
        {
            clearAll();
            Session["trans"] = "";
        }
    }
    protected void btncancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("committeeHome.aspx");
    }
   


}