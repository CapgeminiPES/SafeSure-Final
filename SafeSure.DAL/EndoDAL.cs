using SafeSure.Entity;
using System;
using System.Collections.Generic;
using System.Linq;


namespace SafeSure.DAL
{
    public class EndoDAL
    {

        /// <summary>
        /// Batch No : 2
        /// Project Name : Policy Endoresement System
        /// Description :DAL for Endoresement Functionalities
        /// </summary>
        PES_Entities policy = new PES_Entities();

        //RequestEndorsementView
        #region Request for new Endoresements
        public List<Endorsement> RequestEndorsementView()
        {
            List<Endorsement> list = new List<Endorsement>();

            var query = (from t1 in policy.Endorsements
                          where t1.endorsementStatus == "Pending"
                          select new
                          {
                              t1.customer_Id,
                              t1.Policy_number,
                              t1.endorsementId,
                              t1.endorsementStatus                              
                          });

            foreach (var item in query)
            {
                list.Add(new Endorsement
                {
                    customer_Id = item.customer_Id,
                    Policy_number = item.Policy_number,
                    endorsementId = item.endorsementId,
                    endorsementStatus = item.endorsementStatus
                }
                );
            }

            policy.SaveChanges();
            return list;
        }
        #endregion

        //EndorsementDelete
        #region Deleted Endoresed Details
        public int EndorsementDelete(int id)
        {
            int n = 0;

            var query = (from t1 in policy.Endorsements
                          where t1.customer_Id == id
                          select t1).FirstOrDefault();

            policy.Endorsements.Remove(query);
            n = 1;

            policy.SaveChanges();
            return n;
        }
        #endregion

        //EndorsementUpdate
        #region Update the Endoresement Status
        public int EndorsementUpdate(int id, int custId)
        {
            int n = 0;

            Endorsement endo = new Endorsement()
            {
                Policy_number = id,
                customer_Id = custId,
                endorsementStatus = "Pending",

            };

            policy.Endorsements.Add(endo);
            n = 1;

            policy.SaveChanges();
            return n;
        }
        #endregion

        //AcceptRejectUserRequest
        #region Accept Or Rejects Endoresements
        public int AcceptRejectUserRequest(int id, string res)
        {
            int n = 0;

            var query = from t1 in policy.Customers
                        where t1.customer_id == id
                        select t1;

            foreach (var item in query)
            {
                item.endorsementStatus = res;
                n = 1;
            }

            policy.SaveChanges();
            return n;
        }
        #endregion
    }
}
