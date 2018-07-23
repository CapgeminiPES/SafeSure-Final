using SafeSure.BLL;
using SafeSure.Entity;
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
    /// Description : User Update Policy
    /// </summary>
    public partial class UserUpdatePolicy : System.Web.UI.Page
    {
        List<PolicyEndorsement> list = new List<PolicyEndorsement>();

        #region Bll Objects
        SearchBLL sbll = new SearchBLL();
        EndoBLL ebll = new EndoBLL();
        UpdateBLL ubll = new UpdateBLL();
        #endregion
        int n = 0;

        protected void Page_Load(object sender, EventArgs e)
        {
            CompareValidator1.ValueToCompare = DateTime.Today.ToShortDateString();

            if (Page.IsPostBack == false)
            {
                //Update Initial View
                #region Update Initial View
                n = int.Parse(Request.QueryString["Id"]);
                list = sbll.SearchByCustomerId(n);
                foreach (var li in list)
                {
                    txtCustomerId.Text = li.customerId.ToString();
                    txtAddress.Text = li.address;
                    DateTime d = DateTime.Parse(li.customerDob.ToString());
                    txtDOB.Text = d.ToString("yyyy-MM-dd");


                    if (li.gender == "F")
                    {
                        rdbFemale.Checked = true;
                    }
                    else
                    {
                        rdbMale.Checked = true;
                    }


                    if (li.smoker == "Y")
                    {
                        rdbSmokeYes.Checked = true;
                    }
                    else
                    {
                        rdbSmokeNo.Checked = true;
                    }


                    if (li.productDescription == "Life")
                    {
                        rdbLife.Checked = true;
                    }
                    else
                    {
                        rdbNonLife.Checked = true;
                    }


                    if (li.idDescription == "Passport")
                    {
                        ddlIDProof.SelectedValue = "Passport";
                    }
                    else if (li.idDescription == "PAN")
                    {
                        ddlIDProof.SelectedValue = "PAN";
                    }
                    else if (li.idDescription == "Voter Card")
                    {
                        ddlIDProof.SelectedValue = "Voter Card";
                    }
                    else
                    {
                        ddlIDProof.SelectedValue = "Aadhar Card";
                    }


                    if (li.relationShip == "Father")
                    {
                        ddlRelation.SelectedValue = "Father";
                    }
                    else if (li.relationShip == "Mother")
                    {
                        ddlRelation.SelectedValue = "Mother";
                    }
                    else if (li.relationShip == "wife")
                    {
                        ddlRelation.SelectedValue = "wife";
                    }
                    else if (li.relationShip == "Husband")
                    {
                        ddlRelation.SelectedValue = "Husband";
                    }
                    else
                    {
                        ddlRelation.SelectedValue = "Others";
                    }


                    if (li.paymentMode == "Quarterly")
                    {
                        ddlPremiumPaymentMethod.SelectedValue = "Quarterly";
                    }
                    else if (li.paymentMode == "Monthly")
                    {
                        ddlPremiumPaymentMethod.SelectedValue = "Monthly";
                    }
                    else if (li.paymentMode == "HalfYearly")
                    {
                        ddlPremiumPaymentMethod.SelectedValue = "HalfYearly";
                    }
                    else
                    {
                        ddlPremiumPaymentMethod.SelectedValue = "Annually";
                    }

                    txtInsuredName.Text = li.customerName;
                    txtNomineeName.Text = li.nomineName;
                    txtPolicyNumber.Text = li.policyNumber.ToString();
                    txtProductName.Text = li.productName;
                    txtTelephoneNumber.Text = li.mobile.ToString();
                    txtIDProofNumber.Text = li.idNumber.ToString();
                    txtendo.Text = li.endo_Status;
                    #endregion
                }
            }
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
          PolicyEndorsement da = new PolicyEndorsement ();

            //Updating the details
            #region Updating the details
            if (rdbMale.Checked == true)
                {
                    da.gender = "M";
                }
                else if (rdbFemale.Checked == true)
                {
                    da.gender = "F";
                }


                if (rdbSmokeYes.Checked == true)
                {
                    da.smoker = "Y";
                }
                else
                {
                    da.smoker = "N";
                }


                if (rdbLife.Checked == true)
                {
                    da.productDescription = "Life";
                }
                else
                {
                    da.productDescription = "NonLife";
                }


                if (ddlIDProof.SelectedValue == "Passport")
                {
                     da.idDescription = "Passport";
                }
                else if (ddlIDProof.SelectedValue == "PAN")
                {
                    da.idDescription = "PAN";
                    
                }
                else if (ddlIDProof.SelectedValue == "Voter Card")
                {
                    da.idDescription = "Voter Card";
                }
                else
                {
                    da.idDescription = "Aadhar Card";
                }


                if (ddlRelation.SelectedValue == "Father")
                {
                    da.relationShip = "Father";
                }
                else if (ddlRelation.SelectedValue == "Mother")
                {
                    da.relationShip = "Mother";
                }
                else if (ddlRelation.SelectedValue == "wife")
                {
                    da.relationShip = "wife";
                }
                else if (ddlRelation.SelectedValue == "Husband")
                {
                    da.relationShip = "Husband";
                }
                else
                {
                    da.relationShip = "Others";
                }


                if (ddlRelation.SelectedValue == "Quarterly")
                {
                    da.paymentMode = "Quarterly";
                }
                else if (ddlRelation.SelectedValue == "Monthly")
                {
                    da.paymentMode = "Monthly";
                }
                else if (ddlRelation.SelectedValue == "HalfYearly")
                {
                    da.paymentMode = "HalfYearly";
                }
                else
                {
                    da.paymentMode = "Annually";
                }
               
                da.customerId = int.Parse(txtCustomerId.Text);
                da.policyNumber = int.Parse(txtPolicyNumber.Text);
                da.address = txtAddress.Text;
                da.customerDob = DateTime.Parse(txtDOB.Text);
                da.customerName = txtInsuredName.Text;
                da.endo_Status = txtendo.Text;
                da.idNumber = txtIDProofNumber.Text;
                da.mobile = long.Parse(txtTelephoneNumber.Text);
                da.nomineName = txtNomineeName.Text;
                da.productName = txtProductName.Text;

            int m = int.Parse(txtPolicyNumber.Text);
            int n = ubll.UpdateByPolicyNumber(m, da);
           

            int num1 = int.Parse(txtCustomerId.Text);
            int num2 = int.Parse(txtPolicyNumber.Text);

            int l = ebll.EndorsementUpdate(num2, num1);

            if(n==1)
            {
                Response.Write("<script type = 'text/javascript'>alert('Data Updated Successfully')</script>");
                Response.Redirect("UserUpdateResult.aspx?Id=" + n);
            }
            else
            {
                Response.Write("<script type = 'text/javascript'>alert('Error while Updating.....Please contact Admin(ezhilarasi.v@capgemini.com)')</script>");

            }
            #endregion
        }

       
       

        protected void rdbMale_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void btncancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("UserSearchPolicy.aspx");
        }
    }
}