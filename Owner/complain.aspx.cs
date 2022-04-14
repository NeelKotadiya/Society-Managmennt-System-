using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class owner_complain : System.Web.UI.Page
{
    DataClass dc = new DataClass();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
  
    private void clearAll()
    {
      
        txtdetails.Text = "";
        txtcomplainfor.Text = "";
        ddlstatus.SelectedValue = "";
    }
    protected void btncancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("ownerhome.aspx");
    }
    protected void btnsave_Click1(object sender, EventArgs e)
    {
        int regid = Convert.ToInt32(Session["regid"]);
        String query = "";
        String complaindate = DateTime.Today.ToString("MM/dd/yyyy");
        query = "insert into complain(complaindate,regid,complainfor,details,status) values('" + complaindate + "','" + regid + "','" + txtcomplainfor.Text + "','" + txtdetails.Text + "','" + ddlstatus.SelectedItem + "')";
        if (dc.saveRecord(query))
        {
            clearAll();
            lblmsg.Text = "Submit Successfully..";
        }
        else 
        {
            lblmsg.Text = "Not Submited";
        }
    }
}