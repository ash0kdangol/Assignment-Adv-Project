using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Smart_Online_Shopping
{
    public partial class Viewproducts : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAddtoCart_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Cart.aspx");
        }
    }
}