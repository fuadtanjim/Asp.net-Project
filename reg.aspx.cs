using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class reg : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack)
        {
            // nothing
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {


        int temp = 0;
        try
        {
            SqlConnection connn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
            connn.Open();
            string checkuser = "select count(*) from [dbo].[Table] where UserName='" + TextBox1.Text + "'";
            SqlCommand com = new SqlCommand(checkuser, connn);
            temp = Convert.ToInt32(com.ExecuteScalar().ToString());

            if (temp > 0)
            {
                Response.Write("User already Exists ");
            }

            connn.Close();
        }
        catch (Exception ex)
        {
            Response.Write("Error" + ex.ToString());
        }


        if (temp == 0)
        {
            try
            {
                Guid newGUID = Guid.NewGuid();


                SqlConnection connn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
                connn.Open();
                string insertQuery = "insert into [dbo].[Table] ([UserName],[Email],[Password],[Division],[BloodGroup],[ID]) values (@Uname,@email,@password,@div,@blood,@ID)";
                SqlCommand com = new SqlCommand(insertQuery, connn);


                com.Parameters.AddWithValue("@Uname", TextBox1.Text);
                com.Parameters.AddWithValue("@email", TextBox2.Text);
                com.Parameters.AddWithValue("@password", TextBox3.Text);
                com.Parameters.AddWithValue("@div", DropDownList3.SelectedItem.ToString());
                com.Parameters.AddWithValue("@blood", DropDownList4.SelectedItem.ToString());
                com.Parameters.AddWithValue("@ID", newGUID.ToString());
                com.ExecuteNonQuery();
                Response.Redirect("reg2.aspx");

                Response.Write("Registration is successfull");

                connn.Close();

            }
            catch (Exception ex)
            {
                Response.Write("Error" + ex.ToString());
            }
        }


    }

   
}