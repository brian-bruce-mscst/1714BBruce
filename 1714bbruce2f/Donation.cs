//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace _1714bbruce2f
{
    using System;
    using System.Collections.Generic;
    
    public partial class Donation
    {
        public int Id { get; set; }
        public System.DateTime DonationDate { get; set; }
        public decimal Value { get; set; }
    
        public virtual Person Person { get; set; }
        public virtual DonationType DonationType { get; set; }
    }
}
