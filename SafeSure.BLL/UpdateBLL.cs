using SafeSure.DAL;
using SafeSure.Entity;
using SafeSure.ExceptionLayer;
using System;

namespace SafeSure.BLL
{
    public class UpdateBLL
    {
        /// <summary>
        /// Batch No : 2
        /// Project Name : Policy Endoresement System
        /// Description :Bll For updating the customer details
        /// </summary>

        UpdateDAL updateDAL = new UpdateDAL();

        //Update the details Updated by the User 
        public int UpdateByPolicyNumber(int id, PolicyEndorsement data)
        {
            try
            {
                return updateDAL.UpdateByPolicyNumber(id, data);
            }
            catch(Exception ex)
            {
                throw ex;
            }
        }
    }
}
