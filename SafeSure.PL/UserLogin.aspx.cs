using SafeSure.BLL;
using SafeSure.Entity;
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
    /// Description : User Authorization
    /// </summary>
    public partial class UserLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnUserLogin_Click(object sender, EventArgs e)
        {
            //Authorization of user
            #region User Authorization
            try
            {
                LoginBLL bll = new LoginBLL();
                string user = txtCustomerId.Text;
                string pwd = txtPassword.Text;
                string userName = bll.CheckUserLogin(user, pwd);

                if (userName != "")
                {
                    Session["user"] = userName;
                    Response.Redirect("UserSearchPolicy.aspx");
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