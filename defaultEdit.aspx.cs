using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{
    public int flag;
    protected void Page_Load(object sender, EventArgs e)
    {
        string date = Request.Form["date"];
        string text = Request.Form["announcement"];

        if (Request.RequestType == "POST")
        {
            switch (Main.AddAnouncements(date, text))
            {
                case 501:  // result success
                    flag = 501;
                    break;
                case 502:  // result id/password incorrect
                    flag = 502;
                    break;
                case 1:  // result database not found
                    flag = 1;
                    break;
            }
        }
            
    }
}