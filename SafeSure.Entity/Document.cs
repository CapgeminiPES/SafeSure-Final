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
    
    public partial class Document
    {
        public int documentId { get; set; }
        public Nullable<int> endorsementId { get; set; }
        public string idNumber { get; set; }
        public string idDescription { get; set; }
        public Nullable<int> Policy_number { get; set; }
    
        public virtual Endorsement Endorsement { get; set; }
    }
}