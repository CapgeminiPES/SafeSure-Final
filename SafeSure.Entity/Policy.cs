//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace SafeSure.Entity
{
    using System;
    using System.Collections.Generic;
    
    public partial class Policy
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Policy()
        {
            this.Endorsements = new HashSet<Endorsement>();
        }
    
        public int Policy_number { get; set; }
        public Nullable<int> Customer_id { get; set; }
        public Nullable<int> product_id { get; set; }
        public string nomineeName { get; set; }
        public string paymentMode { get; set; }
        public string Relationship { get; set; }
    
        public virtual Customer Customer { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Endorsement> Endorsements { get; set; }
    }
}