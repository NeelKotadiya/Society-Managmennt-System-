using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class admin_notice : System.Web.UI.Page
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
        string query = "select * from Notice";
        tb = dc.getTable(query);
        rptnotice.DataSource = tb;
        rptnotice.DataBind();
    }
    protected void btnsave_Click(object sender, EventArgs e)
    {

        if (Session["trans"].Equals("new"))
        {
            String Noticedate = DateTime.Today.ToString("MM/dd/yyyy"); 
             query = "insert into Notice(Noticedate,Title,Details,Noticefor,Noticeby) values('" + Noticedate + "','" + txttitle.Text + "','" + txtdetails.Text + "','" + txtnoticefor.Text + "','" + txtnoticeby.Text + "')";
        }
        

        if (dc.saveRecord(query))
        {
            clearAll();
            rptdata();
            Session["trans"] = "";
            MultiView1.ActiveViewIndex = 0;

        }

    }
    private void clearAll()
    {
        
        txttitle.Text = "";
        txtdetails.Text = "";
        txtnoticefor.Text = "";
        txtnoticeby.Text = "";
    }


   
    protected void btnnew_Click(object sender, EventArgs e)
    {
        Session["trans"] = "new";
        MultiView1.ActiveViewIndex = 1;
        txttitle.Focus();
    }
    
    protected void btncancel_Click(object sender, EventArgs e)
    {
        Session["trans"] = "";
        MultiView1.ActiveViewIndex = 0;
    }

    public string Noticeid { get; set; }

    public string query { get; set; }

    protected void btnback_Click(object sender, EventArgs e)
    {
        Response.Redirect("adminhome.aspx");
    }
}