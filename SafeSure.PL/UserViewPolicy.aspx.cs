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
    /// Description : User View Policy
    /// </summary>
    public partial class UserViewPolicy : System.Web.UI.Page
    {
        List<PolicyEndorsement> list = new List<PolicyEndorsement>();

        SearchBLL bll = new SearchBLL();

        int n;
        protected void Page_Load(object sender, EventArgs e)
        {
            Master.Logout = true;

            //Reading user Details
            #region Read User Details
            n = int.Parse(Request.QueryString["Id"]);
            list = bll.SearchByCustomerId(n);
            foreach (var li in list)
            {
                lblCustId1.Text = li.customerId.ToString();
                lblAddress1.Text = li.address;
                lblDOB1.Text = li.customerDob.ToString();

                if(li.gender=="M")
                    lblGender1.Text = "Male";
                else
                    lblGender1.Text = "Female";

                lblIDProof1.Text = li.idDescription;
                lblInsuredName1.Text = li.customerName;
                lblNomineeName1.Text = li.nomineName;
                lblPolicyNumber1.Text = li.policyNumber.ToString();
                lblPremiumPaymentMethod1.Text= li.paymentMode;
                lblProductName1.Text = li.productName;
                lblRelationWithNominee1.Text = li.relationShip;

                if(li.smoker=="Y")
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

        protected void btnEdit_Click(object sender, EventArgs e)
        {
            Response.Redirect("UserUpdatePolicy.aspx?Id=" + n);
        }

        protected void btnBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("UserSearchPolicy.aspx");
        }
    }
}