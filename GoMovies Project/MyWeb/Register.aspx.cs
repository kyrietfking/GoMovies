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
        
        //Page.Response.Buffer = false;
        //Page.Response.Cache.SetNoStore();
    }
    protected void submitregister(object sender, EventArgs e)
    {
        if(password.Value!=confirmpassword.Value)
        {
            //errormsg.Text = "The two passwords must be identical";
         
            return;
        }
        DatabaseAction dbaction = new DatabaseAction();
        bool IsSuccess = dbaction.CreatAccount(emailaddress.Value, firstname.Value, password.Value);

        if (IsSuccess)
        {
            //success
            //do something
            Response.Redirect("~/Home.aspx");
        }
        else
        {
            string StrScript;
            StrScript = ("<script language=javascript>");
            StrScript += ("alert('" + "Your Email address has been registered!" + "');");
            StrScript += ("</script>");
            System.Web.HttpContext.Current.Response.Write(StrScript);

        }
            ;


       
    }




}


