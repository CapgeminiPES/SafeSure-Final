using System;

namespace SafeSure.Entity
{

    /// <summary>
    /// Batch No : 2
    /// Project Name : Policy Endoresement System
    /// Description :Entity Class for Customer
    /// 
    /// </summary>
    
    public class Customer_PES
    {
        
        public int customerId { get; set; }
        public int productId { get; set; }
        public string customerName { get; set; }
        public string address { get; set; }
        public long mobile { get; set; }
        public string gender { get; set; }        
        public string smoker { get; set; }
        public DateTime customerDob { get; set; }
        public string hobbies { get; set; }
        public string endo_Status { get; set; }
    }
}
