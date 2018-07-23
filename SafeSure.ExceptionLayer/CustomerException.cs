using System;

namespace SafeSure.ExceptionLayer
{
    /// <summary>
    /// Batch No : 2
    /// Project Name : Policy Endoresement System
    /// Description : Exception Class for Customer
    /// </summary>
    public class CustomerException : ApplicationException
    {
        public CustomerException() : base()
        {

        }
        public CustomerException(string message)
                : base(message)
        {

        }
    }
}
