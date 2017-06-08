using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;
using System.IO;
using System.Text;
using System.Threading.Tasks;

public partial class Movie : System.Web.UI.Page
{
    string filmName;
    string useremail; 
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["email22"] != null)
        {
            useremail = Session["email22"].ToString();
            Label2.Text = "Welcome! " + Session["email22"].ToString();
            alink.HRef = "#";
            Button1.Visible = true;
        }
        else
        {
            Label2.Text = "注册/登录";
            alink.HRef = "login.aspx";
            Button1.Visible = false;

        }

         filmName = Request.QueryString["name"];
     
        SqlConnection myConnection = new SqlConnection(@"Data Source=DESKTOP-2PV1UGL\SQLEXPRESS;Initial Catalog=movieDb;Integrated Security=True");

        myConnection.Open();
        //显示电影操作
        string query = "select * from Movies where title='" + filmName + "' ";//
        SqlCommand cmd = new SqlCommand(query,myConnection);
        SqlDataReader dr3 = cmd.ExecuteReader();
        while (dr3.Read()) //读取信息
        {
            title.Text = dr3["title"].ToString();
            director.Text = dr3["director"].ToString();
            nation.Text = dr3["nation"].ToString();
            language.Text = dr3["language"].ToString();
            length.Text = dr3["length"].ToString()+"(分钟)";
            pppp.InnerText = dr3["description"].ToString();
            string photoName = dr3["imagePath"].ToString();
            Image1.ImageUrl = "~/images/"+filmName+".jpg";           
        }
        dr3.Close();

        //评分筛选操作
        double myscore = 0;
        int i = 0;
        string query2 = "Select * From score where filmname = '" +title.Text + "'";
        SqlCommand cmd2 = new SqlCommand(query2, myConnection);
        SqlDataReader dr2 = cmd2.ExecuteReader();

        if (dr2.HasRows)
        {
            while (dr2.Read()) //读取信息
            {

                myscore = (i * myscore + dr2.GetInt32(dr2.GetOrdinal("score"))) / (i + 1);
                i = i + 1;

            }

            string hahaha = myscore.ToString("0.0");
            double hehehe = Convert.ToDouble(hahaha);

            dr2.Close();
            //提交评分操作
            string query6 = "UPDATE Movies SET score = '" + hehehe + "' where title = '" + title.Text + "' ";
            SqlCommand cmd6 = new SqlCommand(query6, myConnection);
            cmd6.ExecuteNonQuery();
        }
        dr2.Close();
        Label3.Text = myscore.ToString("0.0");

        //显示标签操作
                string query5 = "select * from tags where filmname='" + filmName + "'";
                SqlCommand cmd5 = new SqlCommand(query5, myConnection);
                SqlDataReader dr5 = cmd5.ExecuteReader();
                if (dr5.HasRows)
                {
                    int comedy=0,action=0,love1=0,science=0,terror=0,scene=0,micro=0;
                    
                   
                    string label1="喜剧", label2="动作", label3="爱情6";

                      //显示标签
                    t1.Visible = true;
                    t2.Visible = true;
                    t3.Visible = true;
                    while (dr5.Read()) //读取信息
                    {
                         comedy = dr5.GetInt32(dr5.GetOrdinal("comedy"));
                         action = dr5.GetInt32(dr5.GetOrdinal("action"));
                         love1 = dr5.GetInt32(dr5.GetOrdinal("love"));
                         terror = dr5.GetInt32(dr5.GetOrdinal("terror"));
                         science = dr5.GetInt32(dr5.GetOrdinal("science"));
                         scene = dr5.GetInt32(dr5.GetOrdinal("scene"));
                         micro = dr5.GetInt32(dr5.GetOrdinal("micro"));
                    }
                    dr5.Close();
                    Dictionary<string, int> tags = new Dictionary<string, int>();
                    tags.Add(" 喜剧",comedy);
                    tags.Add("动作",action);
                    tags.Add( "爱情",love1);
                    tags.Add( "科幻",science);
                    tags.Add( "恐怖",terror);
                    tags.Add( "情景",scene);
                    tags.Add( "微型",micro);

                    tags = (from tag in tags orderby tag.Value descending select tag).ToDictionary(tag => tag.Key, tag => tag.Value);
                    tags = tags.Take(3).ToDictionary(tag => tag.Key, tag => tag.Value);

                    int j = 0;
                    string[] labels = new string[3];
                    foreach (KeyValuePair<string, int> kvp in tags)
                    {
                        labels[j] = kvp.Key;
                        j++;
                    }
                   
                    t1.Text = labels[0];
                    t2.Text = labels[1];
                    t3.Text = labels[2];


                }

                myConnection.Close();

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Session.Remove("email22");
        Response.Redirect("Category.aspx");
    }

    //提交评价函数
    protected void submit2_Click(object sender, EventArgs e)
    {
        int submitscore = 0;
        int comedy = 0;
        int action = 0;
        int love = 0;
        int science = 0;
        int terror = 0;
        int scene = 0;
        int micro = 0;
        bool k = false;
        bool t = false;

        if (p1.Checked)
        {
            submitscore = 1;
             k = true;
        }
        else if (p2.Checked) {
            submitscore = 2;
             k = true;
        }
        else if (p3.Checked)
        {
            submitscore = 3;
             k = true;
        }
        else if (p4.Checked)
        {
            submitscore = 4;
            k = true;
        }
        else if (p5.Checked)
        {
            submitscore = 5;
            k = true;
        }


        if (CheckBox1.Checked) { comedy = 1; t = true; }
        if (CheckBox2.Checked) { action = 1; t = true; }
        if (CheckBox3.Checked) { love = 1; t = true; }
        if (CheckBox4.Checked) { science = 1; t = true; }
        if (CheckBox5.Checked) { terror = 1; t = true; }
        if (CheckBox6.Checked) { scene = 1; t = true; }
        if (CheckBox7.Checked) { micro = 1; t = true; }

        if (Session["email22"] != null)
        {
            if (k & t)
            {
                //连接数据库
                SqlConnection myConnection = new SqlConnection(@"Data Source=DESKTOP-2PV1UGL\SQLEXPRESS;Initial Catalog=movieDb;Integrated Security=True");
                myConnection.Open();

                //提交评价分数
                string query1 = "insert into score(filmname,email,score) values('" + filmName + "','" + useremail + "','" + submitscore + "');";
                SqlCommand cmd1 = new SqlCommand(query1, myConnection);
                cmd1.ExecuteNonQuery();

                //提交电影类型
                string query2 = "select * from tags where filmname='" + filmName + "' ";
                SqlCommand cmd2 = new SqlCommand(query2, myConnection);
                SqlDataReader dr2 = cmd2.ExecuteReader();
                if (dr2.HasRows)
                {
                    while (dr2.Read()) //读取信息
                    {
                        comedy = comedy + dr2.GetInt32(dr2.GetOrdinal("comedy"));
                        action = action + dr2.GetInt32(dr2.GetOrdinal("action"));
                        love = love + dr2.GetInt32(dr2.GetOrdinal("love"));
                        terror = terror + dr2.GetInt32(dr2.GetOrdinal("terror"));
                        science = science + dr2.GetInt32(dr2.GetOrdinal("science"));
                        scene = scene + dr2.GetInt32(dr2.GetOrdinal("scene"));
                        micro = micro + dr2.GetInt32(dr2.GetOrdinal("micro"));
                    }
                    dr2.Close();

                    string query4 = " UPDATE tags SET comedy = '" + comedy + "',action ='" + action + "',love = '" + love + "',science = '" + science + "',terror = '" + terror + "',scene = '" + scene + "',micro = '" + micro + "' WHERE filmname='" + filmName + "' ";
                    SqlCommand cmd4 = new SqlCommand(query4, myConnection);
                    cmd4.ExecuteNonQuery();

                }
                    
                else
                {
                    dr2.Close();
                    string query3 = "insert into tags(filmname,comedy,action,love,science,terror,scene,micro) values('" + filmName + "','" + comedy + "','" + action + "','" + love + "','" + science + "','" + terror + "','" + scene + "','" + micro + "');";
                    SqlCommand cmd3 = new SqlCommand(query3, myConnection);
                    cmd3.ExecuteNonQuery();

                }

                myConnection.Close();
                //提交
                Response.Redirect("Movie.aspx?name="+filmName+"");
            }

            else
            {
                Response.Write("请勾选后提交");
            }
        }
        else {
            Response.Write("请先登录");
        }
        
    }
}