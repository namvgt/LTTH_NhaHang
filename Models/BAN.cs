namespace LTTH_NhaHang.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("BAN")]
    public partial class BAN
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public BAN()
        {
            DDATBANs = new HashSet<DDATBAN>();
        }

        public int banID { get; set; }

        public int? loaibanID { get; set; }

        [StringLength(50)]
        public string tenban { get; set; }

        public bool? trangthai { get; set; }

        public virtual LOAIBAN LOAIBAN { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<DDATBAN> DDATBANs { get; set; }
    }
}
