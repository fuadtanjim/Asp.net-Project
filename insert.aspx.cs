using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
public partial class insert : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {

        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Tanjim\Documents\test.mdf;Integrated Security=True;Connect Timeout=30");
        string name,address,phone;


        name = Request.QueryString["nm"].ToString();
        address = Request.QueryString["add"].ToString();
        phone = Request.QueryString["ph"].ToString();
        con.Open();
        SqlCommand cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "insert into [dbo].[Tab] values('" + name.ToString() + "','" + address.ToString() + "','" + phone.ToString() + "')";
        cmd.ExecuteNonQuery();

        con.Close();
    }



       

    
}