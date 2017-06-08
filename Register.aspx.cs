using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Web.Security;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.Sql;
using System.Data.SqlClient;
using App_Code;

public partial class Register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
        
    }
    


       
    




protected void Button1_Click(object sender, EventArgs e)
{

    if (password.Value != confirmpassword.Value)
    {


        return;
    }


    

            string user = firstname.Value;
            string lastname1 = lastname.Value;
            string pass = password.Value;
            string email = emailaddress.Value;
            
           
                SqlConnection myConnection = new SqlConnection(@"Data Source=DESKTOP-2PV1UGL\SQLEXPRESS;Initial Catalog=movieDb;Integrated Security=True");
                string query = "insert into UserInfo1(username,userLastname,userpass,email) values('" + user + "','" + lastname1 + "','" + pass + "','" + email + "');";
                myConnection.Open();



                try
                {
                    SqlCommand cmd = new SqlCommand(query, myConnection);
                    cmd.ExecuteNonQuery();
                    Response.Write("注册成功，点击登陆按钮进行登陆");
                }


                catch
                {
                    Response.Write("数据录入失败");
                }

                finally
                {
                    myConnection.Close();

                    
                }
                Session.Add("email22",email);
                Response.Redirect("~/Home.aspx?email=" + email + "&first=" + user + "&last=" + lastname1);
       


}
protected void Button2_Click(object sender, EventArgs e)
{
    Response.Redirect("Home.aspx");
}
}


