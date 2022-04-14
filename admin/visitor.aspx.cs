using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class admin_visitor : System.Web.UI.Page
{
    DataClass dc = new DataClass();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            rptdata();

        }
    }
    private void rptdata()
    {
        DataTable tb = new DataTable();
        string query = "select * from Visitor";
        tb = dc.getTable(query);
        rptvisitor.DataSource = tb;
        rptvisitor.DataBind();
    }
    
   
    private void clearAll()
    {
        
        txtvisitorname.Text = "";
        txtcontactno.Text = "";
       
        txtintime.Text = "";
        txtouttime.Text = "";
        txtpurpose.Text = "";
        
    }

public  string vi { get; set; }
public  string Visitorid { get; set; }
public  string query { get; set; }

    
    protected void  btncancel_Click(object sender, EventArgs e)
{
         Session["trans"] = "";
        MultiView1.ActiveViewIndex = 0;
}
    
    protected void btnnew_Click(object sender, EventArgs e)
    {
        Session["trans"] = "new";
        MultiView1.ActiveViewIndex = 1;
        txtvisitorname.Focus();
    }
    protected void btnsave_Click(object sender, EventArgs e)
    {
        
         if (Session["trans"].Equals("new"))
        {
            
              query = "insert into Visitor(Visitorname,Contactno,Intime,Outtime,Purpose) values('" + txtvisitorname.Text + "','" + txtcontactno.Text + "','" + txtintime.Text + "','" + txtouttime.Text + "','" + txtpurpose.Text + "')";
        }
        if (Session["trans"].Equals("update"))
        {
            int Visitorid = Convert.ToInt32(Session["Visitorid"]);
           
            query = "update Visitor set Visitorname='" + txtvisitorname.Text + "',Contactno='" + txtcontactno.Text + "',Intime='" + txtintime.Text + "',Outtime='" + txtouttime.Text + "',Purpose='" + txtpurpose.Text + "'  where Visitorid='" + Visitorid + "'";
        }


        if (dc.saveRecord(query))
        {
            clearAll();
            rptdata();
            Session["trans"] = "";
            MultiView1.ActiveViewIndex = 0;

        }
    }
    protected void rptvisitor_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        int Visitorid = Convert.ToInt32(e.CommandArgument);
        Session["Visitorid"] = Visitorid;
        string cmdname = e.CommandName;
        if (cmdname.Equals("update"))
        {
            string query = "select * from Visitor where Visitorid='" + Visitorid + "'";
            DataRow rw = dc.getRecord(query);
            txtvisitorname.Text = rw["Visitorname"].ToString();
            
            txtcontactno.Text = rw["Contactno"].ToString();
            
            txtintime.Text = rw["Intime"].ToString();
            txtouttime.Text = rw["Outtime"].ToString();
            txtpurpose.Text = rw["Purpose"].ToString();
            


            MultiView1.ActiveViewIndex = 1;
            Session["trans"] = "update";
            txtvisitorname.Focus();
        }
        if (cmdname.Equals("delete"))
        {
            string query = "delete from Visitor where Visitorid='" + Visitorid + "'";
            if (dc.saveRecord(query))
            {
                rptdata();
            }
        }
    }
    protected void btnback_Click(object sender, EventArgs e)
    {
        Response.Redirect("adminhome.aspx");
    }
}


  