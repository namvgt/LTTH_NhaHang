namespace LTTH_NhaHang.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("DATMON")]
    public partial class DATMON
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public DATMON()
        {
            CTDATMONs = new HashSet<CTDATMON>();
        }

        public int datmonID { get; set; }

        public int? khachhangID { get; set; }

        [StringLength(10)]
        public string nguoidungID { get; set; }

        [Column(TypeName = "date")]
        public DateTime? ngaydat { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<CTDATMON> CTDATMONs { get; set; }

        public virtual KHACHHANG KHACHHANG { get; set; }
    }
}
