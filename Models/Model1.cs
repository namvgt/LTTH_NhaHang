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
        public virtual DbSet<CTDATMON> CTDATMONs { get; set; }
        public virtual DbSet<CTHOADON> CTHOADONs { get; set; }
        public virtual DbSet<DATBAN> DATBANs { get; set; }
        public virtual DbSet<DATMON> DATMONs { get; set; }
        public virtual DbSet<DAUBEP> DAUBEPs { get; set; }
        public virtual DbSet<HOADON> HOADONs { get; set; }
        public virtual DbSet<KHACHHANG> KHACHHANGs { get; set; }
        public virtual DbSet<LOAIBAN> LOAIBANs { get; set; }
        public virtual DbSet<LOAIMONAN> LOAIMONANs { get; set; }
        public virtual DbSet<MONAN> MONANs { get; set; }
        public virtual DbSet<NGUOIDUNG> NGUOIDUNGs { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Entity<BLOG>()
                .Property(e => e.noidung)
                .IsUnicode(false);

            modelBuilder.Entity<BLOG>()
                .Property(e => e.anhminhhoa)
                .IsFixedLength();

            modelBuilder.Entity<DATBAN>()
                .Property(e => e.giodat)
                .IsFixedLength()
                .IsUnicode(false);

            modelBuilder.Entity<DATMON>()
                .Property(e => e.nguoidungID)
                .IsFixedLength();

            modelBuilder.Entity<DATMON>()
                .HasMany(e => e.CTDATMONs)
                .WithRequired(e => e.DATMON)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<DAUBEP>()
                .Property(e => e.sdt)
                .IsFixedLength();

            modelBuilder.Entity<DAUBEP>()
                .Property(e => e.mota)
                .IsUnicode(false);

            modelBuilder.Entity<DAUBEP>()
                .Property(e => e.anhminhhoa)
                .IsFixedLength();

            modelBuilder.Entity<HOADON>()
                .Property(e => e.nguoidungID)
                .IsFixedLength();

            modelBuilder.Entity<HOADON>()
                .HasMany(e => e.CTHOADONs)
                .WithRequired(e => e.HOADON)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<KHACHHANG>()
                .Property(e => e.sdt)
                .IsFixedLength();

            modelBuilder.Entity<KHACHHANG>()
                .Property(e => e.email)
                .IsFixedLength();

            modelBuilder.Entity<LOAIMONAN>()
                .HasMany(e => e.MONANs)
                .WithRequired(e => e.LOAIMONAN)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<MONAN>()
                .Property(e => e.anhminhhoa)
                .IsFixedLength();

            modelBuilder.Entity<MONAN>()
                .HasMany(e => e.CTDATMONs)
                .WithRequired(e => e.MONAN)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<MONAN>()
                .HasMany(e => e.CTHOADONs)
                .WithRequired(e => e.MONAN)
                .WillCascadeOnDelete(false);

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
