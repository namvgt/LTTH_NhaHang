namespace LTTH_NhaHang.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("DATBAN")]
    public partial class DATBAN
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public DATBAN()
        {
            DDATBANs = new HashSet<DDATBAN>();
        }

        public int datbanID { get; set; }

        public int? khachhangID { get; set; }

        [Column(TypeName = "date")]
        public DateTime ngaydat { get; set; }

        [StringLength(10)]
        public string giodat { get; set; }

        public int? songuoi { get; set; }

        public bool? trangthai { get; set; }

        public virtual KHACHHANG KHACHHANG { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<DDATBAN> DDATBANs { get; set; }
    }
}
