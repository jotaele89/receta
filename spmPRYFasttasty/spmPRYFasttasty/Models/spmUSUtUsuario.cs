namespace spmPRYFasttasty.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    //Agregar librerias

    using System.Linq;
    using System.Data.Entity;
    using System.Data.Entity.Validation;
    using System.Web;
    using System.IO;

    [Table("spmUSUtUsuario")]
    public partial class spmUSUtUsuario
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public spmUSUtUsuario()
        {
            spmPLApPlanificacion = new HashSet<spmPLApPlanificacion>();
            spmRECpReceta = new HashSet<spmRECpReceta>();
            spmVALtValoracion = new HashSet<spmVALtValoracion>();
        }

        [Key]
        public int USUid { get; set; }

        [Required]
        [StringLength(250)]
        public string USUnombre { get; set; }

        [Required]
        [StringLength(250)]
        public string USUapellido { get; set; }

        [Required]
        [StringLength(250)]
        public string USUnombre_usuario { get; set; }

        [Required]
        [StringLength(250)]
        public string USUcorreo_electronico { get; set; }

        [Required]
        [StringLength(250)]
        public string USUcontraseña { get; set; }

        [Required]
        [StringLength(250)]
        public string USUfoto { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<spmPLApPlanificacion> spmPLApPlanificacion { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<spmRECpReceta> spmRECpReceta { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<spmVALtValoracion> spmVALtValoracion { get; set; }

        //-----------------------------------------------------------------------------------------------------------------

        //Metodo Listar
        public List<spmUSUtUsuario> Listar() //Retorna una colleccion
        {
            var objUsuario = new List<spmUSUtUsuario>();
            try
            {
                using (var db = new Modelo_Sistema())
                {
                    objUsuario = db.spmUSUtUsuario.ToList(); //codigo LINQ
                }
            }
            catch (Exception ex)
            {
                throw;
            }
            return objUsuario;
        }

        //Metodo Obtener
        public spmUSUtUsuario Obtener(int id) //Retorna solo un objeto,por eso no se pone list
        {
            var objUsuario = new spmUSUtUsuario();
            try
            {
                using (var db = new Modelo_Sistema())
                {
                    objUsuario = db.spmUSUtUsuario
                                    .Where(x => x.USUid == id)
                                    .SingleOrDefault();
                }
            }
            catch (Exception ex)
            {
                throw;
            }
            return objUsuario;
        }

        //Metodo Guardar
        public void Guardar()
        {
            try
            {
                using (var db = new Modelo_Sistema())
                {
                    if (this.USUid > 0)
                    {
                        //si existe un valor mayor a cero, es porque existe el registro
                        db.Entry(this).State = EntityState.Modified;
                    }
                    else
                    {
                        //si no existe el registro lo guarda(nuevo)
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

        //Metodo Eliminar
        public void Eliminar()
        {
            try
            {
                using (var db = new Modelo_Sistema())
                {
                    db.Entry(this).State = EntityState.Deleted; //elimina el registro
                    db.SaveChanges();
                }
            }
            catch (Exception ex)
            {
                throw;
            }
        }

        //Metodod ValidarLogin
        public spmClsResponseModel ValidarLogin(string Usuario, string Password)
        {
            var rm = new spmClsResponseModel();

            try
            {
                using (var db = new Modelo_Sistema())
                {
                    //Password = spmClsHashHelper.SHA1(Password); //Encriptar Password

                    var usuario = db.spmUSUtUsuario.Where(x => x.USUnombre_usuario == Usuario) //Sentencia LINQ
                                            .Where(x => x.USUcontraseña == Password)
                                            .SingleOrDefault();

                    if (usuario != null)
                    {
                        spmClsSessionHelper.AddUserToSession(usuario.USUid.ToString());
                        rm.SetResponse(true);
                    }
                    else
                    {
                        rm.SetResponse(false, "Usuario o Password incorrecto...");
                    }
                }
            }
            catch (Exception)
            {
                throw;
            }
            return rm;
        }

        //Metodod Actualizar Perfil Personal
        public spmClsResponseModel GuardarPerfil(HttpPostedFileBase USUfoto)
        {
            var rm = new spmClsResponseModel();
            var objUsuario = new spmUSUtUsuario();

            try
            {
                using (var db = new Modelo_Sistema())
                {
                    db.Configuration.ValidateOnSaveEnabled = false;
                    var Usu = db.Entry(this);
                    Usu.State = EntityState.Modified;

                    if (USUfoto != null)
                    {
                        string extension = Path.GetExtension(USUfoto.FileName).ToLower();
                        int size = 1024 * 1024 * 5;

                        var filtroextension = new[] { ".jpg", ".jpeg", ".png", ".gif", ".PNG", ".JPEG" };
                        var extensiones = Path.GetExtension(USUfoto.FileName);

                        if (filtroextension.Contains(extensiones) && (USUfoto.ContentLength <= size))
                        {
                            string archivo = Path.GetFileName(USUfoto.FileName);
                            USUfoto.SaveAs(HttpContext.Current.Server.MapPath("~/Archivos/" + archivo));

                            this.USUfoto = archivo;
                        }
                    }

                    else Usu.Property(x => x.USUfoto).IsModified = false;

                    if (this.USUid == 0) Usu.Property(x => x.USUid).IsModified = false;
                    if (this.USUnombre == null) Usu.Property(x => x.USUnombre).IsModified = false;
                    if (this.USUapellido == null) Usu.Property(x => x.USUapellido).IsModified = false; //true para permitir cambiar
                    if (this.USUnombre_usuario == null) Usu.Property(x => x.USUnombre_usuario).IsModified = false;
                    if (this.USUcontraseña == null) Usu.Property(x => x.USUcontraseña).IsModified = false;
                    if (this.USUcorreo_electronico == null) Usu.Property(x => x.USUcorreo_electronico).IsModified = false;

                    db.SaveChanges();
                    rm.SetResponse(true);
                }
            }
            catch (DbEntityValidationException e)
            {
                throw;
            }
            catch (Exception)
            {
                throw;
            }
            return rm;
        }

        //metodo tamaño del archivo
        public static string SizeString(decimal tamanio)
        {

            string[] sizes = { "Bytes", "KB", "MB", "GB", "TB" };
            int order = 0;
            while (tamanio >= 1024 && order < sizes.Length - 1)
            {
                order++;
                tamanio = tamanio / 1024;
            }
            return string.Format("{0:0.##} {1}", tamanio, sizes[order]);
        }
    }
}
