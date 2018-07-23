using System;

namespace SafeSure.Entity
{
    /// <summary>
    /// Batch No : 2
    /// Project Name : Policy Endoresement System
    /// Description :Entity For Documents table
    /// </summary>
    public class Documents_PES
    {
        public int endo_Id { get; set; }
        public int policyNumber { get; set; }
        public string idNumber { get; set; }
        public string idDescription { get; set; }
    }
}
