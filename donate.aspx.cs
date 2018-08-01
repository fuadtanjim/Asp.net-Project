using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class donate : System.Web.UI.Page
{
    
    protected void Button1_Click(object sender, EventArgs e)
    {
        int temp = 0;
        try
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
            conn.Open();
            string checkuser = "select count(*) from [dbo].[Td] where name='" + TextBox1.Text + "'";
            SqlCommand com = new SqlCommand(checkuser, conn);
            temp = Convert.ToInt32(com.ExecuteScalar().ToString());

            if (temp > 0)
            {
                Response.Write("User already Exists ");
            }

            conn.Close();
        }
        catch (Exception ex)
        {
            Response.Write("Error" + ex.ToString());
        }


        if (temp == 0)
        {
            try
            {


                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
                conn.Open();
                string insertQuery = "insert into [dbo].[Td] ([phone],[name],[address],[bgroup]) values (@phone,@name,@address,@bgroup)";
                SqlCommand com = new SqlCommand(insertQuery, conn);

                com.Parameters.AddWithValue("@phone", TextBox2.Text);
                com.Parameters.AddWithValue("@name", TextBox1.Text);
                com.Parameters.AddWithValue("@address", TextBox4.Text);
                com.Parameters.AddWithValue("@bgroup", DropDownList4.Text);
                com.ExecuteNonQuery();
                Response.Redirect("donate1.aspx");

                Response.Write("Registration is successfull");

                conn.Close();

            }
            catch (Exception ex)
            {
                Response.Write("Error" + ex.ToString());
            }
        }
    }

   

    
}