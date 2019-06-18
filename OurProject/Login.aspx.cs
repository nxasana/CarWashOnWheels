using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
namespace OurProject
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Submit_Click(object sender, EventArgs e)
        {

            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);

            con.Open();

            SqlCommand cmd = new SqlCommand("select email,passwd from regi where email = @email and passwd = @passwd", con);
            cmd.Parameters.AddWithValue("@email", txtemail.Text);
            cmd.Parameters.AddWithValue("@passwd", txtpasswd.Text);

            SqlDataReader sdr = cmd.ExecuteReader();

            if (sdr.Read())
            {
                Label2.Visible = false;
                Label3.Visible = false;
                success.Visible = true;
                Response.Redirect("IndexPage.html");
            }
            else
            {
                Label2.Visible = true;
                Label3.Visible = true;

                Label2.Text = "Email is Is Incorrect..!";
                Label3.Text = "Password is Incorrect..!";
            }
            con.Close();
        }
    }
}