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
            switch (Main.login(ID, password))
            {
                case 200:  // result success
                    Response.Redirect("home.aspx");
                    break;
                case 401:  // result id/password incorrect
                    flag = 401;
                    break;
                case 502:  // result database not found
                    flag = 502;
                    break;
            }
        }   
    }
}