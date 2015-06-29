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
    
    public partial class Utente
    {
    
    
        [Required]
        public int Id { get; set; }
    
    
    	[StringLength(50)]
        [Required]
        public string Nome { get; set; }
    
    
    	[StringLength(50)]
        [Required]
        public string Cognome { get; set; }
    
    
    	[StringLength(16)]
        public string CodiceFiscale { get; set; }
    
    
    	[StringLength(50)]
        public string Password { get; set; }
    
    
    	[StringLength(255)]
        [Required]
        public string Email { get; set; }
    }
}