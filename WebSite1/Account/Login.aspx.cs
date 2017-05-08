using Microsoft.AspNet.Identity;
using Microsoft.Owin.Security;
using System;
using System.Web;
using System.Web.UI;
using System.Text;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using App_Code.Database;
using WebSite1;

public partial class Account_Login : Page
{
        protected void Page_Load(object sender, EventArgs e)
        {
            RegisterHyperLink.NavigateUrl = "Register";
            OpenAuthLogin.ReturnUrl = Request.QueryString["ReturnUrl"];
            var returnUrl = HttpUtility.UrlEncode(Request.QueryString["ReturnUrl"]);
            if (!String.IsNullOrEmpty(returnUrl))
            {
                RegisterHyperLink.NavigateUrl += "?ReturnUrl=" + returnUrl;
            }
        }

        protected void LogIn(object sender, EventArgs e)
        {
            //if (IsValid)
            //{
            //    // Validate the user password
            var manager = new UserManager();
            ApplicationUser user = manager.Find(UserName.Text, Password.Text);
            //    if (user != null)
            //    {
            //        IdentityHelper.SignIn(manager, user, RememberMe.Checked);
            //        IdentityHelper.RedirectToReturnUrl(Request.QueryString["ReturnUrl"], Response);
            //    }
            //    else
            //    {
            //        FailureText.Text = "Invalid username or password.";
            //        ErrorMessage.Visible = true;
            //    }
            //}
            if(IsValid)
            {
                DatabaseAction dbaction = new DatabaseAction();
                bool isSuccess = dbaction.CheckIn(UserName.Text, Password.Text);
                if (isSuccess)
                {
                    IdentityHelper.RedirectToReturnUrl(Request.QueryString["ReturnUrl"], Response);
                    return;
                }
                else
                {
                    FailureText.Text = "Invalid username or password.";
                    ErrorMessage.Visible = true;
                }
            }
            //DatabaseAction dbaction = new DatabaseAction();
            //if(dbaction.IsExist("UserName", "Users", "song"))
            //{
            //    return;
            //}
        }
}

 