using System;

namespace SafeSure.ExceptionLayer
{
    /// <summary>
    /// Batch No : 2
    /// Project Name : Policy Endoresement System
    /// Description :Exception Class for Document
    /// </summary>
    public class DocumentException : ApplicationException
    {
        public DocumentException() : base()
        {

        }
        public DocumentException(string message)
                : base(message)
        {

        }
    }
}
