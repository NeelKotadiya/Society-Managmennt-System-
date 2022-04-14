using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class admin_Manager : System.Web.UI.Page
{
    DataClass dc = new DataClass();
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
            rptdata();
            ddcity.DataSource = dc.getTable("select Cityid,Cityname from City");
            ddcity.DataMember = "City";
            ddcity.DataTextField = "Cityname";
            ddcity.DataValueField = "Cityid";
            ddcity.DataBind();
        }

    }
    private void rptdata()
    {
        DataTable tb = new DataTable();
        string query = "select * from ViewManager";
        tb = dc.getTable(query);
        rptManager.DataSource = tb;
        rptManager.DataBind();
    }

    protected void btnnew_Click(object sender, EventArgs e)
    {
        Session["trans"] = "new";
        MultiView1.ActiveViewIndex = 1;
        txtmanagername.Focus();
    }
    protected void btnsave_Click(object sender, EventArgs e)
    {
        String query = "";
        if (Session["trans"].Equals("new"))
        {
            query = "insert into Manager(Managername,Address,Cityid,Contactno,Emailid , Document,Responsibilities,Timing,Description) values('" + txtmanagername.Text + "','" + txtaddress.Text + "','" + ddcity.SelectedValue + "','" + txtcontactno.Text + "','" + txtemailid.Text + "','" + fupdoc.PostedFile.FileName + "','" + txtresponsibility.Text + "', '" + txttiming.Text + "', '" + txtdescription.Text + "')";
        }
        if (Session["trans"].Equals("update"))
        {
            int Managerid = Convert.ToInt32(Session["Managerid"]);
            query = "update Manager set Managername='" + txtmanagername.Text + "',Address='" + txtaddress.Text + "',Cityid='" + ddcity.SelectedValue + "', Contactno='" + txtcontactno.Text + "' , Emailid='" + txtemailid.Text + "' , Document='" + fupdoc.PostedFile.FileName + "', Responsibilities='" + txtresponsibility.Text + "', Timing='" + txttiming.Text + "', Description='" + txtdescription.Text + "' where Managerid='" + Managerid + "'";
        }

        if (dc.saveRecord(query))
        {
            clearAll();
            rptdata();
            Session["trans"] = "";
            MultiView1.ActiveViewIndex = 0;

            if (fupdoc.HasFile)
            {
                string path = Server.MapPath("docimages\\" + fupdoc.PostedFile.FileName);
                fupdoc.SaveAs(path);
            }

        }
    }
    private void clearAll()
    {
        txtmanagername.Text = "";
        txtaddress.Text = "";
        txtcontactno.Text = "";
        txtemailid.Text = "";
        txtresponsibility.Text = "";
        txttiming.Text = "";
        
        txtdescription.Text = "";
    }
    protected void rptManager_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        int Managerid = Convert.ToInt32(e.CommandArgument);
        Session["Managerid"] = Managerid;
        string cmdname = e.CommandName;
        if (cmdname.Equals("update"))
        {
            string query = "select * from Manager where Managerid='" + Managerid + "'";
            DataRow rw = dc.getRecord(query);
            txtmanagername.Text = rw["managername"].ToString();
            txtaddress.Text = rw["Address"].ToString();
            txtcontactno.Text = rw["Contactno"].ToString();
            txtemailid.Text = rw["Emailid"].ToString();
            txtresponsibility.Text = rw["REsponsibilities"].ToString();
            txttiming.Text = rw["Timing"].ToString();
            
            txtdescription.Text = rw["Description"].ToString();


            MultiView1.ActiveViewIndex = 1;
            Session["trans"] = "update";
            txtmanagername.Focus();
        }
        if (cmdname.Equals("delete"))
        {
            string query = "delete from Manager where Managerid='" + Managerid + "'";
            if (dc.saveRecord(query))
            {
                rptdata();
            }
        }


    }

    protected void btncancel_Click(object sender, EventArgs e)
    {
        Session["trans"] = "";
        MultiView1.ActiveViewIndex = 0;
    }

   
}