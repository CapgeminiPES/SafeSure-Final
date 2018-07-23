using SafeSure.BLL;
using SafeSure.Entity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SafeSure.PL
{
    /// <summary>
    /// Batch No : 2
    /// Project Name : Policy Endoresement System
    /// Description : Add  New Products
    /// </summary>
    public partial class AdminAddInsuranceProduct : System.Web.UI.Page
    {
        AdminBLL bll = new AdminBLL();

        protected void Page_Load(object sender, EventArgs e)
        {
            Master.Logout = true;
          
        }

        //Add new product
        #region Add New Product
        protected void btnCreate_Click(object sender, EventArgs e)
        {
            InsuranceProduct prod = new InsuranceProduct();
            prod.Product_ID = int.Parse(txtProductId.Text);
            prod.Product_name = txtProductName.Text;
            if (rdbLife.Checked == true)
            {
                prod.Product_description = "Life";
            }
            else
            {
                prod.Product_description = "NonLife";
            }
            int n=bll.CreateProduct(prod);

            if (n == 1)
            {
                Response.Write("<script type = 'text/javascript'>alert('Customer Added Successfully')</script>");

                Response.Redirect("AdminAddInsuranceProduct.aspx");
            }
            else
                Response.Write("<script type = 'text/javascript'>alert('Customer Not Added!!! Try Again ')</script>");

        }
        #endregion
    }
}