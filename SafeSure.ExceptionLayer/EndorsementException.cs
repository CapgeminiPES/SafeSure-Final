using System;

namespace SafeSure.ExceptionLayer
{
    /// <summary>
    /// Batch No : 2
    /// Project Name : Policy Endoresement System
    /// Description :Exception Class for Endorsement
    /// </summary>
    public class EndorsementException : ApplicationException
    {
        public EndorsementException() : base ()
        {

        }
        public EndorsementException(string message)
                : base(message)
        {

        }
    }
}
