using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class admin_staff1 : System.Web.UI.Page
{
    DataClass dc = new DataClass();
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
            rptdata();
            ddcity.DataSource = dc.getTable("select cityid,cityname from city");
            ddcity.DataMember = "city";
            ddcity.DataTextField = "cityname";
            ddcity.DataValueField = "cityid";
            ddcity.DataBind();
        }
    }
    private void rptdata()
    {
        DataTable tb = new DataTable();
        string query = "select * from staff";
        tb = dc.getTable(query);
        rptstaff.DataSource = tb;
        rptstaff.DataBind();
    }

    protected void btnnew_Click(object sender, EventArgs e)
    {
        Session["trans"] = "new";
        MultiView1.ActiveViewIndex = 1;
        txtstaffname.Focus();
    }

    protected void btnsave_Click(object sender, EventArgs e)
    {
        String query = "";
        string gender = "";
        if (rdomale.Checked)
            gender = "male";
        if (rdofemale.Checked)
            gender = "female";
        if (Session["trans"].Equals("new"))
        {
            query = "insert into staff(staffname,address,cityid,contactno,emailid,post,docfile,image,timing,gender,description) values('"+txtstaffname.Text + "','" + txtaddress.Text + "','" + ddcity.SelectedValue + "','" + txtcontactno.Text + "','" + txtemailid.Text +"','" + txtpost.Text +"','" + fupdoc.PostedFile.FileName +"','"+ fupimg.PostedFile.FileName+"','"+ txttiming.Text+"','" + gender+"','" + txtdescription.Text +"')";
        
        }
        if (Session["trans"].Equals("update"))
        {
            int staffid = Convert.ToInt32(Session["staffid"]);
            query = "update staff set staffname='" + txtstaffname.Text + "',address='" + txtaddress.Text + "',cityid='" + ddcity.SelectedValue + "',contactno='" + txtcontactno.Text + "',Emailid='" + txtemailid.Text + "',Post='" + txtpost.Text + "',Docfile='" + fupdoc.PostedFile.FileName + "',Image='" + fupimg.PostedFile.FileName + "',Timing='" + txttiming.Text + "',Gender='" + gender + "',Description='" + txtdescription.Text + "' where staffid='" + staffid + "'";
        }

        if (dc.saveRecord(query))
        {
            clearAll();
            rptdata();
            Session["trans"] = "";
            MultiView1.ActiveViewIndex = 0;

        }
         if (fupdoc.HasFile)
            {
                string path = Server.MapPath("docimages\\" + fupdoc.PostedFile.FileName);
                fupdoc.SaveAs(path);
            }
         if (fupimg.HasFile)
         {
             string path = Server.MapPath("staffimages\\" + fupimg.PostedFile.FileName);
             fupdoc.SaveAs(path);
         }

        
    }
    private void clearAll()
    {
        txtstaffname.Text = "";
        txtaddress.Text = "";
        txtcontactno.Text = "";
        txtemailid.Text = "";
        txtpost.Text = "";
        txtdescription.Text = "";
     }


    protected void rptstaff_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        int staffid = Convert.ToInt32(e.CommandArgument);
        Session["staffid"] = staffid;
        string cmdname = e.CommandName;
        if (cmdname.Equals("update"))
        {
            string query = "select * from staff where staffid='" + staffid + "'";
            DataRow rw = dc.getRecord(query);
            txtstaffname.Text = rw["staffname"].ToString();
            txtaddress.Text = rw["address"].ToString();
            txtcontactno.Text = rw["contactno"].ToString();
            txtemailid.Text = rw["emailid"].ToString();
            txtpost.Text = rw["post"].ToString();
            txttiming.Text = rw["timing"].ToString();
            txtdescription.Text = rw["description"].ToString();

            MultiView1.ActiveViewIndex = 1;
            Session["trans"] = "update";
            txtstaffname.Focus();
        }
        if (cmdname.Equals("delete"))
        {
            string query = "delete from staff where staffid='" + staffid + "'";
            if (dc.saveRecord(query))
            {
                rptdata();

            }
        }
    }

    protected void btncancel_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 0;
    }
    protected void btnback_Click(object sender, EventArgs e)
    {
        Response.Redirect("adminhome.aspx");
    }
}