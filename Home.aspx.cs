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
    protected void Page_Load(object sender, EventArgs e)
    {
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
        //显示高分电影操作
        string[] titles = new string[8];
        string query = "select top 8 * from Movies order by score desc";//
        SqlCommand cmd = new SqlCommand(query, myConnection);
        SqlDataReader dr = cmd.ExecuteReader();
        int i = 0;
        
            while (dr.Read()) //读取信息
            {
                titles[i] = dr["title"].ToString();

                i = i + 1;
                if (i > 7) break;

            }


            dr.Close();
            
            //titles[0] = "Lethal Weapon 4";

            img1.Src = "~/images/" + titles[0].Trim() + ".jpg";
            H1.InnerText = titles[0];
            a8.HRef = "Movie.aspx?name=" + titles[0] + "";

            img2.Src = "~/images/" + titles[1].Trim() + ".jpg";
            H2.InnerText = titles[1];
            a9.HRef = "Movie.aspx?name=" + titles[1] + "";

            img3.Src = "~/images/" + titles[2].Trim() + ".jpg";
            H3.InnerText = titles[2];
            a10.HRef = "Movie.aspx?name=" + titles[2] + "";

            img4.Src = "~/images/" + titles[3].Trim() + ".jpg";
            H4.InnerText = titles[3];
            a11.HRef = "Movie.aspx?name=" + titles[3] + "";

            img5.Src = "~/images/" + titles[4].Trim() + ".jpg";
            H5.InnerText = titles[4];
            a12.HRef = "Movie.aspx?name=" + titles[4] + "";

            img6.Src = "~/images/" + titles[5].Trim() + ".jpg";
            H6.InnerText = titles[5];
            a13.HRef = "Movie.aspx?name=" + titles[5] + "";

            img7.Src = "~/images/" + titles[6].Trim() + ".jpg";
            H7.InnerText = titles[6];
            a14.HRef = "Movie.aspx?name=" + titles[6] + "";

            img8.Src = "~/images/" + titles[7].Trim() + ".jpg";
            H8.InnerText = titles[7];
            a15.HRef = "Movie.aspx?name=" + titles[7] + "";

       

        //显示热门电影操作
        string[] titles1 = new string[8];
        string query1 = "select top 8 * from Movies order by newid()";//
        SqlCommand cmd1 = new SqlCommand(query1, myConnection);
        SqlDataReader dr1 = cmd1.ExecuteReader();
        int j = 0;

        while (dr1.Read()) //读取信息
        {
            titles1[j] = dr1["title"].ToString();

            j++;
            if (j > 7) break;

        }


        dr1.Close();

        //titles[0] = "Lethal Weapon 4";

        img9.Src = "~/images/" + titles1[0].Trim() + ".jpg";
        H9.InnerText = titles1[0];
        a16.HRef = "Movie.aspx?name=" + titles1[0] + "";

        img10.Src = "~/images/" + titles1[1].Trim() + ".jpg";
        H10.InnerText = titles1[1];
        a17.HRef = "Movie.aspx?name=" + titles1[1] + "";

        img11.Src = "~/images/" + titles1[2].Trim() + ".jpg";
        H11.InnerText = titles1[2];
        a18.HRef = "Movie.aspx?name=" + titles1[2] + "";

        img12.Src = "~/images/" + titles1[3].Trim() + ".jpg";
        H12.InnerText = titles1[3];
        a19.HRef = "Movie.aspx?name=" + titles1[3] + "";

        img13.Src = "~/images/" + titles1[4].Trim() + ".jpg";
        H13.InnerText = titles1[4];
        a20.HRef = "Movie.aspx?name=" + titles1[4] + "";

        img14.Src = "~/images/" + titles1[5].Trim() + ".jpg";
        H14.InnerText = titles1[5];
        a21.HRef = "Movie.aspx?name=" + titles1[5] + "";

        img15.Src = "~/images/" + titles1[6].Trim() + ".jpg";
        H15.InnerText = titles1[6];
        a22.HRef = "Movie.aspx?name=" + titles1[6] + "";

        img16.Src = "~/images/" + titles1[7].Trim() + ".jpg";
        H16.InnerText = titles1[7];
        a23.HRef = "Movie.aspx?name=" + titles1[7] + "";


        //显示推荐电影操作
        string[] titles2 = new string[7];
        string query2 = "select top 7 * from Movies order by newid()";//
        SqlCommand cmd2 = new SqlCommand(query2, myConnection);
        SqlDataReader dr2 = cmd2.ExecuteReader();
        int k = 0;

        while (dr2.Read()) //读取信息
        {
            titles2[k] = dr2["title"].ToString();

            k++;
            if (k > 6) break;

        }


        dr2.Close();

        //titles[0] = "Lethal Weapon 4";

        img17.Src = "~/images/" + titles2[0].Trim() + ".jpg";
        H17.InnerText = titles2[0];
        a24.HRef = "Movie.aspx?name=" + titles2[0] + "";

        img18.Src = "~/images/" + titles2[1].Trim() + ".jpg";
        H18.InnerText = titles2[1];
        a25.HRef = "Movie.aspx?name=" + titles2[1] + "";

        img19.Src = "~/images/" + titles2[2].Trim() + ".jpg";
        H19.InnerText = titles2[2];
        a26.HRef = "Movie.aspx?name=" + titles2[2] + "";

        img20.Src = "~/images/" + titles2[3].Trim() + ".jpg";
        H20.InnerText = titles2[3];
        a27.HRef = "Movie.aspx?name=" + titles2[3] + "";

        img21.Src = "~/images/" + titles2[4].Trim() + ".jpg";
        H21.InnerText = titles2[4];
        a28.HRef = "Movie.aspx?name=" + titles2[4] + "";

        img22.Src = "~/images/" + titles2[5].Trim() + ".jpg";
        H22.InnerText = titles2[5];
        a29.HRef = "Movie.aspx?name=" + titles2[5] + "";

        img23.Src = "~/images/" + titles2[6].Trim() + ".jpg";
        H23.InnerText = titles2[6];
        a30.HRef = "Movie.aspx?name=" + titles2[6] + "";










    myConnection.Close();



   }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Session.Remove("email22");
        Response.Redirect("Home.aspx");
    }
    
}