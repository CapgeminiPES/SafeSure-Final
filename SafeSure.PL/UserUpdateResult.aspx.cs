using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SafeSure.PL
{
    public partial class UserUpdateResult : System.Web.UI.Page
    {
        /// <summary>
        /// Batch No : 2
        /// Project Name : Policy Endoresement System
        /// Description : User Update Result
        /// </summary>
        protected void Page_Load(object sender, EventArgs e)
        {
            Master.Logout = true;
        }
    }
}