﻿

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class owner_ownerprofile : System.Web.UI.Page
{
    int regid;
    DataClass dc = new DataClass();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            showData();
            ddcity.DataSource = dc.getTable("select Cityid,Cityname from City");
            ddcity.DataMember = "City";
            ddcity.DataTextField = "Cityname";
            ddcity.DataValueField = "Cityid";
            ddcity.DataBind();
            
        }
    }

    private void showData()
    {
        int regid = Convert.ToInt32(Session["regid"]);
        string query = "select * from Owner where ownerid='" + regid + "'";
        bool result = dc.checkId(query);
        if (result)
        {

            DataRow rw;
            rw = dc.getRecord(query);

            txtname.Text = rw["ownername"].ToString();
            lblownname1.Text = rw["ownername"].ToString();

            txtdescription.Text = rw["description"].ToString();
            lbldes1.Text = rw["description"].ToString();

           

            txtcontactno.Text = rw["contactno"].ToString();
            lblcontactno1.Text = rw["contactno"].ToString();

            txtemailid.Text = rw["emailid"].ToString();
            lblemailid1.Text = rw["emailid"].ToString();

            txtaddress.Text = rw["address"].ToString();
            lbladdress2.Text = rw["address"].ToString();

           

            Image2.ImageUrl = "~\\Owner\\ownerimage\\" + rw["image"].ToString();
        }
    }

    protected void btnupdate_Click(object sender, EventArgs e)
    {
        int regid = Convert.ToInt32(Session["regid"]);
        string query1 = "select * from Owner where ownerid='" + regid + "'";
        bool result = dc.checkId(query1);
        string query2 = "";

        if (result)
        {
            if(fupimg.HasFile)
            {
                query2= "update Owner set ownername='" + txtname.Text + "',address='" + txtaddress.Text + "',Cityid='" + ddcity.SelectedValue + "',Contactno='" + txtcontactno.Text + "', Emailid='" + txtemailid.Text + "' ,image='" + fupimg.PostedFile.FileName + "',Description='" + txtdescription.Text + "' where ownerid='" + regid + "'";
            }
            else
            {
                query2 = "update Owner set ownername='" + txtname.Text + "',address='" + txtaddress.Text + "',Cityid='" + ddcity.SelectedValue + "',Contactno='" + txtcontactno.Text + "', Emailid='" + txtemailid.Text + "',Description='" + txtdescription.Text + "' where ownerid='" + regid + "'";

            }
        }

        else
        {
            query2 = "insert into Owner(ownername,Address,Cityid,Contactno, emailid,image,description) values('" + txtname.Text + "','" + txtaddress.Text + "','" + ddcity.SelectedValue + "' , '" + txtcontactno.Text + "', '" + txtemailid.Text + "' ,'" + fupimg.PostedFile.FileName + "','" + txtdescription.Text + "' )";
        }

        
        if (dc.saveRecord(query2))
        {
            Session["trans"] = "";
            MultiView1.ActiveViewIndex = 0;
            showData();
        }

        if (fupimg.HasFile)
        {
            string path = Server.MapPath("ownerimage\\" + fupimg.PostedFile.FileName);
            fupimg.SaveAs(path);
        }
    }

    protected void btn1_Click(object sender, EventArgs e)
    {
        Session["trans"] = "new";
        MultiView1.ActiveViewIndex = 1;
        txtname.Focus(); 
    }

    protected void btncancel_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 0;
    }
}