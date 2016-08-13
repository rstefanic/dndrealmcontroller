using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

public partial class login : System.Web.UI.Page
{
    public int flag;
    protected void Page_Load(object sender, EventArgs e)
    {
        flag = 0;
        string ID = Request.Form["login"];
        string password = Request.Form["password"];

        if (Request.RequestType == "POST")
        {
            if (loginOp(ID, password) == true)
            {
                Response.Write("success!");
            }

            else
            {
                flag = 1;
                return;
            }
        }

    }


    private bool loginOp(string ID, String password)
    {
        using (MySqlConnection conn = new MySqlConnection(";"))
        {
            MySqlCommand cmd = new MySqlCommand();  // create sql command object
            cmd.Connection = conn; // connection varible
            conn.Open(); // open connection to database
            

             //sql string to search for admin
            string admin = "Select * From users Where id = @id AND pass = @password;";
            cmd.Parameters.AddWithValue("@id", ID); // sql parameter list
            cmd.Parameters.AddWithValue("@password", password);

            cmd.CommandText = admin;
            object res = cmd.ExecuteScalar();  // returns back a value after execution
            conn.Close(); // close connection

            if (res != null) // if user name not found
                return true;
            else
                return false;
        }
    }

}