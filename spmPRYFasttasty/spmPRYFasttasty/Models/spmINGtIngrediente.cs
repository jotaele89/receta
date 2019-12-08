namespace spmPRYFasttasty.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;
    using System.Linq;
    using System.Data.Entity;
    [Table("spmINGtIngrediente")]
    public partial class spmINGtIngrediente
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public spmINGtIngrediente()
        {
            spmRINpReceta_Ingrediente = new HashSet<spmRINpReceta_Ingrediente>();
        }

        [Key]
        public int INGid { get; set; }

        [Required]
        [StringLength(250)]
        public string INGnombre { get; set; }

        [Required]
        [StringLength(250)]
        public string INGunidad_medida { get; set; }

        [Required]
        [StringLength(250)]
        public string INGfoto { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<spmRINpReceta_Ingrediente> spmRINpReceta_Ingrediente { get; set; }

        // METODO LISTAR
        //*****************************************************************
        public List<spmINGtIngrediente> Listar() //retorna una collection
        {
            var objIngrediente = new List<spmINGtIngrediente>();
            try
            {
                using (var db = new Modelo_Sistema())
                {
                    objIngrediente = db.spmINGtIngrediente.ToList();
                }
            }
            catch (Exception ex)
            {
                throw;
            }
            return objIngrediente;
        }

        public List<spmRECpReceta> ListarRecetas() //retorna una collection
        {
            var objIngrediente = new List<spmRECpReceta>();
            try
            {
                using (var db = new Modelo_Sistema())
                {
                    objIngrediente = db.spmRECpReceta.ToList();
                }
            }
            catch (Exception ex)
            {
                throw;
            }
            return objIngrediente;
        }

        //METODO OBTENER
        //*****************************************************************
        public spmINGtIngrediente Obtener(int id) // retorna solo un objeto
        {
            var objIngrediente = new spmINGtIngrediente();
            try
            {
                using (var db = new Modelo_Sistema())
                {
                    objIngrediente = db.spmINGtIngrediente.Where(x => x.INGid == id)
                                    .SingleOrDefault();
                }
            }
            catch (Exception ex)
            {
                throw;
            }
            return objIngrediente;
        }

        //METODO GUARDAR
        //*****************************************************************
        public void Guardar()
        {
            try
            {
                using (var db = new Modelo_Sistema())
                {
                    if (this.INGid > 0)
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
