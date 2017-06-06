using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.IO;
namespace App_Code
{
    /// <summary>
    /// Summary description for DatabaseAction
    /// </summary>
    public class DatabaseAction
    {
        //public SqlCommand cmd = new SqlCommand();
        //public SqlConnection ConnectionString = new SqlConnection();

        //public SqlConnection ConnectionString = new SqlConnection("Data Source=.;Initial Catalog=GoMovies;Integrated Security=True;connect Timeout=10");
        public SqlConnection ConnectionString = new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["gomovies"].ToString());

        public DatabaseAction()
        {
            //  ConnectionString.ConnectionString = "Data Source=.;Initial Catalog=GoMovies;Integrated Security=True;connect Timeout=10";
        }
        public DataSet ShowByCategory(string category)
        {
            SqlCommand cmd = ConnectionString.CreateCommand();
            cmd.CommandText = "select top 10 MovieTitle,MovieImage from Movies where MovieType='"+category+"'";
            cmd.CommandType = CommandType.Text;

            ConnectionString.Open();
           // int a = cmd.ExecuteNonQuery();
            SqlDataAdapter adapter = new SqlDataAdapter(cmd);
            DataSet dtset = new DataSet();
            adapter.Fill(dtset);
            ConnectionString.Close();
            return dtset;
        }
        public DataSet ShowByTitle(string title)
        {
            SqlCommand cmd = ConnectionString.CreateCommand();
            cmd.CommandText = "select MovieTitle,MovieDirector,MovieNation,MovieLanguage,MovieLength,MovieImage,MovieIntroduction from Movies where MovieTitle='" + title + "'";
            cmd.CommandType = CommandType.Text;

            ConnectionString.Open();
            // int a = cmd.ExecuteNonQuery();
            SqlDataAdapter adapter = new SqlDataAdapter(cmd);
            DataSet dtset = new DataSet();
            adapter.Fill(dtset);
            ConnectionString.Close();
            return dtset;
        }
        public bool IsExist(string ColumnName, string TableName, string value)
        {
            ConnectionString.Open();

            SqlCommand cmd = ConnectionString.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "select count( " + ColumnName + ") from " + TableName + " where " + ColumnName + "  = @Value";

            cmd.Parameters.Add("@Value", SqlDbType.VarChar);
            cmd.Parameters["@Value"].Value = value;

            int number = int.Parse(cmd.ExecuteScalar().ToString());
            ConnectionString.Close();
            if (Convert.ToBoolean(number))
                return true;
            else
                return false;
        }
        public bool CheckIn(string useraccount, string password)
        {
            ConnectionString.Open();
            SqlCommand cmd = ConnectionString.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "select count(UserAccount) from Users where UserAccount=@useraccount and UserPassword=@password";
            cmd.Parameters.Add("@useraccount", SqlDbType.VarChar);
            cmd.Parameters.Add("@password", SqlDbType.VarChar);
            cmd.Parameters["@useraccount"].Value = useraccount;
            cmd.Parameters["@password"].Value = password;

            int number = int.Parse(cmd.ExecuteScalar().ToString());
            ConnectionString.Close();
            if (Convert.ToBoolean(number))
                return true;
            else
                return false;

        }
        public bool CreatAccount(string useremail, string username,string password)
        {
            if (IsExist("UserEmail", "Users", useremail))
            {
                //already exist
                return false;
            }
            else
            {
                ConnectionString.Open();
                SqlCommand cmd = ConnectionString.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "INSERT INTO Users(UserEmail,UserName,UserPassword) VALUES('" + useremail + "','" + username + "','" + password + "')";
                int i = cmd.ExecuteNonQuery();
                return true;
            }

        }

        public int fortest()
        {

            FileStream fs = File.OpenRead(@"\\Mac\Home\Desktop\GoMovies\GoMovies Project\MyWeb\images\2.jpg");

            byte[] content = new byte[fs.Length];

            fs.Read(content, 0, content.Length);

            fs.Close();
            ConnectionString.Open();
            SqlCommand cmd = ConnectionString.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "insert into Movies(MovieID,MovieType,MovieImage) values ('001','comedy',@content)";

            SqlParameter para = cmd.Parameters.Add("@content", SqlDbType.Image);

            para.Value = content;

            int ret=cmd.ExecuteNonQuery();
            ConnectionString.Close();
            return ret;
        }
    }
}