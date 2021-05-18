namespace LTTH_NhaHang.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("NGUOIDUNG")]
    public partial class NGUOIDUNG
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public NGUOIDUNG()
        {
            BLOGs = new HashSet<BLOG>();
        }

        public int nguoidungID { get; set; }

        [StringLength(50)]
        public string hoten { get; set; }

        [StringLength(10)]
        public string sdt { get; set; }

        [Column(TypeName = "date")]
        public DateTime? ngaysinh { get; set; }

        [StringLength(50)]
        public string diachi { get; set; }

        [StringLength(25)]
        public string email { get; set; }

        [StringLength(15)]
        public string username { get; set; }

        [StringLength(15)]
        public string password { get; set; }

        [StringLength(15)]
        public string quyen { get; set; }

        [StringLength(50)]
        public string anhminhhoa { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<BLOG> BLOGs { get; set; }
    }
}
