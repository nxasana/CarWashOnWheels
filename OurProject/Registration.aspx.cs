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
    public partial class Registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Button1.Attributes.Add("onclick", "return validate()");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
           

          
                if (!(txtemail.Text.Equals("") || txtpasswd.Text.Equals("") || txtcops.Text.Equals("")))
                {
               
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                con.Open();
                    string command = "INSERT INTO regi(email,passwd) VALUES(@email,@passwd)";
                    SqlCommand cmd = new SqlCommand(command, con);

                    cmd.Parameters.AddWithValue("@email", txtemail.Text);
                    cmd.Parameters.AddWithValue("@passwd", txtpasswd.Text);

                    cmd.ExecuteNonQuery();

                con.Close();
            }

            Response.Redirect("Login.aspx");
        }
    }
}