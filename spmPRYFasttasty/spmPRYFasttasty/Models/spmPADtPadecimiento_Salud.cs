namespace spmPRYFasttasty.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;
    using System.Linq;
    using System.Data.Entity;
    public partial class spmPADtPadecimiento_Salud
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public spmPADtPadecimiento_Salud()
        {
            spmRECpReceta = new HashSet<spmRECpReceta>();
        }

        [Key]
        public int PADid { get; set; }

        [Required]
        [StringLength(250)]
        public string PADnombre { get; set; }

        [Required]
        [StringLength(250)]
        public string PADdescripcion { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<spmRECpReceta> spmRECpReceta { get; set; }

        // METODO LISTAR
        //*****************************************************************
        public List<spmPADtPadecimiento_Salud> Listar() //retorna una collection
        {
            var objSalud = new List<spmPADtPadecimiento_Salud>();
            try
            {
                using (var db = new Modelo_Sistema())
                {
                    objSalud = db.spmPADtPadecimiento_Salud.ToList();
                }
            }
            catch (Exception ex)
            {
                throw;
            }
            return objSalud;
        }
    }
}
