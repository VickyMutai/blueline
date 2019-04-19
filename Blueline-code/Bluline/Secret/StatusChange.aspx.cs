/*
         
 *      Object: To change ticket status to Travelled.
*/
using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;
using System.Data.OleDb;


public partial class AdminArea_StatusChange : System.Web.UI.Page
{
    OleDbConnection con;
    OleDbCommand cmd;
    OleDbDataReader rea;
    protected void Page_Load(object sender, EventArgs e)
    {
        txtpnr.Focus();
        if (!Page.IsPostBack)
        {
            if (Request.QueryString["q"] != null)
            {
                lblerror.Text = "Status Change successfully.";
            }

        }
        else
        {
            lblerror.Text = "";
        }

    }
    protected void btnTravel_Click(object sender, EventArgs e)
    {
        if (litStatus.Text == "Travelled")
        {
            lblerror.Text = "This Ticket has been used already.";
            pnl1.Visible = true;
            pnl2.Visible = false;

        }
        else
        {
            DateTime tickettime = System.DateTime.Parse(littime.Text);
            int diffofdate = System.DateTime.Today.Date.CompareTo(System.DateTime.Parse(litdate.Text.ToString()));
            if (diffofdate >= 1)
            {
                lblerror.Text = "::You cannot Use the Back Date Ticket:: Thanks";
            }
            /*9:00:00PM";
             string timeofbus = littime.Text.Substring(1);
             string timeofbus = littime.Text.Substring(0, 1);
             string amorpm = littime.Text.Substring(8, 2);
             int diffofTime = System.DateTime.Today.TimeOfDay.CompareTo(TimeSpan.Parse(littime.Text));*/

            else if ((diffofdate == 0 && tickettime > System.DateTime.Now.AddHours(2.00)) || (diffofdate < 0))
            {


                string[] strseat = litseat.Text.Split(',');
                for (int j = 0; j < strseat.Length; j++)
                {


                    string strsql = "UPDATE States set " + strseat[j].ToString() + " = ''  where ((Date =  '" + litdate.Text
                        + "')and (Time='" + littime.Text
                        + "')and (Station ='" + litto.Text + "'))";
                    DB.ExecuteNonQuery(strsql);

                }

                string strsql1 = "Update passengerinfo set Status = 'Travel' where pnr ='" + litpnr.Text + "' ";
                DB.ExecuteNonQuery(strsql1);
                Response.Cookies["delpnr"].Value = litpnr.Text.ToString();
                Response.Redirect("StatusChange.aspx?q=1");

            }

        }

    }

    protected void btnshow_Click1(object sender, EventArgs e)
    {
        string strsql = "Select * from passengerinfo where Pnr = '" + txtpnr.Text.Trim() + "'";
        con = new OleDbConnection(DB.ConnectionString);
        cmd = new OleDbCommand();
        con.Open();
        cmd.Connection = con;
        cmd.CommandText = strsql;
        rea = cmd.ExecuteReader();
        if (rea.Read())
        {
            pnl2.Visible = true;
            pnl1.Visible = false;
            lblerror.Text = "";
            litpnr.Text = rea[0].ToString();
            litname.Text = rea[1].ToString();
            litph.Text = rea[2].ToString();
            litto.Text = rea[3].ToString();
            litfrom.Text = rea[4].ToString();
            litdate.Text = rea[5].ToString();
            littime.Text = rea[6].ToString();
            littotalseat.Text = rea[7].ToString();
            litseat.Text = rea[8].ToString();
            litrent.Text = rea[9].ToString();
            litagent.Text = rea[10].ToString();
            litStatus.Text = rea[11].ToString();
        }
        else
        {
            lblerror.Text = "Plz Enter the Corret Ticket Number";
            pnl1.Visible = true;
            pnl2.Visible = false;

        }
        con.Close();
    }
}
