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
    /// Description : Add Customer Details
    /// </summary>
    public partial class AdminAddCustomer : System.Web.UI.Page
    {
        AdminBLL bll = new AdminBLL();

        Customer cust = new Customer();
        Policy policy = new Policy();
        Document doc = new Document();

        protected void Page_Load(object sender, EventArgs e)
        {
            int n1 = bll.FindLastPolicyNumber();
            txtPolicyNumber.Text = n1.ToString();

            int n2 = bll.FindLastCustomerId();
            txtCustomerId.Text = n2.ToString();

            Master.Logout = true;
           
        }

        //Add Customer
        #region To Add New Customer

        protected void btnAddCustomer_Click(object sender, EventArgs e)
        {

            int n1 = bll.FindLastPolicyNumber();
            int n2 = bll.FindLastCustomerId();

            //Customer
            #region Customer Details
            cust.customer_id = n2;
            cust.Customer_name = txtCustName.Text;
            cust.Date_of_Birth = DateTime.Parse(txtDOB.Text);
            cust.Customer_address = txtAddress.Text;
            cust.Mobile_number = txtTelephone.Text;
            cust.product_id = int.Parse(txtProduct.Text);
            cust.Hobbies = txtHobbies.Text;
            cust.endorsementStatus = "Accepted";
            if (rdbMale.Checked == true)
            {
                cust.gender = "M";
            }
            else
            {
                cust.gender = "F";
            }

            if (Smoker.Checked == true)
            {
                cust.Smoker = "Y";
            }
            else
            {
                cust.Smoker = "N";
            }
            bll.CreateCustomer(cust);
            #endregion

            //Policy
            #region Policy Details
            policy.Policy_number = n1;
            policy.Customer_id = n2;
            policy.product_id = int.Parse(txtProduct.Text);
            policy.nomineeName = txtNomineeName.Text;

            if (ddlPremiumPaymentMethod.SelectedIndex.Equals(1))
            {
                policy.paymentMode = "Monthly";
            }
            else if (ddlPremiumPaymentMethod.SelectedIndex.Equals(2))
            {
                policy.paymentMode = "Quarterly";
            }
            else if (ddlPremiumPaymentMethod.SelectedIndex.Equals(3))
            {
                policy.paymentMode = "Half yearly";
            }
            else
            {
                policy.paymentMode = "Annually";
            }


            if (ddlRelationship.SelectedIndex.Equals(1))
            {
                policy.Relationship = "Father";
            }
            else if (ddlRelationship.SelectedIndex.Equals(2))
            {
                policy.Relationship = "Mother";
                
            }
            else if (ddlRelationship.SelectedIndex.Equals(3))
            {
                policy.Relationship = "Husband";
            }
            else if (ddlRelationship.SelectedIndex.Equals(4))
            {
                policy.Relationship = "Wife";
            }            
            else
            {
                policy.Relationship = "Others";
            }

            bll.CreatePolicy(policy);
            #endregion

            //Documents
            #region Add Documents details

            doc.Policy_number = n1;
            if (ddlIDProof.SelectedIndex.Equals(4))
            {
                doc.idDescription = "Voter Card";
            }
            else if (ddlIDProof.SelectedIndex.Equals(2))
            {
                doc.idDescription = "PAN";
            }
            else if (ddlIDProof.SelectedIndex.Equals(3))
            {
                doc.idDescription = "Passport";
            }
            else
            {
                doc.idDescription = "Aadhar Card";
               
            }
            doc.idNumber = txtIDProofNumber.Text;

            int n = bll.CreateDocument(doc);

            if (n == 1)
            {
                Response.Write("<script type = 'text/javascript'>alert('Customer Added Successfully')</script>");

                Response.Redirect("ViewCustomer.aspx");
            }
            else
                Response.Write("<script type = 'text/javascript'>alert('Customer Not Added!!! Try Again ')</script>");

        }
        #endregion
        #endregion

    }
}