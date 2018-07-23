using System;

namespace SafeSure.Entity
{
    /// <summary>
    /// Batch No : 2
    /// Project Name : Policy Endoresement System
    /// Description :Entity For Endorsement Table
    /// </summary>
    class Endorsement_PES
    {
        public int endo_Id { get; set; }
        public int customerId { get; set; }
        public int policyNumber { get; set; }
        public string endo_Status { get; set; }
    }
}
