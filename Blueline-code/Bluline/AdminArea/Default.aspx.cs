using System;
using System.Collections.Generic;
using System.Linq;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;
using System.Data.OleDb;


public partial class AdminArea_Default : System.Web.UI.Page
{
    OleDbCommand cmd;
    OleDbConnection con;
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void btnfinish_Click(object sender, EventArgs e)
    {
        string strsql = "Insert Into Time_list values('"+txtsno.Text.ToString()+"','" + txtstation.Text.ToString()+ "','" +txtcost.Text.ToString() + "','" + txttime.Text.ToString() + "','" + txtarrival.Text.ToString() + "','" + txtbusno.Text.ToString() + "')";
        using (con = new OleDbConnection(DB.ConnectionString))
        {
            cmd = new OleDbCommand();
            con.Open();
            cmd.Connection = con;
            cmd.CommandText = strsql;
            cmd.ExecuteNonQuery();

        }
        Response.Redirect("HomeForAdmin.aspx");
    }
}
