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
    
    public partial class Endorsement
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Endorsement()
        {
            this.Documents = new HashSet<Document>();
        }
    
        public int endorsementId { get; set; }
        public Nullable<int> Policy_number { get; set; }
        public string endorsementStatus { get; set; }
        public Nullable<int> customer_Id { get; set; }
    
        public virtual Customer Customer { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Document> Documents { get; set; }
        public virtual Policy Policy { get; set; }
    }
}
