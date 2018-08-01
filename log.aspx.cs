using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;


public partial class log : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        HttpCookie userCookie;
        userCookie = Request.Cookies["Login"];
        if (userCookie != null)
        {
            if (!userCookie.Value.Equals(-1))
            {
                Session.Clear();
                Session["Login"] = TextBoxName.Text;

                Response.Redirect("logout.aspx");

            }
        }

    }

    

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
        conn.Open();
        string checkuser = "select count(*) from [dbo].[Table]  where UserName='" + TextBoxName.Text + "'";
        SqlCommand com = new SqlCommand(checkuser, conn);
        int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
       
        if (temp == 1)
        {
           
            string checkPasswordQuery = "select Password from [dbo].[Table] where UserName='" + TextBoxName.Text + "'";
            SqlCommand passComm = new SqlCommand(checkPasswordQuery, conn);
            string password = passComm.ExecuteScalar().ToString().Replace(" ", "");
           
            if (password == TextBoxpass.Text)
            {
                Session["Login"] = TextBoxName.Text;
                
                Response.Redirect("logout.aspx");
            }
            else
            {
                Response.Write("Password is not correct");
            }
        }
        else
        {
            Response.Write("Username is not correct");
        }
    }





    protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
    {
        HttpCookie usercookie=new HttpCookie("Login");
        usercookie["UserName"] = TextBoxName.Text;
        usercookie.Expires = DateTime.Now.AddMonths(1);
        Response.Cookies.Add(usercookie);



    }

}