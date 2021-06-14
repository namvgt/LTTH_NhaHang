namespace LTTH_NhaHang.Models
{
    using System;
    using System.Data.Entity;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Linq;

    public partial class Model1 : DbContext
    {
        public Model1()
            : base("name=Model1")
        {
        }

        public virtual DbSet<BAN> BANs { get; set; }
        public virtual DbSet<BLOG> BLOGs { get; set; }
        public virtual DbSet<DATBAN> DATBANs { get; set; }
        public virtual DbSet<DAUBEP> DAUBEPs { get; set; }
        public virtual DbSet<DDATBAN> DDATBANs { get; set; }
        public virtual DbSet<KHACHHANG> KHACHHANGs { get; set; }
        public virtual DbSet<LOAIBAN> LOAIBANs { get; set; }
        public virtual DbSet<LOAIMONAN> LOAIMONANs { get; set; }
        public virtual DbSet<MONAN> MONANs { get; set; }
        public virtual DbSet<NGUOIDUNG> NGUOIDUNGs { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Entity<BAN>()
                .HasMany(e => e.DDATBANs)
                .WithRequired(e => e.BAN)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<BLOG>()
                .Property(e => e.anhminhhoa)
                .IsFixedLength();

            modelBuilder.Entity<DATBAN>()
                .Property(e => e.giodat)
                .IsFixedLength()
                .IsUnicode(false);

            modelBuilder.Entity<DAUBEP>()
                .Property(e => e.sdt)
                .IsFixedLength();

            modelBuilder.Entity<DAUBEP>()
                .Property(e => e.mota)
                .IsUnicode(false);

            modelBuilder.Entity<DAUBEP>()
                .Property(e => e.anhminhhoa)
                .IsFixedLength();

            modelBuilder.Entity<KHACHHANG>()
                .Property(e => e.sdt)
                .IsFixedLength();

            modelBuilder.Entity<KHACHHANG>()
                .Property(e => e.email)
                .IsFixedLength();

            modelBuilder.Entity<KHACHHANG>()
                .HasMany(e => e.DATBANs)
                .WithOptional(e => e.KHACHHANG)
                .WillCascadeOnDelete();

            modelBuilder.Entity<LOAIMONAN>()
                .Property(e => e.anhminhhoa)
                .IsFixedLength();

            modelBuilder.Entity<LOAIMONAN>()
                .HasMany(e => e.MONANs)
                .WithRequired(e => e.LOAIMONAN)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<MONAN>()
                .Property(e => e.anhminhhoa)
                .IsFixedLength();

            modelBuilder.Entity<NGUOIDUNG>()
                .Property(e => e.sdt)
                .IsFixedLength();

            modelBuilder.Entity<NGUOIDUNG>()
                .Property(e => e.username)
                .IsFixedLength();

            modelBuilder.Entity<NGUOIDUNG>()
                .Property(e => e.password)
                .IsFixedLength();

            modelBuilder.Entity<NGUOIDUNG>()
                .Property(e => e.quyen)
                .IsFixedLength();

            modelBuilder.Entity<NGUOIDUNG>()
                .Property(e => e.anhminhhoa)
                .IsFixedLength();
        }
    }
}
