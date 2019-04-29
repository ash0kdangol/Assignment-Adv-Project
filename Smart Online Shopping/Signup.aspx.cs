using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Drawing;

namespace Smart_Online_Shopping
{
    public partial class Signup : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btSubmit_Click(object sender, EventArgs e)
        {
            if (tbName.Text != "" & tbEmail.Text != "" && tbUname.Text != "" && tbPass.Text != "" && tbCPass.Text != "")
            {
                if (tbPass.Text == tbCPass.Text)
                {
                    String CS = ConfigurationManager.ConnectionStrings["smartdatabaseConnectionString1"].ConnectionString;
                    using (SqlConnection con = new SqlConnection(CS))
                    {
                        SqlCommand cmd = new SqlCommand("insert into Users values('" + tbName.Text + "','" + tbEmail.Text + "','" + tbUname.Text + "','" + tbPass.Text + "','U')", con);
                        con.Open();
                        cmd.ExecuteNonQuery();
                        lblMsg.Text = "Congratulations!!!! Registration Successful";
                        lblMsg.ForeColor = Color.Green;
                        Response.Redirect("~/Login.aspx");
                    }

                }
                else
                {
                    lblMsg.ForeColor = Color.Red;
                    lblMsg.Text = "Passwords do not match";
                }
            }
            else
            {
                lblMsg.ForeColor = Color.Red;
                lblMsg.Text = "All Fields Are Mandatory";

            }
        }
    }
}