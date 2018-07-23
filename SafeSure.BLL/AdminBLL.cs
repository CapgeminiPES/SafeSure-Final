using SafeSure.DAL;
using SafeSure.Entity;
using System;

namespace SafeSure.BLL
{
    public class AdminBLL
    {
        /// <summary>
        /// Batch No : 2
        /// Project Name : Policy Endoresement System
        /// Description :BLL layer to validate all the functionalities of Admin
        /// </summary>
        AdminDAL adminDAL = new AdminDAL();

        //To Create New Customer 

        public int CreateCustomer(Customer customer)
        {
            try
            {
                return adminDAL.CreateCustomer(customer);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        //To Create New Policy
        public int CreatePolicy(Policy policy)
        {
            try
            {
                return adminDAL.CreatePolicy(policy);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        //To Add Documents for Verfication 
        public int CreateDocument(Document document)
        {
            try
            {
                return adminDAL.CreateDocument(document);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        //To Add new  InsuranceProduct
        public int CreateProduct(InsuranceProduct product)
        {
            try
            {
                return adminDAL.CreateProduct(product);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        //To Create New User Login
        public int CreateLogin(string uId,string Password)
        {
            try
            {
                return adminDAL.CreateLogin(uId, Password);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        
        //To Find The Last Customer Id In the Table
        public int FindLastCustomerId()
        {
            try
            {
                return adminDAL.FindLastCustomerId();
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        //To Find The Last Policy Number In the Table
        public int FindLastPolicyNumber()
        {
            try
            {
                return adminDAL.FindLastpolicyNumber();
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}
