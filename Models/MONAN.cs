namespace LTTH_NhaHang.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("MONAN")]
    public partial class MONAN
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public MONAN()
        {
            CTDATMONs = new HashSet<CTDATMON>();
            CTHOADONs = new HashSet<CTHOADON>();
        }

        public int monanID { get; set; }

        public int loaimonanID { get; set; }

        [StringLength(50)]
        public string tenmonan { get; set; }

        public double? dongia { get; set; }

        [StringLength(50)]
        public string mota { get; set; }

        [StringLength(50)]
        public string anhminhhoa { get; set; }

        public bool? trangthai { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<CTDATMON> CTDATMONs { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<CTHOADON> CTHOADONs { get; set; }

        public virtual LOAIMONAN LOAIMONAN { get; set; }
    }
}
