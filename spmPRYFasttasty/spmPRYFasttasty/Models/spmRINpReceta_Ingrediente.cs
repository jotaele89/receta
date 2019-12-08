namespace spmPRYFasttasty.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;
    using System.Linq;
    using System.Data.Entity;
    public partial class spmRINpReceta_Ingrediente
    {
        [Key]
        public int RINid { get; set; }

        public int RECid { get; set; }

        public int INGid { get; set; }

        public int RINcantidad_ingrediente { get; set; }

        public virtual spmINGtIngrediente spmINGtIngrediente { get; set; }

        public virtual spmRECpReceta spmRECpReceta { get; set; }

        // METODO LISTAR
        //*****************************************************************
        public List<spmRINpReceta_Ingrediente> Listar() //retorna una collection
        {
            var objRecetaIngre = new List<spmRINpReceta_Ingrediente>();
            try
            {
                using (var db = new Modelo_Sistema())
                {
                    objRecetaIngre = db.spmRINpReceta_Ingrediente.Include("spmINGtIngrediente").Include("spmRECpReceta").ToList();
                }
            }
            catch (Exception ex)
            {
                throw;
            }
            return objRecetaIngre;
        }

        //METODO OBTENER
        //*****************************************************************
        public spmRINpReceta_Ingrediente Obtener(int id) // retorna solo un objeto
        {
            var objRecetaIngre = new spmRINpReceta_Ingrediente();
            try
            {
                using (var db = new Modelo_Sistema())
                {
                    objRecetaIngre = db.spmRINpReceta_Ingrediente.Include("spmINGtIngrediente").Include("spmRECpReceta").Where(x => x.RECid == id)
                                    .SingleOrDefault();
                }
            }
            catch (Exception ex)
            {
                throw;
            }
            return objRecetaIngre;
        }

        //METODO GUARDAR
        //*****************************************************************
        public void Guardar()
        {
            try
            {
                using (var db = new Modelo_Sistema())
                {
                    if (this.RINid > 0)
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
