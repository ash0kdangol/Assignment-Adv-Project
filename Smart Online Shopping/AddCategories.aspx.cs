using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Smart_Online_Shopping
{
    public partial class AddCategories : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnaddCategory_Click(object sender, EventArgs e)
        {
            String CS = ConfigurationManager.ConnectionStrings["smartdatabaseConnectionString1"].ConnectionString;
            using (SqlConnection con = new SqlConnection(CS))
            {
                SqlCommand cmd = new SqlCommand("insert into tblCategories values('" + txtCatName.Text + "')", con);
                con.Open();
                cmd.ExecuteNonQuery();
                txtCatName.Text = string.Empty;

            }
        }
    }
}