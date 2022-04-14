using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class admin_rules : System.Web.UI.Page
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
    string query = "select * from Rules";
    tb = dc.getTable(query);
    rptrules.DataSource = tb;
    rptrules.DataBind();
}
    
   
    protected void btnsave_Click(object sender, EventArgs e)
    {
        if (Session["trans"].Equals("new"))
        {
           // String Noticedate = DateTime.Today.ToString("MM/dd/yyyy");
            query = "insert into Rules(Ruletitle,Ruledetails,Ruletype) values('" + txtruletitle.Text + "','" + txtruledetails.Text + "','"+txtruletype.Text+"')";
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

        txtruletitle.Text = "";
        txtruledetails.Text = "";
        txtruletype.Text = "";

    }
    protected void rptrules_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        int Ruleid = Convert.ToInt32(e.CommandArgument);
        Session["Ruleid"] = Ruleid;
        string cmdname = e.CommandName;
        if (cmdname.Equals("delete"))
        {
            string query = "delete from Rules where Ruleid='" + Ruleid + "'";
            if (dc.saveRecord(query))
            {
                rptdata();
            }
        }
    }
    protected void btnnew_Click(object sender, EventArgs e)
    {
        Session["trans"] = "new";
        MultiView1.ActiveViewIndex = 1;
        txtruletitle.Focus();
    }
    protected void btncancel_Click(object sender, EventArgs e)
    {
        Session["trans"] = "";
        MultiView1.ActiveViewIndex = 0;
    }


    public string query { get; set; }

    public object Ruleid { get; set; }
}