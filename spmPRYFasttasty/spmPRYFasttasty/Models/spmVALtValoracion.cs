namespace spmPRYFasttasty.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;
    using System.Linq;
    using System.Data.Entity;
    [Table("spmVALtValoracion")]
    public partial class spmVALtValoracion
    {
        [Key]
        public int VALid { get; set; }

        public int VALnumero_estrellas { get; set; }

        [Required]
        [StringLength(350)]
        public string VALcomentario { get; set; }

        public DateTime VALfecha { get; set; }

        public int RECid { get; set; }

        public int USUid { get; set; }

        public virtual spmRECpReceta spmRECpReceta { get; set; }

        public virtual spmUSUtUsuario spmUSUtUsuario { get; set; }
    }
}
