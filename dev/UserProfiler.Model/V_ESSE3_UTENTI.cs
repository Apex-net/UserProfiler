//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace UserProfiler.Model
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    
    public partial class V_ESSE3_UTENTI
    {
    
    
        [Required]
        public int UserId { get; set; }
    
    
        [Required]
        public short GRP_ID { get; set; }
    
    
    	[StringLength(80)]
        public string COGNOME { get; set; }
    
    
    	[StringLength(80)]
        public string NOME { get; set; }
    
    
    	[StringLength(16)]
        public string COD_FIS { get; set; }
    
    
    	[StringLength(255)]
        public string EMAIL { get; set; }
    
    
    	[StringLength(255)]
        public string EMAIL_ATE { get; set; }
    
    
        public Nullable<int> PERS_ID { get; set; }
    
    
        public Nullable<int> SOGG_EST_ID { get; set; }
    
    
        public Nullable<int> DOCENTE_ID { get; set; }
    
        public virtual Utente Utente { get; set; }
        public virtual V_ESSE3_GRUPPI_UTENTE V_ESSE3_GRUPPI_UTENTE { get; set; }
    }
}