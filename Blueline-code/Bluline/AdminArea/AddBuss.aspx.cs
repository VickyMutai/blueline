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

public partial class AdminArea_AddBuss : System.Web.UI.Page
{
    OleDbCommand cmd;
    OleDbConnection con; 
   /* protected void Page_Load(object sender, EventArgs e)
    {
        lblError.Text = "";
        CreateUserWizard1.Focus();
    }

    protected void CreateUserWizard1_CreatingUser(object sender, LoginCancelEventArgs e)
    {
        Page.Validate();

        if (Page.IsValid)
        {
            /* string qry = "select count(*) from UserInfo where [UserName]='" + CreateUserWizard1.UserName.Trim() + "'";
             if (Convert.ToInt32(DB.ExecuteScaler(qry)) > 0)
             {
                
                 lblError.Text = "This user name is not available.";
                 e.Cancel = true;
                 return; 
             }          
            string qry = "insert into Time_list (station_name,Rate_per_seat,Time,Reach_time,Bus_number) values ('{0}','{1}','{2}','{3}')";
            qry = String.Format(qry, CreateUserWizard1.Station,
                CreateUserWizard1.Password,
                CreateUserWizard1.Question,
                CreateUserWizard1.Answer,
                CreateUserWizard1.Email);
            try
            {
                DB.ExecuteNonQuery(qry);
                Response.Redirect("AddBus.aspx");
            }
            catch (Exception)
            {

            }
        }
        e.Cancel = true;
    }*/
protected void btnSave_Click(object sender, EventArgs e)
{
    string qry = "Insert Into Time_list values ('" + txtName.Text.ToString() + "','" + txtfare.Text.ToString() +"','"+txtTime.Text.ToString()+"','"+txtArrivalTime.Text.ToString()+"','"+txtBussNumber.Text.ToString()+"')";
     using (con = new OleDbConnection(DB.ConnectionString))
     {
         cmd = new OleDbCommand();
         con.Open();
         cmd.Connection = con;
         cmd.CommandText = qry;
         cmd.ExecuteNonQuery();

     }
     Response.Redirect("HomeForAdmin.aspx");
}
}