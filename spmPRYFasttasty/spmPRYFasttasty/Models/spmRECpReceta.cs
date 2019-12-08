namespace spmPRYFasttasty.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;
    using System.Linq;
    using System.Data.Entity;
    [Table("spmRECpReceta")]
    public partial class spmRECpReceta
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public spmRECpReceta()
        {
            spmPLApPlanificacion = new HashSet<spmPLApPlanificacion>();
            spmRINpReceta_Ingrediente = new HashSet<spmRINpReceta_Ingrediente>();
            spmVALtValoracion = new HashSet<spmVALtValoracion>();
        }

        [Key]
        public int RECid { get; set; }

        [Required]
        [StringLength(250)]
        public string RECnombre { get; set; }

        [Required]
        [StringLength(250)]
        public string RECtipo_plato { get; set; }

        public int RECtiempo_preparacion { get; set; }

        [Required]
        [StringLength(1500)]
        public string RECprocedimiento_preparacion { get; set; }

        [Required]
        [StringLength(250)]
        public string RECfoto { get; set; }

        public int USUid { get; set; }

        public int PADid { get; set; }

        public virtual spmPADtPadecimiento_Salud spmPADtPadecimiento_Salud { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<spmPLApPlanificacion> spmPLApPlanificacion { get; set; }

        public virtual spmUSUtUsuario spmUSUtUsuario { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<spmRINpReceta_Ingrediente> spmRINpReceta_Ingrediente { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<spmVALtValoracion> spmVALtValoracion { get; set; }

        // METODO LISTAR
        //*****************************************************************
        public List<spmRECpReceta> Listar() //retorna una collection
        {
            var objReceta = new List<spmRECpReceta>();
            try
            {
                using (var db = new Modelo_Sistema())
                {
                    objReceta = db.spmRECpReceta.Include("spmPADtPadecimiento_Salud").Include("spmUSUtUsuario").ToList();
                }
            }
            catch (Exception ex)
            {
                throw;
            }
            return objReceta;
        }

        //METODO OBTENER
        //*****************************************************************
        public spmRECpReceta Obtener(int id) // retorna solo un objeto
        {
            var objReceta = new spmRECpReceta();
            try
            {
                using (var db = new Modelo_Sistema())
                {
                    objReceta = db.spmRECpReceta.Include("spmPADtPadecimiento_Salud").Include("spmUSUtUsuario").Where(x => x.RECid == id)
                                    .SingleOrDefault();
                }
            }
            catch (Exception ex)
            {
                throw;
            }
            return objReceta;
        }

        //METODO GUARDAR
        //*****************************************************************
        public void Guardar()
        {
            try
            {
                using (var db = new Modelo_Sistema())
                {
                    if (this.RECid > 0)
                    {
                        // si existe un valor a 0 es porque existe el registro
                        db.Entry(this).State = EntityState.Modified;
                    }
                    else
                    {
                        // sino existe el registro lo graba (nuevo)
                        db.Entry(this).State = EntityState.Added;
                    }
                    db.SaveChanges();
                }
            }
            catch (Exception ex)
            {
                throw;
            }
        }

        //METODO ELIMINAR
        //*****************************************************************
        public void Eliminar()
        {
            try
            {
                using (var db = new Modelo_Sistema())
                {

                    db.Entry(this).State = EntityState.Deleted;
                    db.SaveChanges();
                }
            }
            catch (Exception ex)
            {
                throw;
            }


        }
    }
}
