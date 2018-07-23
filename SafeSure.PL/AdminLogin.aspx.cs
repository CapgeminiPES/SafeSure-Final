using SafeSure.BLL;
using SafeSure.ExceptionLayer;
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
    /// Description : Authorize Admin
    /// </summary>
    public partial class AdminLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnAdminLogin_Click(object sender, EventArgs e)
        {
            //Authorize the admin 
            #region Admin authorization
            try
            {
                LoginBLL bll = new LoginBLL();
                string user = txtUserName.Text;
                string pwd = txtPassword.Text;
                string userName = bll.CheckAdminLogin(user, pwd);

                if (userName != "")
                {
                    Session["user"] = userName;
                    Response.Redirect("ViewCustomer.aspx");
                }
                else
                    throw new LoginException("UserName/Password is incorrect");
            }
            catch (LoginException ex)
            {
                lblError.Text = ex.Message;
            }
            catch (SystemException ex)
            {
                lblError.Text = ex.Message;
            }
            #endregion
        }
    }
}