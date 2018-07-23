using SafeSure.Entity;
using System;
using System.Collections.Generic;
using System.Linq;

namespace SafeSure.DAL
{
    public class AdminDAL
    {
        /// <summary>
        /// Batch No : 2
        /// Project Name : Policy Endoresement System
        /// Description :DAL to Perform Admin Operations 
        /// </summary>

        PES_Entities pol = new PES_Entities();

        //add Customer
        #region To Add New Customer
        public int CreateCustomer(Customer cust)
        {
            int n = 0;
            try
            {
                pol.Customers.Add(new Customer
                {
                    customer_id = cust.customer_id,
                    product_id = cust.product_id,
                    Customer_name = cust.Customer_name,
                    Date_of_Birth = cust.Date_of_Birth,
                    Mobile_number = cust.Mobile_number,
                    Customer_address = cust.Customer_address,
                    endorsementStatus = cust.endorsementStatus,
                    gender = cust.gender,
                    Hobbies = cust.Hobbies,
                    Smoker = cust.Smoker
                });

                pol.SaveChanges();
                n = 1;
            }
            catch (Exception)
            {
                throw;
            }
            return n;
        }
        #endregion

        //Add Policy
        #region To add new policy
        public int CreatePolicy(Policy policy)
        {
            int n = 0;
            try
            {
                pol.Policies.Add(new Policy
                {
                    Customer_id = policy.Customer_id,
                    Policy_number = policy.Policy_number,
                    product_id = policy.product_id,
                    paymentMode = policy.paymentMode,
                    nomineeName = policy.nomineeName,
                    Relationship = policy.Relationship
                });

                pol.SaveChanges();
                n = 1;
            }
            catch (Exception )
            {
                throw;
            }
            return n;
        }
        #endregion

        //Add Document Details
        #region To add Supporting documents
        public int CreateDocument(Document document)
        {
            int n = 0;
            try
            {
                pol.Documents.Add(new Document
                {
                     Policy_number = document.Policy_number,                     
                     idNumber = document.idNumber,
                     idDescription = document.idDescription,
                    endorsementId = document.endorsementId
                });

                pol.SaveChanges();
                n = 1;
            }
            catch (Exception )
            {
                throw;
            }
            return n;
        }
        #endregion

        //Create InsuranceProduct
        #region To Add New Insurance Product
        public int CreateProduct(InsuranceProduct product)
        {
            int n = 0;
            try
            {
                pol.InsuranceProducts.Add(new InsuranceProduct
                {
                    Product_ID = product.Product_ID,
                    Product_name = product.Product_name,
                    Product_description = product.Product_description
                });

                pol.SaveChanges();
                n = 1;
            }
            catch (Exception )
            {
                throw;
            }
            return n;
        }
        #endregion

        //Create New user Credentials
        #region To Create New User Credentials
        public int CreateLogin(string uID, string pwd)
        {
            int n = 0;
            try
            {
                
                pol.LoginDetails.Add(new LoginDetail
                {
                    customer_id = uID,
                    Customer_Password = pwd
                });

                n = 1;

                pol.SaveChanges();
            }
            catch (Exception )
            {
                throw;
            }
            return n;
        }
        #endregion

        //To find the Next Customer Id
        #region To Find Next Customer Id
        public int FindLastCustomerId()
        {
            int n = 0;
            try
            {
                var max = pol.Customers.Max(x => x.customer_id);

                n = max + 1 ;
                pol.SaveChanges();
            }
            catch (Exception )
            {
                throw;
            }
            return n;
        }
        #endregion

        //To find Next Policy Number
        #region To find Next Policy Number
        public int FindLastpolicyNumber()
        {
            int n = 0;
            try
            {
                var max = pol.Policies.Max(x => x.Policy_number);

                n = max + 1;
                pol.SaveChanges();
            }
            catch (Exception )
            {
                throw;
            }
            return n;
        }
        #endregion
    }
}
