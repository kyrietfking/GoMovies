using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

namespace App_Code.Database
{
    /// <summary>
    /// Summary description for DatabaseAction
    /// </summary>
    public class DatabaseAction
    {
        //public SqlCommand cmd = new SqlCommand();
        //public SqlConnection ConnectionString = new SqlConnection();

        public SqlConnection ConnectionString = new SqlConnection("Data Source=.;Initial Catalog=GoMovies;Integrated Security=True;connect Timeout=10");
        public DatabaseAction()
        {
          //  ConnectionString.ConnectionString = "Data Source=.;Initial Catalog=GoMovies;Integrated Security=True;connect Timeout=10";
        }
        public bool IsExist(string ColumnName,string TableName,string value)
        {
            ConnectionString.Open();
            
            SqlCommand cmd= ConnectionString.CreateCommand();
            cmd.CommandType=CommandType.Text;
            cmd.CommandText = "select count( " +ColumnName +") from "+ TableName+" where "+ColumnName +"  = @Value";

            cmd.Parameters.Add("@Value",SqlDbType.VarChar);
            cmd.Parameters["@Value"].Value=value;

            int number = int.Parse(cmd.ExecuteScalar().ToString());
            ConnectionString.Close();
            if (Convert.ToBoolean(number))
                return true;
            else
                return false;
        }
        public bool CheckIn(string useraccount,string password)
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
        public bool CreatAccount(string username,string password)
        {
            if(IsExist("UserAccount","Users",username))
            {
                //already exist
                return false;
            }
            else
            {
                ConnectionString.Open();
                SqlCommand cmd = ConnectionString.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "insert into Users  values('" + username + " ','" + password + "','666','','','','','','')";
                int i = cmd.ExecuteNonQuery();
                return true;
            }

        }
    }
}