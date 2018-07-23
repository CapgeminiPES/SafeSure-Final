using System;

namespace SafeSure.Entity
{
    /// <summary>
    /// Batch No : 2
    /// Project Name : Policy Endoresement System
    /// Description :
    /// </summary>
    public class PolicyEndorsement
    {
        public int customerId { get; set; }
        public int policyNumber { get; set; }
        public string productName { get; set; }
        public string productDescription { get; set; }
        public string customerName { get; set; }
        public DateTime customerDob { get; set; }
        public string address { get; set; }
        public long mobile { get; set; }
        public string gender { get; set; }
        public string paymentMode { get; set; }
        public string nomineName { get; set; }
        public string relationShip { get; set; }
        public string smoker { get; set; }
        public string idNumber { get; set; }
        public string idDescription { get; set; }
        public string endo_Status { get; set; }

    }
}
