using Microsoft.AspNet.Identity;
using System;
using System.Linq;
using System.Web.UI;
using WebSite1;
using App_Code.Database;

public partial class Account_Register : Page
{
    protected void CreateUser_Click(object sender, EventArgs e)
    {
        DatabaseAction dbaction = new DatabaseAction();
        bool IsSuccess = dbaction.CreatAccount(UserName.Text, Password.Text);
        if(IsSuccess)
        {
            //success
            IdentityHelper.RedirectToReturnUrl(Request.QueryString["ReturnUrl"], Response);
        }
        else
        {
            ErrorMessage.Text = "This username has bee taken up by others!";
        }
        //var manager = new UserManager();
        //var user = new ApplicationUser() { UserName = UserName.Text };
        //IdentityResult result = manager.Create(user, Password.Text);
        //if (result.Succeeded)
        //{
        //    IdentityHelper.SignIn(manager, user, isPersistent: false);
        //    IdentityHelper.RedirectToReturnUrl(Request.QueryString["ReturnUrl"], Response);
        //}
        //else
        //{
        //    ErrorMessage.Text = result.Errors.FirstOrDefault();
        //}
    }
}