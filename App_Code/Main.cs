using System;
using MySql.Data.MySqlClient;
using System.Configuration;
using System.Collections.Generic;

public class Main
{
    // constructor
    public Main()
    {
        
    }

    
    public static int login(string ID, String password)
    {
        using (MySqlConnection conn = new MySqlConnection(ConfigurationManager.ConnectionStrings["connectDB"].ToString()))
        {
            MySqlCommand cmd = new MySqlCommand();  // create sql command object
            cmd.Connection = conn; // connection varible
            
            //sql string to search for admin
            string admin = "Select * From users Where id = @id AND password = @password;";
            cmd.Parameters.AddWithValue("@id", ID); // sql parameter list
            cmd.Parameters.AddWithValue("@password", password);

            cmd.CommandText = admin;

            try { conn.Open(); }
            catch { return 502; }
                
            object res = cmd.ExecuteScalar();  // returns back a value after execution
            conn.Close(); // close connection

            if (res != null) // if user name not found
                return 200;
            else
                return 401;
        }
    }
    public static List<Anouncements> AnouncementViews()
    {
        List<Anouncements> result = new List<Anouncements>();

        using (MySqlConnection conn = new MySqlConnection(ConfigurationManager.ConnectionStrings["connectDB"].ToString()))
        {
            MySqlCommand cmd = new MySqlCommand();
            cmd.Connection = conn;

            string views = "select * from anouncements;";
            cmd.CommandText = views;

            conn.Open();

            MySqlDataReader reader = cmd.ExecuteReader();


            while(reader.Read())
                result.Add(new Anouncements
                {
                    ID = reader.GetInt32(0),
                    date = reader.GetString(1),
                    text = reader.GetString(2)
                });
        }
        return result;
    }
}