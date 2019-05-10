using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Smart_Online_Shopping
{
    public partial class AddProduct : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindBrand();
                BindMainCategory();
                ddlsubcategories.Enabled = false;

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
        private void BindBrand()
        {
            String CS = ConfigurationManager.ConnectionStrings["smartdatabaseConnectionString1"].ConnectionString;
            using (SqlConnection con = new SqlConnection(CS))
            {
                SqlCommand cmd = new SqlCommand("select * from  tblBrands", con);
                con.Open();
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);

                if (dt.Rows.Count != 0)
                {
                    ddlbrands.DataSource = dt;
                    ddlbrands.DataTextField = "BName";
                    ddlbrands.DataValueField = "BrandID";
                    ddlbrands.DataBind();
                    ddlbrands.Items.Insert(0, new ListItem("Select from List", "0"));
                }
            }
        }

        protected void btnaddproduct_Click(object sender, EventArgs e)
        {
            String CS = ConfigurationManager.ConnectionStrings["smartdatabaseConnectionString1"].ConnectionString;
            using (SqlConnection con = new SqlConnection(CS))
            {
                SqlCommand cmd = new SqlCommand("procInsertProducts", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@PName", txtPName.Text);
                cmd.Parameters.AddWithValue("@PPrice", txtpprice.Text);
                cmd.Parameters.AddWithValue("@PBrandID", ddlbrands.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@PCategoryID", ddlcategories.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@PSubCatID", ddlsubcategories.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@PDetails", TxtPdetails.Text);
                con.Open();
                Int64 PID = Convert.ToInt64(cmd.ExecuteScalar());

                //Insert and upload Images
                if (FUImg1.HasFile)
                {
                    string SavePath = Server.MapPath("~/Images/ProductImages/") + PID;
                    if (!Directory.Exists(SavePath))
                    {
                        Directory.CreateDirectory(SavePath);
                    }
                    string Extention = Path.GetExtension(FUImg1.PostedFile.FileName);
                    FUImg1.SaveAs(SavePath + "\\" + txtPName.Text.ToString().Trim() + "01" + Extention);

                    SqlCommand cmd3 = new SqlCommand("insert into tblProductImg values('" + PID + "','" + txtPName.Text.ToString().Trim() + "01" + "','" + Extention + "')", con);
                    cmd3.ExecuteNonQuery();
                }
                if (FUImg2.HasFile)
                {
                    string SavePath = Server.MapPath("~/Images/ProductImages/") + PID;
                    if (!Directory.Exists(SavePath))
                    {
                        Directory.CreateDirectory(SavePath);
                    }
                    string Extention = Path.GetExtension(FUImg2.PostedFile.FileName);
                    FUImg2.SaveAs(SavePath + "\\" + txtPName.Text.ToString().Trim() + "02" + Extention);

                    SqlCommand cmd4 = new SqlCommand("insert into tblProductImg values('" + PID + "','" + txtPName.Text.ToString().Trim() + "02" + "','" + Extention + "')", con);
                    cmd4.ExecuteNonQuery();
                }
            }
        }

        protected void ddlCategories_SelectedIndexChanged(object sender, EventArgs e)
        {
            int MainCategoryID = Convert.ToInt32(ddlcategories.SelectedItem.Value);
            String CS = ConfigurationManager.ConnectionStrings["smartdatabaseConnectionString1"].ConnectionString;
            using (SqlConnection con = new SqlConnection(CS))
            {
                SqlCommand cmd = new SqlCommand("select * from tblSubCategories where MainCatID='" + ddlcategories.SelectedItem.Value + "'", con);
                con.Open();
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);

                if (dt.Rows.Count != 0)
                {
                    ddlsubcategories.DataSource = dt;
                    ddlsubcategories.DataTextField = "SubCatName";
                    ddlsubcategories.DataValueField = "SubCatID";
                    ddlsubcategories.DataBind();
                    ddlsubcategories.Items.Insert(0, new ListItem("-Select-", "0"));
                    ddlsubcategories.Enabled = true;
                }
            }
        }
    }
}
