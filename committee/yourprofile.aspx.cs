using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class committee_yourprofile : System.Web.UI.Page
{
    int regid;
    DataClass dc = new DataClass();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            showData();
        }
    }
    private void showData()
    {
        int regid = Convert.ToInt32(Session["regid"]);
        string query = "select * from Committee where Memberid='" + regid + "'";
        bool result = dc.checkId(query);
        if (result)
        {

            DataRow rw;
            rw = dc.getRecord(query);

            txtname.Text = rw["Membername"].ToString();
            lblcomname1.Text = rw["Membername"].ToString();

            txtdesig.Text = rw["Designation"].ToString();
            lbldesig1.Text = rw["Designation"].ToString();


            txtresp.Text = rw["Responsibilities"].ToString();
            lblresp1.Text = rw["Responsibilities"].ToString();

            txtcontactno.Text = rw["Contactno"].ToString();
            lblcontactno1.Text = rw["Contactno"].ToString();

            txtemailid.Text = rw["Emailid"].ToString();
            lblemailid1.Text = rw["Emailid"].ToString();

          



            Image3.ImageUrl = "~\\committee\\committeeimage\\" + rw["image"].ToString();
        }
    }
    protected void btnup_Click(object sender, EventArgs e)
    {
        Session["trans"] = "new";
        MultiView1.ActiveViewIndex = 1;
        txtname.Focus(); 
    }
    protected void btnupdate_Click(object sender, EventArgs e)
    {

        int regid = Convert.ToInt32(Session["regid"]);
        string query1 = "select * from committee where Memberid='" + regid + "'";
        bool result = dc.checkId(query1);
        string query2 = "";

        if (result)
        {
            if (fupimg.HasFile)
            {
                query2 = "update Committee set Membername='" + txtname.Text + "',Designation='" + txtdesig.Text + "', Responsibilities='" + txtresp.Text + "',Contactno='" + txtcontactno.Text + "', Emailid='" + txtemailid.Text + "' ,image='" + fupimg.PostedFile.FileName + "' where Memberid='" + regid + "'";
            }
            else
            {
                query2 = "update Committee set Membername='" + txtname.Text + "',Designation='" + txtdesig.Text + "' , Responsibilities='" + txtresp.Text + "',Contactno='" + txtcontactno.Text + "', Emailid='" + txtemailid.Text + "' where Memberid='" + regid + "'";

            }
        }

        else
        {
            query2 = "insert into Committee(Membername,regid,Designation,Responsibilities,Contactno, Emailid,image) values('" + txtname.Text + "','" + regid + "','" + txtdesig.Text + "','" + txtresp.Text + "', '" + txtcontactno.Text + "', '" + txtemailid.Text + "' ,'" + fupimg.PostedFile.FileName + "')";
        }


        if (dc.saveRecord(query2))
        {
            Session["trans"] = "";
            MultiView1.ActiveViewIndex = 0;
            showData();
        }

        if (fupimg.HasFile)
        {
            string path = Server.MapPath("committeeimage\\" + fupimg.PostedFile.FileName);
            fupimg.SaveAs(path);
        }
       
    }
    protected void btncancel_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 0;
    }
}