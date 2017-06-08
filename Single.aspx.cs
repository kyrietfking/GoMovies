using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;
using System.IO;
using MathNet.Numerics.LinearAlgebra;

public partial class Single : System.Web.UI.Page
{
    string useremail;
    string username;
    string userLastname;
    string[] titles = new string[4];
    string[] scores = new string[4];
    protected void Page_Load(object sender, EventArgs e)
    {
       
        if (Session["email22"] != null)
        {
            useremail = Session["email22"].ToString();
            //显示个人信息
            SqlConnection myConnection = new SqlConnection(@"Data Source=DESKTOP-2PV1UGL\SQLEXPRESS;Initial Catalog=movieDb;Integrated Security=True");
            myConnection.Open();
            //显示电影操作
            string query = "select * from UserInfo1 where email ='" + useremail + "' ";//
            SqlCommand cmd = new SqlCommand(query, myConnection);
            SqlDataReader dr3 = cmd.ExecuteReader();
            while (dr3.Read()) //读取信息
            {
                username= dr3["username"].ToString();
                userLastname = dr3["userLastname"].ToString();
               
               
            }
            dr3.Close();

            myname.InnerText = userLastname.Trim() + username.Trim() + "的个人主页";
            pemail.InnerText = "个人邮箱（账户）：" + useremail;
            string mysrc = "~/images/" + username.Trim() + ".jpg";
            if (File.Exists(@mysrc))
            {
                myphoto.Src = "~/images/" + username.Trim() + ".jpg";
            }
            //显示最新创建的电影
            string query2 = "select * from Movies where uploadPerson ='" + useremail + "' order by id desc ";//
            SqlCommand cmd2 = new SqlCommand(query2, myConnection);
           SqlDataReader dr2 = cmd2.ExecuteReader();
           int i = 0;
           if (dr2.HasRows)
           {
               while (dr2.Read()) //读取信息
               {
                   titles[i] = dr2["title"].ToString();
                   scores[i] = dr2["score"].ToString();
                   i = i + 1;
                   if (i > 3) break;

               }
               dr2.Close();
               
               Img1.Src = "~/images/" + titles[0].Trim() + ".jpg";
               H1.InnerText = titles[0];
               A1.HRef = "Movie.aspx?name=" + titles[0] + "";
               Div1.InnerText = "评分: "+scores[0];
               if (i > 1)
               {
                   Img2.Src = "~/images/" + titles[1].Trim() + ".jpg";
                   H2.InnerText = titles[1];
                   A2.HRef = "Movie.aspx?name=" + titles[1] + "";
                   Div2.InnerText = "评分: " + scores[1];
                   if (i > 2)
                   {
                       Img3.Src = "~/images/" + titles[2].Trim() + ".jpg";
                       H3.InnerText = titles[2];
                       A3.HRef = "Movie.aspx?name=" + titles[2] + "";
                       Div3.InnerText = "评分: " + scores[2];

                       if (i > 3)
                       {
                           Img4.Src = "~/images/" + titles[3].Trim() + ".jpg";
                           H4.InnerText = titles[3];
                           A4.HRef = "Movie.aspx?name=" + titles[3] + "";
                           Div4.InnerText = "评分: " + scores[3];
                       }
                   }
               }


           }

           dr2.Close();

           //显示推荐电影操作
           string[] titles2 = new string[5];
           string query5 = "select top 5 * from Movies order by newid()";//
           SqlCommand cmd5 = new SqlCommand(query5, myConnection);
           SqlDataReader dr5 = cmd5.ExecuteReader();
           int k = 0;

           while (dr5.Read()) //读取信息
           {
               titles2[k] = dr5["title"].ToString();

               k++;
               if (k > 4) break;

           }


           dr5.Close();

           //titles[0] = "Lethal Weapon 4";

           img5.Src = "~/images/" + titles2[0].Trim() + ".jpg";
           H5.InnerText = titles2[0];
           a5.HRef = "Movie.aspx?name=" + titles2[0] + "";

           img6.Src = "~/images/" + titles2[1].Trim() + ".jpg";
           H6.InnerText = titles2[1];
           a6.HRef = "Movie.aspx?name=" + titles2[1] + "";

           img7.Src = "~/images/" + titles2[2].Trim() + ".jpg";
           H7.InnerText = titles2[2];
           a7.HRef = "Movie.aspx?name=" + titles2[2] + "";

           img8.Src = "~/images/" + titles2[3].Trim() + ".jpg";
           H8.InnerText = titles2[3];
           a8.HRef = "Movie.aspx?name=" + titles2[3] + "";

           img9.Src = "~/images/" + titles2[4].Trim() + ".jpg";
           H9.InnerText = titles2[4];
           a9.HRef = "Movie.aspx?name=" + titles2[4] + "";

          

               myConnection.Close();

           

        }



    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        
    }

    public void myfunction() {
        int userNum;
        int movieNum;
        SqlConnection myConnection = new SqlConnection(@"Data Source=DESKTOP-2PV1UGL\SQLEXPRESS;Initial Catalog=movieDb;Integrated Security=True");
        myConnection.Open();
        //查阅数据库中的电影与用户条数
        string query1 = "Select Count(*) From UserInfo1 ";
        string query2 = "Select Count(*) From Movies ";

        SqlCommand cmd1 = myConnection.CreateCommand();
        cmd1.CommandText = query1;
        SqlCommand cmd2 = myConnection.CreateCommand();
        cmd2.CommandText = query2;

        userNum = (int)cmd1.ExecuteScalar();
        movieNum = (int)cmd2.ExecuteScalar();

          string[] moviesList = new string[movieNum];
          string[] userList = new string[userNum];
        //取出所有电影放入数组
          string query3 = "select * from Movies";//
          SqlCommand cmd3 = new SqlCommand(query3, myConnection);
          SqlDataReader dr3 = cmd3.ExecuteReader();
          int mi = 0;
          while (dr3.Read()) //读取信息
          {
              moviesList[mi] = dr3["title"].ToString();
              mi++;

          }
          dr3.Close();
        //取出所有用户放入数组
          string query4 = "select * from UserInfo1";//
          SqlCommand cmd4 = new SqlCommand(query4, myConnection);
          SqlDataReader dr4 = cmd4.ExecuteReader();
          int ui = 0;
          while (dr4.Read()) //读取信息
          {
              userList[ui] = dr4["email"].ToString();
              ui++;

          }
          dr4.Close();


        double[,] myMatrix = new double[movieNum,userNum];
        string[,] myQuery = new string[movieNum,userNum];
        string myQuerykk,myuser,mymovie;
        
        for (int i = 0; i < movieNum; i++ )
        {
            for (int j = 0; j < userNum; j++)
            {
                myuser = userList[j];
                mymovie = moviesList[i];
               
                
                myQuerykk = "Select * From score where filmname = '"+mymovie+"' and email = '"+myuser+"' ";
                SqlCommand cmd100 = new SqlCommand(myQuerykk, myConnection);
                SqlDataReader dr100 = cmd100.ExecuteReader();
                
                if (dr100.HasRows)
                {
                    double myscore = 0;
                    int k = 0;
                    while (dr100.Read()) //读取信息
                    {

                         myscore = (k * myscore + dr100.GetInt32(dr100.GetOrdinal("score"))) / (k + 1);
                         k++;
                    }
                    myMatrix[i, j] = myscore;
                }
                else {
                    myMatrix[i, j] = 0;
                }
                dr100.Close();
            }
        }

       
        myConnection.Close();
        
        Response.Write(moviesList[64]);

        //函数计算
        var M = Matrix<double>.Build;

        double[,] y = new double[movieNum,userNum];

        double[,] r = new double[movieNum,userNum];
        for (int i = 0; i < movieNum; i++)
        {
            for (int j = 0; j < userNum; j++)
            {
                y[i, j] = myMatrix[i, j];
                if (y[i, j] == 0)
                {
                    r[i, j] = 0;
                }
                else {
                    r[i, j] = 1;
                }
            }
        }
    
        var Y = Matrix<double>.Build.DenseOfArray(y);
        var R = Matrix<double>.Build.DenseOfArray(r);


        int maxIter = 5000;
        double tol = 10.0;
        int feature = 10;
        double lambda = 0.05;

        var X = M.Random(Y.RowCount, feature);
        var Theta = M.Random(Y.ColumnCount, feature);


        var num_movies = Y.RowCount;
        var num_users = Y.ColumnCount;

        var X_grad = M.Dense(num_movies, feature);
        var Theta_grad = M.Dense(num_movies, feature);
        X_grad.Clear(); Theta_grad.Clear();


        for (int iterNum = 0; iterNum < maxIter; iterNum++)
        {

            for (int i = 0; i < num_movies; i++)
            {
                List<int> idx = new List<int>();

                for (int j = 0; j < num_users; j++)
                {
                    if (R[i, j] == 1)
                        idx.Add(j);
                }
                int[] Idx = idx.ToArray();

                

                var ThetaTmp = M.Dense(Idx.Length, feature);
                var YTmp = M.Dense(1, Idx.Length);

                for (int ct = 0; ct < Idx.Length; ct++)
                {
                    ThetaTmp.SetRow(ct, Theta.Row(Idx[ct]));
                    YTmp[0, ct] = Y[i, Idx[ct]];

                }


                var g = ((M.DenseOfRowVectors(X.Row(i)) * ThetaTmp.Transpose() - YTmp) * ThetaTmp).Row(0) + lambda * X.Row(i);
                X_grad.SetRow(i, g);

            }

            for (int j = 0; j < num_users; j++)
            {
                List<int> idx = new List<int>();

                for (int i = 0; i < num_movies; i++)
                {
                    if (R[i, j] == 1)
                        idx.Add(i);
                }
                int[] Idx = idx.ToArray();
                if (Idx.Length <= 0) Response.Write(Idx.Length);

                var XTmp = M.Dense(Idx.Length, feature);
                var YTmp = M.Dense(Idx.Length, 1);

                for (int ct = 0; ct < Idx.Length; ct++)
                {
                    XTmp.SetRow(ct, X.Row(Idx[ct]));
                    YTmp[ct, 0] = Y[Idx[ct], j];
                }

                var g = ((M.DenseOfRowVectors(Theta.Row(j)) * XTmp.Transpose() - YTmp.Transpose()) * XTmp).Row(0) + lambda * Theta.Row(j);
                Theta_grad.SetRow(j, g);
            }

            double learningRate = 0.005;

            Theta -= learningRate * Theta_grad;
            X -= learningRate * X_grad;
        }

        Response.Write(X);
       




    }

    protected void Button1_Click1(object sender, EventArgs e)
    {
        SqlConnection myConnection = new SqlConnection(@"Data Source=DESKTOP-2PV1UGL\SQLEXPRESS;Initial Catalog=movieDb;Integrated Security=True");
        myConnection.Open();
        string[] titles2 = new string[5];
        string query5 = "select top 5 * from Movies order by newid()";//
        SqlCommand cmd5 = new SqlCommand(query5, myConnection);
        SqlDataReader dr5 = cmd5.ExecuteReader();
        int k = 0;

        while (dr5.Read()) //读取信息
        {
            titles2[k] = dr5["title"].ToString();

            k++;
            if (k > 4) break;

        }


        dr5.Close();

        //titles[0] = "Lethal Weapon 4";

        img5.Src = "~/images/" + titles2[0].Trim() + ".jpg";
        H5.InnerText = titles2[0];
        a5.HRef = "Movie.aspx?name=" + titles2[0] + "";

        img6.Src = "~/images/" + titles2[1].Trim() + ".jpg";
        H6.InnerText = titles2[1];
        a6.HRef = "Movie.aspx?name=" + titles2[1] + "";

        img7.Src = "~/images/" + titles2[2].Trim() + ".jpg";
        H7.InnerText = titles2[2];
        a7.HRef = "Movie.aspx?name=" + titles2[2] + "";

        img8.Src = "~/images/" + titles2[3].Trim() + ".jpg";
        H8.InnerText = titles2[3];
        a8.HRef = "Movie.aspx?name=" + titles2[3] + "";

        img9.Src = "~/images/" + titles2[4].Trim() + ".jpg";
        H9.InnerText = titles2[4];
        a9.HRef = "Movie.aspx?name=" + titles2[4] + "";

        myConnection.Close();
    }



    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("CreateMovie.aspx");
    }
}