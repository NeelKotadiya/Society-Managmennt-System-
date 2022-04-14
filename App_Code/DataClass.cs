using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

/// <summary>
/// Summary description for DataClass
/// </summary>
public class DataClass
{
	SqlConnection conn = new SqlConnection();

	public DataClass()
	{
        conn.ConnectionString = "Data Source=.\\SQLEXPRESS;AttachDbFilename=|dataDirectory|\\societydata.mdf;Integrated Security=True;User Instance=True";
	}

    public DataTable getTable(string query)
    {
        conn.Open();
        SqlDataAdapter sda = new SqlDataAdapter (query , conn);
        DataSet ds = new DataSet ();
        sda.Fill(ds);
        DataTable tb = new DataTable();
        tb = ds.Tables[0];
        conn.Close();
        return tb;
    }

    public DataRow getRecord(string query)
    {
        conn.Open();
        SqlDataAdapter sda = new SqlDataAdapter(query , conn);
        DataSet ds = new DataSet();
        sda.Fill(ds);
        DataTable tb = new DataTable();
        tb = ds.Tables[0];
        DataRow rw;
        rw = tb.Rows[0];
        conn.Close();
        return rw;
     }

    public bool saveRecord(string query)
    {
        bool result;
        conn.Open();
        SqlCommand cmd = new SqlCommand(query , conn);
        int ans = cmd.ExecuteNonQuery();
        if (ans == 1)
        {
            result = true;
        }
        else
        {
            result = false;
        }
        conn.Close();
        return result;
    }

    public bool checkId(string query)
    {
        bool result = false;
        conn.Open();
        SqlCommand cmd = new SqlCommand(query, conn);
        SqlDataReader sdr;
        sdr = cmd.ExecuteReader();
        if (sdr.Read())
        {
            result = true;
        }
        else
        {
            result = false;
        }
        sdr.Close();
        conn.Close();
        return result;
    }

    public int primary(string query)
    {
        int pk = 0;
        conn.Open();
        SqlCommand cmd = new SqlCommand(query, conn);
        SqlDataReader sdr;
        sdr = cmd.ExecuteReader();
        try
        {
            sdr.Read();
            pk = Convert.ToInt32(sdr[0]);
            pk++;
        }
        catch (Exception ex)
        {
            pk = 1;
        }
        finally
        {
            sdr.Close();
            conn.Close();
        }
        return pk;
    }

    public string tabletoJson(DataTable tb)
    {
        var lst = tb.AsEnumerable().Select(r => r.Table.Columns.Cast<DataColumn>().Select(c => new KeyValuePair<string, object>(c.ColumnName, r[c.Ordinal])).ToDictionary(z => z.Key, z => z.Value)).ToList();
        var serializer = new System.Web.Script.Serialization.JavaScriptSerializer();
        return serializer.Serialize(lst);

    }
    public string textToJson(string msg)
    {
        string[] animals = { msg };
        List<string> animalsList = new List<string>(animals);
        var serializer = new System.Web.Script.Serialization.JavaScriptSerializer();
        return serializer.Serialize(animalsList);

    }

    public int getValue(string query)
    {
        int value = 0;
        conn.Open();
        SqlCommand cmd = new SqlCommand(query, conn);
        SqlDataReader sdr;
        sdr = cmd.ExecuteReader();
        try
        {
            sdr.Read();
            value= Convert.ToInt32(sdr[0]);
           
        }
        catch (Exception ex)
        {
            value = 0;
        }
        finally
        {
            sdr.Close();
            conn.Close();
        }
        return value;
    }


    public string getData(string query)
    {
        string data = "";
        conn.Open();
        SqlCommand cmd = new SqlCommand(query, conn);
        SqlDataReader sdr;
        sdr = cmd.ExecuteReader();
        try
        {
            sdr.Read();
            data = Convert.ToString(sdr[0]);

        }
        catch (Exception ex)
        {
            data = "";
        }
        finally
        {
            sdr.Close();
            conn.Close();
        }
        return data;
    }

    

}