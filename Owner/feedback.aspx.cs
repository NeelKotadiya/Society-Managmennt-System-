using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class owner_feedback : System.Web.UI.Page
{
     DataClass dc = new DataClass();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        int regid = Convert.ToInt32(Session["regid"]);
        String query = "";
        String feedbackdate = DateTime.Today.ToString("MM/dd/yyyy");
        query = "insert into feedback(feedbackdate,details,feedbackfor,rating,regid) values('" + feedbackdate + "','" + txtdetail.Text + "','" + txtfeedfor.Text + "','" + txtrating.Text + "','" + regid + "')";
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
     private void clearAll()
     {
         txtdetail.Text = "";
         txtfeedfor.Text = "";
         txtrating.Text = "";
       
     }
     protected void btncancel_Click(object sender, EventArgs e)
     {
         Response.Redirect("ownerhome.aspx");
     }
}