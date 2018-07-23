using SafeSure.Entity;
using System;
using System.Linq;

namespace SafeSure.DAL
{  
    public class LoginDAL
    {
        /// <summary>
        /// Batch No : 2
        /// Project Name : Policy Endoresement System
        /// Description :DAL To Create Authorize UserLogin and AdminLoign
        /// </summary>

        PES_Entities policy = new PES_Entities();

        //CreateUserLogin
        #region Create User Login
        public int CreateUserLogin(string custId, string password)
        {
            int n = 0;
            try
            {
                policy.LoginDetails.Add(new LoginDetail
                {
                    customer_id = custId,
                    Customer_Password = password
                });

                policy.SaveChanges();
                n = 1;
            }
            catch (Exception ex)
            {
                throw;
            }
            return n;
        }
        #endregion

        //CreateAdminLogin
        #region Create Admin Login
        public int CreateAdminLogin(string userId, string password)
        {
            int n = 0;
            try
            {
                policy.LoginAdmins.Add(new LoginAdmin
                {
                    UserName = userId,
                    Password = password
                });

                policy.SaveChanges();
                n = 1;
            }
            catch (Exception ex)
            {
                throw;
            }
            return n;
        }
        #endregion

        //Check User Login
        #region Authorize User Login
        public string CheckUserLogin(string custId, string password)
        {
            string result="";

            var query = (from pol in policy.LoginDetails
                        where pol.customer_id == custId && pol.Customer_Password == password
                        select pol).FirstOrDefault();

            if (query != null)
            {
                result = query.customer_id;
            }            
            return result;
        }
        #endregion

        //Check Admin Login
        #region Authorize User Login
        public string CheckAdminLogin(string userId, string password)
        {
            string result = "";

            var query = (from pol in policy.LoginAdmins
                         where pol.UserName == userId && pol.Password == password
                         select pol).FirstOrDefault();

            if (query != null)
            {
                result = query.UserName;
            }
            return result;
        }
        #endregion
    }
}
