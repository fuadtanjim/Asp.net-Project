using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class admin : System.Web.UI.Page
{

    SqlConnection co = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Tanjim\Documents\Visual Studio 2017\WebSites\WebSite8\App_Data\Database.mdf;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {


    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        co.Open();
        SqlCommand cmd = co.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "insert into [dbo].[Td] values('"+TextBox1.Text+ "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "')";
        cmd.ExecuteNonQuery();
        co.Close();
        Response.Redirect("admin.aspx");

    }
}