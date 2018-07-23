using SafeSure.Entity;
using System;
using System.Linq;

namespace SafeSure.DAL
{
    public class UpdateDAL
    {
        /// <summary>
        /// Batch No : 2
        /// Project Name : Policy Endoresement System
        /// Description :DAL to Update the customer details
        /// </summary>

        PES_Entities policy = new PES_Entities();

        #region   Update the details    
        //Update By Policy Number
        public int UpdateByPolicyNumber(int id, PolicyEndorsement data)
        {
            int n = 0;
            try
            {
                var query = (from t1 in policy.Customers
                            join t2 in policy.Policies on t1.product_id equals t2.product_id
                            join t3 in policy.InsuranceProducts on t2.product_id equals t3.Product_ID
                            join t4 in policy.Documents on t2.Policy_number equals t4.Policy_number
                            where t2.Policy_number == id
                            select new
                            { t1, t2, t3, t4 });

              //  n = 1;
                foreach (var item in query)
                {
                    item.t1.Customer_name = data.customerName;
                    item.t1.Date_of_Birth = data.customerDob;
                    item.t1.gender = data.gender;
                    item.t1.Customer_address = data.address;
                    item.t2.nomineeName = data.nomineName;
                    item.t2.Relationship = data.relationShip;
                    item.t1.Smoker = data.smoker;
                    item.t1.Mobile_number = data.mobile.ToString();
                    item.t2.paymentMode = data.paymentMode;
                    item.t1.endorsementStatus = "Pending";
                    item.t4.idNumber = data.idNumber;
                    item.t4.idDescription = data.idDescription;                   
                }

                n = 1;
                policy.SaveChanges();
            }
            catch (Exception ex)
            {
                throw;
            }            
            return n;
        }
        #endregion

    }
}
