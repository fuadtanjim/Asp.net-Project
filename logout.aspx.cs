using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
public partial class logout : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["Login"] == null)
            {
                Response.Redirect("log.aspx");
            }
            else
            {

                //this.Profile1.Text = Session["Login"].ToString();



                string css = ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString;
                using (SqlConnection conn = new SqlConnection(css))
                {

                    SqlCommand cmd1 = new SqlCommand("Select * from [dbo].[Table] where UserName = '" + Request.Cookies["Login"]["UserName"].ToString() + "' ", conn);

                    conn.Open();
                    using (SqlDataReader rd = cmd1.ExecuteReader())
                    {
                        while (rd.Read())
                        {
                            Label1.Text = rd["UserName"].ToString();
                        }
                    }
                    conn.Close();

                }










                Response.ClearHeaders();
                Response.AddHeader("Cache-Control", "no-cache,no-store,max-age=0,must-revalidate");
                Response.AddHeader("Pragma", "no-cache");

            }
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Session.Clear();
        HttpCookie myCookie = new HttpCookie("Login");
        myCookie.Expires = DateTime.Now.AddDays(-1d);
        Response.Cookies.Add(myCookie);
        Response.Redirect("log.aspx");
    }
}