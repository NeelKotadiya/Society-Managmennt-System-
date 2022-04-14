using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class committee_newmaint : System.Web.UI.Page
{
    DataClass dc = new DataClass();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (this.SelectedDate == DateTime.MinValue)
            {
                this.PopulateYear();
             
            }
        }
    }
   
    private int Month
    {
        get
        {
            return int.Parse(ddlMonth.SelectedItem.Value);
        }
        set
        {
            
            ddlMonth.ClearSelection();
            ddlMonth.Items.FindByValue(value.ToString()).Selected = true;
        }
    }
    private void PopulateYear()
    {
        ddlYear.Items.Clear();
        ListItem lt = new ListItem();
        lt.Text = "YYYY";
        lt.Value = "0";
        ddlYear.Items.Add(lt);
        for (int i = DateTime.Now.Year; i >= 1950; i--)
        {
            lt = new ListItem();
            lt.Text = i.ToString();
            lt.Value = i.ToString();
            ddlYear.Items.Add(lt);
        }
        ddlYear.Items.FindByValue(DateTime.Now.Year.ToString()).Selected = true;
    }
    private int Year
    {
        get
        {
            return int.Parse(ddlYear.SelectedItem.Value);
        }
        set
        {
            this.PopulateYear();
            ddlYear.ClearSelection();
            ddlYear.Items.FindByValue(value.ToString()).Selected = true;
        }
    }

    public DateTime SelectedDate
    {
        get
        {
            try
            {
                return DateTime.Parse( "/" + this.Year);
            }
            catch
            {
                return DateTime.MinValue;
            }
        }
        set
        {
            if (!value.Equals(DateTime.MinValue))
            {
                this.Year = value.Year;
                this.Month = value.Month;
           
            }
        }
    }
    protected void btn_Click(object sender, EventArgs e)
    {
        String query = "";
        String maintdate = DateTime.Today.ToString("MM/dd/yyyy"); 
            query = "insert into maintainence(maintdate,month,year) values('"+ maintdate +"','" + ddlMonth.SelectedItem.Text  + "','" + ddlYear.SelectedItem.Text + "')";
            if (dc.saveRecord(query))
            {
                rptdata();
                clearAll();
                MultiView1.ActiveViewIndex = 1;

            }
          
          
                
        
    }
    private void clearAll()
    {
        txtheading.Text = "";
        txtamount.Text = "";
        txtdes.Text = "";
    }
   
    private void rptdata()
    {
        DataTable tb = new DataTable();
        string query = "select * from maintainence";
        tb = dc.getTable(query);
        rptmaint.DataSource = tb;
        rptmaint.DataBind();
    }
    protected void rptmaint_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        int maintid = Convert.ToInt32(e.CommandArgument);
        Session["maintid"] = maintid;
        string cmdname = e.CommandName;
        if (cmdname.Equals("create"))
        {
            string query = "select month,year  from maintainence where maintid='" + maintid + "'";
            DataRow rw = dc.getRecord(query);
            ddlMonth.SelectedItem.Text = rw["month"].ToString();
            ddlYear.SelectedItem.Text = rw["year"].ToString();


            MultiView1.ActiveViewIndex = 1;
            Session["trans"] = "create";
            rptdata();

        }
        if (cmdname.Equals("detail"))
        {
           
            MultiView1.ActiveViewIndex = 2;
               
                rptdata();
                clearAll();
              
        }
    }
    protected void btnsave_Click(object sender, EventArgs e)
    {
        int maintid = Convert.ToInt32(Session["maintid"]);
        String query = "select * from maintdetails where maintdetailid='"+ maintid+"'";
        query = "insert into maintdetails(maintid,heading,amount,description) values('"+ maintid +"','" + txtheading.Text + "','" + txtamount.Text + "','" + txtdes.Text + "')";
       
        if (dc.saveRecord(query))
        {
            query = "select sum(amount) from maintdetails where maintid='" + maintid + "'";
            int totalamount = dc.getValue(query);
            query = "update maintainence set amount='" + totalamount + "' where maintid='" + maintid + "'";
            if (dc.saveRecord(query))
            {
             
            }
            rptdata();

            MultiView1.ActiveViewIndex = 1;

        }
    }
    protected void btncancle_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 1;
    }
    protected void btnback_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 0;
    }
    protected void btnshow_Click(object sender, EventArgs e)
    {
        rptdata();
        MultiView1.ActiveViewIndex = 1;
    }
}