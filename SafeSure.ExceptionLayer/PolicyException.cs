using System;

namespace SafeSure.ExceptionLayer
{
    /// <summary>
    /// Batch No : 2
    /// Project Name : Policy Endoresement System
    /// Description :Exception Class for Policy
    /// </summary>
    public class PolicyException : ApplicationException
    {
        public PolicyException() : base()
        {

        }
        public PolicyException(string message) : base(message)
        {

        }
    }
}
