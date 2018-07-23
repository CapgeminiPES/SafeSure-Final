using SafeSure.DAL;
using SafeSure.Entity;
using System;
using System.Collections.Generic;

namespace SafeSure.BLL
{
    public class EndoBLL
    {
        /// <summary>
        /// Batch No : 2
        /// Project Name : Policy Endoresement System
        /// Description :BLL for endoresement of updated details 
        /// </summary>
        /// 
        EndoDAL endoDAL = new EndoDAL();

        //Request Endorsement View
        public List<Endorsement> RequestEndorsementView()
        {
            try
            {
                return endoDAL.RequestEndorsementView();
            }
            catch(Exception ex)
            {
                throw ex;
            }
        }

        //Accept Reject User Request
        public int AcceptRejectUserRequest(int id, string res)
        {
            try
            {
                return endoDAL.AcceptRejectUserRequest(id, res);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        //Endorsement Update
        public int EndorsementUpdate(int id, int custId)
        {
            try
            {
                return endoDAL.EndorsementUpdate(id, custId);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        //Endorsement Delete
        public int EndorsementDelete(int id)
        {
            try
            {
                return endoDAL.EndorsementDelete(id);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}
