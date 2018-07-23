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
    /// Description : Accept/Reject Updated new details
    /// </summary>
    public partial class AdminEndoAcceptReject : System.Web.UI.Page
    {
        EndoBLL bll = new EndoBLL();

        SearchBLL sbll = new SearchBLL();

        List<PolicyEndorsement> list = new List<PolicyEndorsement>();


        int n;
        protected void Page_Load(object sender, EventArgs e)
        {

            Master.Logout = true;

            //View Updated details
            #region View updated Details
            n = int.Parse(Request.QueryString["Id"]);
            list = sbll.SearchByCustomerId(n);
            foreach (var li in list)
            {
                lblCustId1.Text = li.customerId.ToString();
                lblAddress1.Text = li.address;
                lblDOB1.Text = li.customerDob.ToString();

                if (li.gender == "M")
                    lblGender1.Text = "Male";
                else
                    lblGender1.Text = "Female";

                lblIDProof1.Text = li.idDescription;
                lblInsuredName1.Text = li.customerName;
                lblNomineeName1.Text = li.nomineName;
                lblPolicyNumber1.Text = li.policyNumber.ToString();
                lblPremiumPaymentMethod1.Text = li.paymentMode;
                lblProductName1.Text = li.productName;
                lblRelationWithNominee1.Text = li.relationShip;

                if (li.smoker == "Y")
                    lblSmokerORNonSmoker1.Text = "Smoker";
                else
                    lblSmokerORNonSmoker1.Text = "Non-Smoker";

                lblTelephoneNumber1.Text = li.mobile.ToString();
                lblIDProofNumber1.Text = li.idNumber.ToString();
                lblProductLine1.Text = li.productDescription;
                lblEndoStatus1.Text = li.endo_Status;
            }
            #endregion
        }

        protected void btnAccepted_Click(object sender, EventArgs e)
        {
            string res = "Accepted";

            // Accept the updated Details
            #region Accept updated Details
            int n1 = bll.AcceptRejectUserRequest(n, res);
            int n2 = bll.EndorsementDelete(n);
            if (n1 == 1)
            {
                Response.Write("<script type = 'text/javascript'>alert('Details Accepted')</script>");
                Response.Redirect("AdminViewEndoStatus.aspx");
            }
            else
                Response.Write("<script type = 'text/javascript'>alert('Errors while Accepting!!! Try Again')</script>");

            #endregion


        }

        protected void btnRejected_Click(object sender, EventArgs e)
        {
            string res = "Rejected";

            //  Reject the updated Details
            #region Reject updated Details
            int n1 = bll.AcceptRejectUserRequest(n, res);
            int n2 = bll.EndorsementDelete(n);

            if (n1 == 1)
            {
                Response.Write("<script type = 'text/javascript'>alert('Details Rejected')</script>");
                Response.Redirect("AdminViewEndoStatus.aspx");
            }
            else
                Response.Write("<script type = 'text/javascript'>alert('Errors while Accepting!!! Try Again')</script>");

            #endregion
        }
    }
}