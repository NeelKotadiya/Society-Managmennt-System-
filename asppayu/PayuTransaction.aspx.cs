using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace payu_bolt
{
    public partial class PayuTransaction : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            DataClass dc = new DataClass();
            int regid = Convert.ToInt32(Session["regid"]);
            string query = "select * from register where regid='" + regid + "'";
            DataRow rw;
            rw = dc.getRecord(query);
            fname.Text = rw["username"].ToString();
            email.Text = rw["emailid"].ToString();
            int maintid = Convert.ToInt32(Session["maintid"]);
            string query1 = "select * from maintainence where maintid='" + maintid + "'";
           
            rw = dc.getRecord(query1);
            pinfo.Text = rw["month"].ToString();
            //year.Text = rw["year"].ToString();
            Session["amount"] = rw["amount"];
            amount.Text = Convert.ToString(Session["amount"]);


            //fname.Text = "kirit"; //Session["username"].ToString();
            //email.Text =  "kiritab@yahoo.com"; //Session["email"].ToString();
            //pinfo.Text = "Manager"; //Session["job"].ToString();
            //amount.Text = "5000"; //Session["amount"].ToString();


            string surl = ((HttpContext.Current.Request.ServerVariables["HTTPS"] != "" && HttpContext.Current.Request.ServerVariables["HTTP_HOST"] != "off") || HttpContext.Current.Request.ServerVariables["SERVER_PORT"] == "443") ? "https://" : "http://";
            surl += HttpContext.Current.Request.ServerVariables["HTTP_HOST"] + HttpContext.Current.Request.ServerVariables["REQUEST_URI"] + "/Response.aspx";
            Session.Add("surl", surl);

            Random r = new Random();
            string txnid = "Txn" + r.Next(100, 9999);
            Session.Add("txnid", txnid);
           
        }

        
}
}