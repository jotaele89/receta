namespace spmPRYFasttasty.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;
    using System.Linq;
    using System.Data.Entity;
    [Table("spmPLApPlanificacion")]
    public partial class spmPLApPlanificacion
    {
        [Key]
        public int PLAid { get; set; }

        public DateTime PLAfecha { get; set; }

        public int PLAporciones { get; set; }

        public int RECid { get; set; }

        public int USUid { get; set; }

        public virtual spmRECpReceta spmRECpReceta { get; set; }

        public virtual spmUSUtUsuario spmUSUtUsuario { get; set; }
    }
}
