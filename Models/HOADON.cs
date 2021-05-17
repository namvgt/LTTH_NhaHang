namespace LTTH_NhaHang.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("HOADON")]
    public partial class HOADON
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public HOADON()
        {
            CTHOADONs = new HashSet<CTHOADON>();
        }

        public int hoadonID { get; set; }

        public int? khachhangID { get; set; }

        [StringLength(10)]
        public string nguoidungID { get; set; }

        [Column(TypeName = "date")]
        public DateTime? ngayhoadon { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<CTHOADON> CTHOADONs { get; set; }

        public virtual KHACHHANG KHACHHANG { get; set; }
    }
}
