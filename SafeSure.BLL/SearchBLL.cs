using SafeSure.DAL;
using SafeSure.Entity;
using SafeSure.ExceptionLayer;
using System;
using System.Collections.Generic;


namespace SafeSure.BLL
{
    public class SearchBLL
    {

        /// <summary>
        /// Batch No : 2
        /// Project Name : Policy Endoresement System
        /// Description :Bll for Searching the policy details
        /// </summary>

        SearchDAL searchDAL = new SearchDAL();

        //Searching using Policy Number
        public List<PolicyEndorsement> SearchByPolicyNumber(int policyNumber)
        {

            try
            {
               
                return searchDAL.SearchByPolicyNumber(policyNumber);
            }
            catch(Exception ex)
            {
                throw ex;
            }
        }

        //Searching using Customer Id
        public List<PolicyEndorsement> SearchByCustomerId(int custId)
        {
            try
            {
                return searchDAL.SearchByCustomerId(custId);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        //Searching using Customer Name and DoB
        public List<PolicyEndorsement> SearchByName(string cName, DateTime dOB)
        {
            try
            {
                return searchDAL.SearchByName(cName, dOB);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

    }
}
