namespace spmPRYFasttasty.Models
{
    using System;
    using System.Data.Entity;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Linq;

    public partial class Modelo_Sistema : DbContext
    {
        public Modelo_Sistema()
            : base("name=Modelo_Sistema")
        {
        }

        public virtual DbSet<spmINGtIngrediente> spmINGtIngrediente { get; set; }
        public virtual DbSet<spmPADtPadecimiento_Salud> spmPADtPadecimiento_Salud { get; set; }
        public virtual DbSet<spmPLApPlanificacion> spmPLApPlanificacion { get; set; }
        public virtual DbSet<spmRECpReceta> spmRECpReceta { get; set; }
        public virtual DbSet<spmRINpReceta_Ingrediente> spmRINpReceta_Ingrediente { get; set; }
        public virtual DbSet<spmUSUtUsuario> spmUSUtUsuario { get; set; }
        public virtual DbSet<spmVALtValoracion> spmVALtValoracion { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Entity<spmINGtIngrediente>()
                .Property(e => e.INGnombre)
                .IsUnicode(false);

            modelBuilder.Entity<spmINGtIngrediente>()
                .Property(e => e.INGunidad_medida)
                .IsUnicode(false);

            modelBuilder.Entity<spmINGtIngrediente>()
                .Property(e => e.INGfoto)
                .IsUnicode(false);

            modelBuilder.Entity<spmINGtIngrediente>()
                .HasMany(e => e.spmRINpReceta_Ingrediente)
                .WithRequired(e => e.spmINGtIngrediente)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<spmPADtPadecimiento_Salud>()
                .Property(e => e.PADnombre)
                .IsUnicode(false);

            modelBuilder.Entity<spmPADtPadecimiento_Salud>()
                .Property(e => e.PADdescripcion)
                .IsUnicode(false);

            modelBuilder.Entity<spmPADtPadecimiento_Salud>()
                .HasMany(e => e.spmRECpReceta)
                .WithRequired(e => e.spmPADtPadecimiento_Salud)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<spmRECpReceta>()
                .Property(e => e.RECnombre)
                .IsUnicode(false);

            modelBuilder.Entity<spmRECpReceta>()
                .Property(e => e.RECtipo_plato)
                .IsUnicode(false);

            modelBuilder.Entity<spmRECpReceta>()
                .Property(e => e.RECprocedimiento_preparacion)
                .IsUnicode(false);

            modelBuilder.Entity<spmRECpReceta>()
                .Property(e => e.RECfoto)
                .IsUnicode(false);

            modelBuilder.Entity<spmRECpReceta>()
                .HasMany(e => e.spmPLApPlanificacion)
                .WithRequired(e => e.spmRECpReceta)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<spmRECpReceta>()
                .HasMany(e => e.spmRINpReceta_Ingrediente)
                .WithRequired(e => e.spmRECpReceta)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<spmRECpReceta>()
                .HasMany(e => e.spmVALtValoracion)
                .WithRequired(e => e.spmRECpReceta)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<spmUSUtUsuario>()
                .Property(e => e.USUnombre)
                .IsUnicode(false);

            modelBuilder.Entity<spmUSUtUsuario>()
                .Property(e => e.USUapellido)
                .IsUnicode(false);

            modelBuilder.Entity<spmUSUtUsuario>()
                .Property(e => e.USUnombre_usuario)
                .IsUnicode(false);

            modelBuilder.Entity<spmUSUtUsuario>()
                .Property(e => e.USUcorreo_electronico)
                .IsUnicode(false);

            modelBuilder.Entity<spmUSUtUsuario>()
                .Property(e => e.USUcontraseña)
                .IsUnicode(false);

            modelBuilder.Entity<spmUSUtUsuario>()
                .Property(e => e.USUfoto)
                .IsUnicode(false);

            modelBuilder.Entity<spmUSUtUsuario>()
                .HasMany(e => e.spmPLApPlanificacion)
                .WithRequired(e => e.spmUSUtUsuario)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<spmUSUtUsuario>()
                .HasMany(e => e.spmRECpReceta)
                .WithRequired(e => e.spmUSUtUsuario)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<spmUSUtUsuario>()
                .HasMany(e => e.spmVALtValoracion)
                .WithRequired(e => e.spmUSUtUsuario)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<spmVALtValoracion>()
                .Property(e => e.VALcomentario)
                .IsUnicode(false);
        }
    }
}
