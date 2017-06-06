using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using App_Code;
using System.Data;
public partial class Movie : System.Web.UI.Page
{
    DatabaseAction dbaction = new DatabaseAction();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    public string ShowMovie()
    {
        string movietitle = HttpContext.Current.Request.Cookies["title"].Value;
        DataSet dtset = dbaction.ShowByTitle(movietitle);//MovieTitle,MovieDirector,MovieNation,MovieLanguage,MovieLength,

        title.InnerHtml = ((string)dtset.Tables[0].Rows[0]["MovieTitle"]).Replace(" ", "");
        director.InnerHtml = ((string)dtset.Tables[0].Rows[0]["MovieDirector"]).Replace(" ", "");
        nation.InnerHtml = ((string)dtset.Tables[0].Rows[0]["MovieDirector"]).Replace(" ", "");
        language.InnerHtml = ((string)dtset.Tables[0].Rows[0]["MovieLanguage"]).Replace(" ", "");
        length.InnerHtml = ((string)dtset.Tables[0].Rows[0]["MovieLength"]).Replace(" ", "");
        introduction.InnerHtml = ((string)dtset.Tables[0].Rows[0]["MovieIntroduction"]).Replace(" ", "");
        movieimage.Src = ((string)dtset.Tables[0].Rows[0]["MovieImage"]).Replace(" ", "");
        return "";
    }
}