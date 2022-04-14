using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Owner_suggestion : System.Web.UI.Page
{
    DataClass dc = new DataClass();
    protected void Page_Load(object sender, EventArgs e)
    {

    }


    private void clearAll()
    {
        txtsugfor.Text = "";
        txtdetails.Text = "";
       
        
    }
    
protected void  btnsave_Click(object sender, EventArgs e)
{
    int regid = Convert.ToInt32(Session["regid"]);
        String query = "";
        String sugdate = DateTime.Today.ToString("MM/dd/yyyy");
        query = "insert into suggestion(sugdate,regid ,sugfor,details ) values('" + sugdate + "','" + regid + "','" + txtsugfor.Text + "','" + txtdetails.Text + "')";
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
protected void  btncancel_Click(object sender, EventArgs e)
{
    Response.Redirect("ownerhome.aspx");
}
}




        
