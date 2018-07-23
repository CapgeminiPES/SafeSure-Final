using System;

namespace SafeSure.ExceptionLayer
{
    /// <summary>
    /// Batch No : 2
    /// Project Name : Policy Endoresement System
    /// Description :Exception Class for Product
    /// </summary>
    public class ProductException : ApplicationException
    {
        public ProductException() : base()
        {

        }
        public ProductException(string message)
                : base(message)
        {

        }
    }
}
