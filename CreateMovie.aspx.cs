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
using System.IO;
using System.Web.SessionState;

public partial class Register : System.Web.UI.Page
{
    string useremail; 
 
    protected void Page_Load(object sender, EventArgs e)
    {
       

        //Page.Response.Buffer = false;
        //Page.Response.Cache.SetNoStore();
    }





    protected void submit_Click(object sender, EventArgs e)
    {
       
        string title1 = Title.Text;
        string director1 = director.Value;
        string nation1 = this.nation.Value;
        string language1 = language.Value;
        string length1 = length.Value;
        string link1 = link.Value;
        string description1 = description.Value;

        //判断是否有用户登录
        if (Session["email22"] != null)
        {
            useremail = Session["email22"].ToString();
            //上传图片
            if (fil1.HasFile)  //判断是否选种文件
            {
                HttpPostedFile hp = fil1.PostedFile;

                string getfile = fil1.PostedFile.FileName;//取得路径

                string imgtype = fil1.PostedFile.ContentType; //文件类型

                int imageSize1 = fil1.PostedFile.ContentLength;//图片大小

                int i = getfile.LastIndexOf(".");

                string filename;

                filename = getfile.Substring(getfile.LastIndexOf("\\") + 1);



                //上传文件


                fil1.PostedFile.SaveAs("E:/master the first/softwareproject2/GoMovies Project2/MyWeb/images/" + filename);
                string imagePath1 = filename;  //文件名

                byte[] image1 = new byte[fil1.PostedFile.ContentLength];  //将图片转为二进制文件 ，ContentLength表示上传文件的长度

                Stream filestream = fil1.PostedFile.InputStream;

                //读取数据

                filestream.Read(image1, 0, fil1.PostedFile.ContentLength);


                SqlConnection myConnection = new SqlConnection(@"Data Source=DESKTOP-2PV1UGL\SQLEXPRESS;Initial Catalog=movieDb;Integrated Security=True");



               
                    myConnection.Open();
                    //string query = "insert into Movies(title,director,nation,language,length,description,imagePath,imageSize) values ( '" + title1 + "','" + director1 + "','" + nation1 + "','" + language1 + "','" + length1 + "','" + description1 + "','" + imagePath1 + "','" + imageSize1 + "')";
                    string query = "insert into Movies(title,director,nation,language,length,type,description,image,imagePath,imageSize,uploadPerson) values (@title,@director,@nation,@language,@length,@link,@description,@image,@imagePath,@imageSize,@uploadPerson)";
                    //
                    string query2 = "insert into tags(filmname) values ( '" + title1 + "')";
                    SqlCommand cmd = new SqlCommand(query, myConnection);
                    SqlCommand cmd2 = new SqlCommand(query2, myConnection);
                    cmd.Parameters.AddWithValue("@title", title1);
                    cmd.Parameters.AddWithValue("@director", director1);
                    cmd.Parameters.AddWithValue("@nation", nation1);
                    cmd.Parameters.AddWithValue("@language", language1);
                    cmd.Parameters.AddWithValue("@length", length1);
                    cmd.Parameters.AddWithValue("@link", link1);
                    cmd.Parameters.AddWithValue("@description", description1);
                    cmd.Parameters.AddWithValue("@image", image1);
                    cmd.Parameters.AddWithValue("@imagePath", imagePath1);
                    cmd.Parameters.AddWithValue("@imageSize", imageSize1);
                    cmd.Parameters.AddWithValue("@uploadPerson", useremail);
                    cmd.ExecuteNonQuery();
                    cmd2.ExecuteNonQuery();
                    Response.Write("上传成功");
               
               
                    myConnection.Close();

                
            }
        }
        else {
            Response.Write("请先登录");
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Home.aspx");
    }
}

