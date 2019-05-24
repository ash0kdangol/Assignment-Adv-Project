using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Smart_Online_Shopping
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["USERNAME"] != null)
            {

            }

            else
            {
                Response.Redirect("~/Login.aspx");
            }
        }

        protected void btnadminsignin_Click(object sender, EventArgs e)
        {
            Session["USERNAME"] = null;
            Response.Redirect("~/Homepage.aspx");
        }

        protected void btnadminlogout_Click(object sender, EventArgs e)
        {
             Response.Redirect("~/Homepage.aspx");
        }
    }
}