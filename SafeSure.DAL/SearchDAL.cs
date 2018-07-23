using SafeSure.Entity;
using System;
using System.Collections.Generic;
using System.Linq;

namespace SafeSure.DAL
{
    public class SearchDAL
    {

        /// <summary>
        /// Batch No : 2
        /// Project Name : Policy Endoresement System
        /// Description :DAL to Search the Customer Policy
        /// </summary>
        /// 
        List<PolicyEndorsement> data = new List<PolicyEndorsement>();
        
        PES_Entities policy = new PES_Entities();

        //Search By Policy number
        #region Searching using policy Number
        public List<PolicyEndorsement> SearchByPolicyNumber(int policyNumber)
        {          

            var query = (from t1 in policy.Customers
                             join t2 in policy.Policies on t1.customer_id equals t2.Customer_id
                             join t3 in policy.InsuranceProducts on t2.product_id equals t3.Product_ID
                             join t4 in policy.Documents on t2.Policy_number equals t4.Policy_number
                             where t2.Policy_number == policyNumber
                             select new
                             {
                                 t1.customer_id,
                                 t2.Policy_number,                               
                                 t3.Product_name,
                                 t3.Product_description,                                 
                                 t1.Customer_name,
                                 t1.Date_of_Birth,
                                 t1.Customer_address,
                                 t1.Mobile_number,                                                              
                                 t1.gender,
                                 t2.paymentMode,
                                 t2.nomineeName,
                                 t2.Relationship,
                                 t1.Smoker,                                 
                                 t4.idNumber,
                                 t4.idDescription,
                                 t1.endorsementStatus
                             });
            
            foreach (var item in query)
            {
                data.Add(new PolicyEndorsement()
                {
                    customerId = item.customer_id,
                    policyNumber = item.Policy_number,                   
                    productName = item.Product_name,
                    productDescription = item.Product_description,                    
                    customerName = item.Customer_name,
                    customerDob = (DateTime)item.Date_of_Birth,
                    address = item.Customer_address,
                    mobile = long.Parse(item.Mobile_number),
                    gender = item.gender,
                    paymentMode = item.paymentMode,
                    nomineName = item.nomineeName,
                    relationShip = item.Relationship,
                    smoker = item.Smoker,
                    idDescription = item.idDescription,
                    idNumber = item.idNumber,
                    endo_Status = item.endorsementStatus
                });
            }

            policy.SaveChanges();
            return data;
        }
        #endregion

        //Search By Customer Name
        #region Searching using Customer Name And DOB
        public List<PolicyEndorsement> SearchByName(string CName, DateTime DOB)
        {
            
            var query = (from t1 in policy.Customers 
                             join t2 in policy.Policies on t1.customer_id equals t2.Customer_id
                             join t3 in policy.InsuranceProducts on t2.product_id equals t3.Product_ID
                             join t4 in policy.Documents on t2.Policy_number equals t4.Policy_number
                             where t1.Customer_name == CName && t1.Date_of_Birth == DOB
                             select new
                              {
                                  t1.customer_id,
                                  t2.Policy_number,
                                  t3.Product_name,
                                  t3.Product_description,
                                  t1.Customer_name,
                                  t1.Date_of_Birth,
                                  t1.Customer_address,
                                  t1.Mobile_number,
                                  t1.gender,
                                  t2.paymentMode,
                                  t2.nomineeName,
                                  t2.Relationship,
                                  t1.Smoker,
                                  t4.idNumber,
                                  t4.idDescription,
                                  t1.endorsementStatus
                              });
                        
            foreach (var item in query)
            {
                data.Add(new PolicyEndorsement()
                {
                    customerId = item.customer_id,
                    policyNumber = item.Policy_number,
                    productName = item.Product_name,
                    productDescription = item.Product_description,
                    customerName = item.Customer_name,
                    customerDob = (DateTime)item.Date_of_Birth,
                    address = item.Customer_address,
                    mobile = long.Parse(item.Mobile_number),
                    gender = item.gender,
                    paymentMode = item.paymentMode,
                    nomineName = item.nomineeName,
                    relationShip = item.Relationship,
                    smoker = item.Smoker,
                    idDescription = item.idDescription,
                    idNumber = item.idNumber,
                    endo_Status = item.endorsementStatus
                });
            }

            policy.SaveChanges();
            return data;
        }
        #endregion 

        //Search By Customer Id
        #region Searching using Customer ID
        public List<PolicyEndorsement> SearchByCustomerId(int custId)
        {
            var query = (from t1 in policy.Customers
                             join t2 in policy.Policies on t1.customer_id equals t2.Customer_id
                             join t3 in policy.InsuranceProducts on t2.product_id equals t3.Product_ID
                             join t4 in policy.Documents on t2.Policy_number equals t4.Policy_number
                             where t1.customer_id == custId
                             select new                              
                              {
                                  t1.customer_id,
                                  t2.Policy_number,
                                  t3.Product_name,
                                  t3.Product_description,
                                  t1.Customer_name,
                                  t1.Date_of_Birth,
                                  t1.Customer_address,
                                  t1.Mobile_number,
                                  t1.gender,
                                  t2.paymentMode,
                                  t2.nomineeName,
                                  t2.Relationship,
                                  t1.Smoker,
                                  t4.idNumber,
                                  t4.idDescription,
                                  t1.endorsementStatus
                              });
           
            foreach (var item in query)
            {
                data.Add(new PolicyEndorsement()
                {
                    customerId = item.customer_id,
                    policyNumber = item.Policy_number,
                    productName = item.Product_name,
                    productDescription = item.Product_description,
                    customerName = item.Customer_name,
                    customerDob = (DateTime)item.Date_of_Birth,
                    address = item.Customer_address,
                    mobile = long.Parse(item.Mobile_number),
                    gender = item.gender,
                    paymentMode = item.paymentMode,
                    nomineName = item.nomineeName,
                    relationShip = item.Relationship,
                    smoker = item.Smoker,
                    idDescription = item.idDescription,
                    idNumber = item.idNumber,
                    endo_Status = item.endorsementStatus
                });
            }

            policy.SaveChanges();
            return data;
        }
        #endregion

    }
}
