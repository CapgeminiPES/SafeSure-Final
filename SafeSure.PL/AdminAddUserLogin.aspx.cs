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
    /// Description : Add User Login
    /// </summary>
    public partial class AdminAddUserLogin : System.Web.UI.Page
    {
        AdminBLL bll = new AdminBLL();

        protected void Page_Load(object sender, EventArgs e)
        {
            Master.Logout = true;
          
        }

        //Add User Login Credentials
        #region AddUser Credentials

        protected void btnCreateLogin_Click(object sender, EventArgs e)
        {
            
            string user = txtCustomerId.Text;
            string pwd = txtPassword.Text;

            int n = bll.CreateLogin(user, pwd);

            if (n == 1)
            {
                Response.Write("<script type = 'text/javascript'>alert('Customer Added Successfully')</script>");
                Response.Redirect("AdminAddUserLogin.aspx");
            }
            else
                Response.Write("<script type = 'text/javascript'>alert('Customer Not Added!!! Try Again ')</script>");

        }
        #endregion
    }
}