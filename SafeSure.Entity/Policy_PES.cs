using System;

namespace SafeSure.Entity
{
    /// <summary>
    /// Batch No : 2
    /// Project Name : Policy Endoresement System
    /// Description :
    /// </summary>
    public class Policy_PES
    {
        public int productId { get; set; }
        public int customerId { get; set; }
        public int policyNumber { get; set; }
        public string nomineName { get; set; }
        public string paymentMode { get; set; }
        public string relationship { get; set; }
    }
}
