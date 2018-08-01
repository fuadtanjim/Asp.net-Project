using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;


public partial class login : System.Web.UI.Page
{
  public String Str;
    protected void Page_Load(object sender, EventArgs e)
    {
        HttpCookie userCookie;
        userCookie = Request.Cookies["Preferences"];
        if (userCookie != null)
        {
            if (!userCookie.Value.Equals(-1))
            {
                Session.Clear();
                Session["Login"] = TextBoxName.Text;

                Response.Redirect("Users.aspx");

            }
        }

    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
        conn.Open();
        string checkuser = "select count(*) from [Table]  where UserName='" + TextBoxName.Text + "'";
        SqlCommand com = new SqlCommand(checkuser, conn);
        int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
        conn.Close();
        if (temp == 1)
        {
            conn.Open();
            string checkPasswordQuery = "select Password from [Table] where UserName='" + TextBoxName.Text + "'";
            SqlCommand passComm = new SqlCommand(checkPasswordQuery, conn);
            string password = passComm.ExecuteScalar().ToString().Replace(" ","");
            if (password == TextBoxpass.Text)
            {
                Session["New"] = TextBoxName.Text;
                Response.Write("Password is correct");
                Response.Redirect("Users.aspx");
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


        HttpCookie usercookie;
        usercookie = Request.Cookies["Preferences"];
        if (usercookie == null)
        {

            usercookie = new HttpCookie("Preferences");
            usercookie.Expires = DateTime.Now.AddMinutes(3);
            Response.Cookies.Add(usercookie);
        }




    }
    }