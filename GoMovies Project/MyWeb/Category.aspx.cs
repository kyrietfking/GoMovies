using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;
using App_Code;
using System.IO;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Windows.Forms;
using System.Windows;


public partial class Home : System.Web.UI.Page
{
    DatabaseAction dbaction = new DatabaseAction();


    protected void Page_Load(object sender, EventArgs e)
    {
        //dbaction.ShowByCategory("comedy");
     

    }
    public bool IsValidCategory(string category)
    {
        return (category == "comedy") ||
            (category == "action") ||
            (category == "romance") ||
            (category == "science") || (category == "horror")
            || (category == "feature") || 
            (category == "micro");

    }
    public string ShowCategory()
    {
        string category = HttpContext.Current.Request.Cookies["category"].Value;

        //string cat = HttpUtility.UrlDecode(category, System.Text.Encoding.Default);
        if(!IsValidCategory(category))
        {
            //default homepage;
            return "";
        }
        DataSet dtset = dbaction.ShowByCategory(category);

        if(dtset.Tables[0].Rows.Count<10)
        {
            string StrScript;
            StrScript = ("<script language=javascript>");
            StrScript += ("alert('" + "no enough movies!" + "');");
            StrScript += ("</script>");
            System.Web.HttpContext.Current.Response.Write(StrScript);
            return "";
        }
            
        image1.Src = ((string)dtset.Tables[0].Rows[0]["MovieImage"]).Replace(" ", "");
        image2.Src = ((string)dtset.Tables[0].Rows[1]["MovieImage"]).Replace(" ", "");
        image3.Src = ((string)dtset.Tables[0].Rows[2]["MovieImage"]).Replace(" ", "");
        image4.Src = ((string)dtset.Tables[0].Rows[3]["MovieImage"]).Replace(" ", "");
        image5.Src = ((string)dtset.Tables[0].Rows[4]["MovieImage"]).Replace(" ", "");
        image6.Src = ((string)dtset.Tables[0].Rows[5]["MovieImage"]).Replace(" ", "");
        image7.Src = ((string)dtset.Tables[0].Rows[6]["MovieImage"]).Replace(" ", "");
        image8.Src = ((string)dtset.Tables[0].Rows[7]["MovieImage"]).Replace(" ", "");
        image9.Src = ((string)dtset.Tables[0].Rows[8]["MovieImage"]).Replace(" ", "");
        image10.Src = ((string)dtset.Tables[0].Rows[9]["MovieImage"]).Replace(" ", "");

        title1st.InnerHtml = ((string)dtset.Tables[0].Rows[0]["MovieTitle"]).Replace(" ", "");
        title2nd.InnerHtml = ((string)dtset.Tables[0].Rows[1]["MovieTitle"]).Replace(" ", "");
        title3rd.InnerHtml = ((string)dtset.Tables[0].Rows[2]["MovieTitle"]).Replace(" ", "");
        title4th.InnerHtml = ((string)dtset.Tables[0].Rows[3]["MovieTitle"]).Replace(" ", "");
        title5th.InnerHtml = ((string)dtset.Tables[0].Rows[4]["MovieTitle"]).Replace(" ", "");
        title6th.InnerHtml = ((string)dtset.Tables[0].Rows[5]["MovieTitle"]).Replace(" ", "");
        title7th.InnerHtml = ((string)dtset.Tables[0].Rows[6]["MovieTitle"]).Replace(" ", "");
        title8th.InnerHtml = ((string)dtset.Tables[0].Rows[7]["MovieTitle"]).Replace(" ", "");
        title9th.InnerHtml = ((string)dtset.Tables[0].Rows[8]["MovieTitle"]).Replace(" ", "");
        title10th.InnerHtml = ((string)dtset.Tables[0].Rows[9]["MovieTitle"]).Replace(" ", "");
   
        //image1.Src = "images/10.jpg";
        //dtset.Tables[0].Rows[1].ItemArray[1]

        return "";

    }

    //private string unescape(string s)
    //{

    //    string str = s.Remove(0, 2);//删除最前面两个＂%u＂  
    //    string[] strArr = str.Split(new string[] { "%u" }, StringSplitOptions.None);//以子字符串＂%u＂分隔  
    //    byte[] byteArr = new byte[strArr.Length * 2];
    //    for (int i = 0, j = 0; i < strArr.Length; i++, j += 2)
    //    {
    //        byteArr[j + 1] = Convert.ToByte(strArr[i].Substring(0, 2), 16);  //把十六进制形式的字串符串转换为二进制字节  
    //        byteArr[j] = Convert.ToByte(strArr[i].Substring(2, 2), 16);
    //    }
    //    str = System.Text.Encoding.Unicode.GetString(byteArr);　//把字节转为unicode编码  
    //    return str;

    //}  

}