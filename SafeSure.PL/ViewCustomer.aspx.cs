using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SafeSure.PL
{
    /// <summary>
    /// Batch No : 2
    /// Project Name : Policy Endoresement System
    /// Description : View Customer details.
    /// </summary>
    public partial class ViewCustomer : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Master.Logout = true;

        }
    }
}