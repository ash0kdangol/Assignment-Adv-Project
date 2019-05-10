using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Smart_Online_Shopping
{
    public partial class AddSubCategories : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindMainCategory();
                BindSubCatRptr();
            }
        }

        private void BindSubCatRptr()
        {
            String CS = ConfigurationManager.ConnectionStrings["smartdatabaseConnectionString1"].ConnectionString;
            using (SqlConnection con = new SqlConnection(CS))
            {
                using (SqlCommand cmd = new SqlCommand("select A.*,B.* from tblSubCategories A inner join tblCategories B on B.CatID=A.MainCatID", con))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                    {
                        DataTable dtSubCategory = new DataTable();
                        sda.Fill(dtSubCategory);
                        RepeaterSubCategory.DataSource = dtSubCategory;
                        RepeaterSubCategory.DataBind();
                    }

                }
            }
        }

        private void BindMainCategory()
        {
            String CS = ConfigurationManager.ConnectionStrings["smartdatabaseConnectionString1"].ConnectionString;
            using (SqlConnection con = new SqlConnection(CS))
            {
                SqlCommand cmd = new SqlCommand("select * from  tblCategories", con);
                con.Open();
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);

                if (dt.Rows.Count != 0)
                {
                    ddlcategories.DataSource = dt;
                    ddlcategories.DataTextField = "CatName";
                    ddlcategories.DataValueField = "CatID";
                    ddlcategories.DataBind();
                    ddlcategories.Items.Insert(0, new ListItem("Select from List", "0"));
                }
            }
        }


        protected void BtnAddSubCategories_Click(object sender, EventArgs e)
        {
            String CS = ConfigurationManager.ConnectionStrings["smartdatabaseConnectionString1"].ConnectionString;
            using (SqlConnection con = new SqlConnection(CS))
            {
                SqlCommand cmd = new SqlCommand("insert into tblSubCategories values('" + txtSubCatName.Text + "','" + ddlcategories.SelectedItem.Value + "')", con);
                con.Open();
                cmd.ExecuteNonQuery();
                txtSubCatName.Text = string.Empty;
                ddlcategories.ClearSelection();
            }
        }
    }
}