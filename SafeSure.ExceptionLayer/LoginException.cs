using System;

namespace SafeSure.ExceptionLayer
{
    /// <summary>
    /// Batch No : 2
    /// Project Name : Policy Endoresement System
    /// Description :Exception Class for Login
    /// </summary>
    public class LoginException : ApplicationException
    {

        public LoginException() : base()
        {

        }
        public LoginException(string message)
                : base(message)
        {

        }
    }
}
