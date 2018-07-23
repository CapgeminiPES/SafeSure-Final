using SafeSure.DAL;
using SafeSure.Entity;
using System;

namespace SafeSure.BLL
{
    public class LoginBLL
    {
        /// <summary>
        /// Batch No : 2
        /// Project Name : Policy Endoresement System
        /// Description :BLL for Authentication Of User Login And Admin Login
        /// </summary>

        LoginDAL loginDAL = new LoginDAL();

        //CheckUserLogin
        public string CheckUserLogin(string CustId, string Paswd)
        {
            try
            {
                var txts = loginDAL.CheckUserLogin(CustId, Paswd);
                return txts;
            }
            catch (Exception ex)
            {
                throw ex;
            }            
        }

        //CheckAdminLogin
        public string CheckAdminLogin(string userId, string password)
        {
            try
            {
                var txts = loginDAL.CheckAdminLogin(userId, password);
                return txts;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

    }
}
