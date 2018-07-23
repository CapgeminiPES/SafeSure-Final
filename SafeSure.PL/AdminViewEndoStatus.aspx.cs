using SafeSure.BLL;
using System;
using System.Collections;
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
    /// Description : Endorse new details
    /// </summary>
    public partial class AdminViewEndoStatus : System.Web.UI.Page
    {
        EndoBLL bll = new EndoBLL();
        int id;
        
        protected void Page_Load(object sender, EventArgs e)
        {
            Master.Logout = true;
            
        }
        
        protected void btnRefresh_Click(object sender, EventArgs e)
        {
            //refresh
            #region refresh    
            gvEndoResult.DataSource = bll.RequestEndorsementView();
            gvEndoResult.DataBind();
            #endregion

        }

        protected void gvEndorse_SelectedIndexChanged(object sender, EventArgs e)
        {
            //Select the row to accept
            #region Select
            id = int.Parse(gvEndoResult.SelectedRow.Cells[4].Text);
            Response.Redirect("AdminEndoAcceptReject.aspx?Id="+id);
            #endregion
        }


    }
}