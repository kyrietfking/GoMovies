using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;

public partial class Home : System.Web.UI.Page
{
    string type = "1" ;
    string[] titles = new string[10];
    string[] paths = new string[10];
     
  
    protected void Page_Load(object sender, EventArgs e)
    {
        type = Request.QueryString["type"];
        
        //判断用户session是否为空
        if (Session["email22"] != null)
        {
            Label1.Text = "Welcome! " + Session["email22"].ToString();
            alink.HRef = "#";
            Button1.Visible = true;
            personal.Visible = true;
        }
        else
        {
            Label1.Text = "注册/登录";
            alink.HRef = "login.aspx";
            Button1.Visible = false;
            personal.Visible = false;
            
        }

        SqlConnection myConnection = new SqlConnection(@"Data Source=DESKTOP-2PV1UGL\SQLEXPRESS;Initial Catalog=movieDb;Integrated Security=True");

        myConnection.Open();
        //显示电影操作
        string query = "select top 10 * from Movies where type='" + type + "' order by id desc ";//
        SqlCommand cmd = new SqlCommand(query, myConnection);
        SqlDataReader dr3 = cmd.ExecuteReader();
        int i = 0;
        if (dr3.HasRows)
        {
            while (dr3.Read()) //读取信息
            {
                titles[i] = dr3["title"].ToString();
                paths[i] = dr3["imagePath"].ToString();
                i = i + 1;
                if (i > 9) break;

            }


            dr3.Close();
            myConnection.Close();
            //titles[0] = "Lethal Weapon 4";

            img1.Src = "~/images/" + titles[0].Trim() + ".jpg";
            H1.InnerText = titles[0];
            a1.HRef = "Movie.aspx?name=" + titles[0] + "";

            img2.Src = "~/images/" + titles[1].Trim() + ".jpg";
            H2.InnerText = titles[1];
            a2.HRef = "Movie.aspx?name=" + titles[1] + "";

            img3.Src = "~/images/" + titles[2].Trim() + ".jpg";
            H3.InnerText = titles[2];
            a3.HRef = "Movie.aspx?name=" + titles[2] + "";

            img4.Src = "~/images/" + titles[3].Trim() + ".jpg";
            H4.InnerText = titles[3];
            a4.HRef = "Movie.aspx?name=" + titles[3] + "";

            img5.Src = "~/images/" + titles[4].Trim() + ".jpg";
            H5.InnerText = titles[4];
            a5.HRef = "Movie.aspx?name=" + titles[4] + "";

            img6.Src = "~/images/" + titles[5].Trim() + ".jpg";
            H6.InnerText = titles[5];
            a6.HRef = "Movie.aspx?name=" + titles[5] + "";

            img7.Src = "~/images/" + titles[6].Trim() + ".jpg";
            H7.InnerText = titles[6];
            a7.HRef = "Movie.aspx?name=" + titles[6] + "";

            img8.Src = "~/images/" + titles[7].Trim() + ".jpg";
            H8.InnerText = titles[7];
            a8.HRef = "Movie.aspx?name=" + titles[7] + "";

            img9.Src = "~/images/" + titles[8].Trim() + ".jpg";
            H9.InnerText = titles[8];
            a9.HRef = "Movie.aspx?name=" + titles[8] + "";

            img10.Src = "~/images/" + titles[9].Trim() + ".jpg";
            H10.InnerText = titles[9];
            a10.HRef = "Movie.aspx?name=" + titles[9] + "";




        }

    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        Session.Remove("email22");
        Response.Redirect("Category.aspx");
    }

   
}