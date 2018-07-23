using SafeSure.BLL;
using SafeSure.Entity;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SafeSure.PL
{
    /// <summary>
    /// Batch No : 2
    /// Project Name : Policy Endoresement System
    /// Description : User Search Policy
    /// </summary>
    public partial class UserSearchPolicy : System.Web.UI.Page
    {
        List<PolicyEndorsement> list = new List<PolicyEndorsement>();


        protected void Page_Load(object sender, EventArgs e)
        {

            Master.Logout = true;

            // Initial Visibility
            #region Initial Visibility

            lblEnterPolicyNumber.Visible = false;
            txtEnterPolicyNumber.Visible = false;
            lblEnterCustomerID.Visible = false;
            txtEnterCustomerID.Visible = false;
            lblEnterCustomerName.Visible = false;
            txtEnterCustomerName.Visible = false;
            lblDOB.Visible = false;
            txtDOB.Visible = false;
            gvSearchResult.EmptyDataText = "";
            #endregion

        }

        protected void ddlSearchPolicy_SelectedIndexChanged(object sender, EventArgs e)
        {
            //Policy Number
            #region Visibility For Policy Number
            if (ddlSearchPolicy.SelectedIndex == 0)
            {
                lblEnterPolicyNumber.Visible = true;
                txtEnterPolicyNumber.Visible = true;
                lblEnterCustomerID.Visible = false;
                txtEnterCustomerID.Visible = false;
                lblEnterCustomerName.Visible = false;
                txtEnterCustomerName.Visible = false;
                lblDOB.Visible = false;
                txtDOB.Visible = false;
            }
            #endregion

            //CustomerId
            #region Visibility For Customer Id

            if (ddlSearchPolicy.SelectedIndex == 1)
            {
                lblEnterPolicyNumber.Visible = false;
                txtEnterPolicyNumber.Visible = false;
                lblEnterCustomerID.Visible = true;
                txtEnterCustomerID.Visible = true;
                lblEnterCustomerName.Visible = false;
                txtEnterCustomerName.Visible = false;
                lblDOB.Visible = false;
                txtDOB.Visible = false;

            }
            #endregion

            //Customer Name And Dob
            #region Visibility For customer name and Dob
            if (ddlSearchPolicy.SelectedIndex == 2)
            {
                lblEnterPolicyNumber.Visible = false;
                txtEnterPolicyNumber.Visible = false;
                lblEnterCustomerID.Visible = false;
                txtEnterCustomerID.Visible = false;
                lblEnterCustomerName.Visible = true;
                txtEnterCustomerName.Visible = true;
                lblDOB.Visible = true;
                txtDOB.Visible = true;

            }
            #endregion
        }

        protected void gdView_SelectedIndexChanged(object sender, EventArgs e)
        {
            int n = int.Parse(gvSearchResult.SelectedRow.Cells[1].Text);
            Response.Redirect("UserViewPolicy.aspx?Id=" + n);
        }

        protected void btnView_Click(object sender, EventArgs e)
        {
             
            SearchBLL bll = new SearchBLL();
            //Search By policy Number
            #region Search y Policy Number
            if (ddlSearchPolicy.SelectedIndex == 0)
            {
                int policyNum = int.Parse(txtEnterPolicyNumber.Text);
                list =bll.SearchByPolicyNumber(policyNum);
                gvSearchResult.DataSource = list;
                gvSearchResult.DataBind();
           }
            #endregion

            //Search By Customer ID
            #region Search by Customer ID
            if (ddlSearchPolicy.SelectedIndex == 1)
            {
                int custId = int.Parse(txtEnterCustomerID.Text);
                list = bll.SearchByCustomerId(custId);
                gvSearchResult.DataSource = list;
                gvSearchResult.DataBind();
            }
            #endregion

            //Search By Name and DOB
            #region Search by Name and DOB
            if (ddlSearchPolicy.SelectedIndex == 2)
            {
                string Cname = txtEnterCustomerName.Text;
                string d = txtDOB.Text.ToString();
                DateTime dob = Convert.ToDateTime(d);
                list = bll.SearchByName(Cname, dob);
                gvSearchResult.DataSource = list;
                gvSearchResult.DataBind();
            }
            #endregion

        }
    }
    }

    
