using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string user = emailaddress.Text;
       
        string pass = password.Text;

        SqlConnection myConnection = new SqlConnection(@"Data Source=DESKTOP-2PV1UGL\SQLEXPRESS;Initial Catalog=movieDb;Integrated Security=True");
        string query = "Select Count(*) From UserInfo1 Where email = '" + user + "' And userpass = '" + pass + "'";
        myConnection.Open();
        SqlCommand cmd = myConnection.CreateCommand();
        cmd.CommandText = query;

        int ret = (int)cmd.ExecuteScalar();

        if (ret > 0)
        {
            Session.Add("email22", user);
            Response.Redirect("~/Home.aspx");
           
        }
        else
        {
            Response.Write("Invalid credentials");
        }


        myConnection.Close();
    }
}