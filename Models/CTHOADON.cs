namespace LTTH_NhaHang.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("CTHOADON")]
    public partial class CTHOADON
    {
        [Key]
        [Column(Order = 0)]
        [StringLength(10)]
        public string hoadonID { get; set; }

        [Key]
        [Column(Order = 1)]
        [StringLength(10)]
        public string monanID { get; set; }

        public int? soluong { get; set; }

        public virtual HOADON HOADON { get; set; }

        public virtual MONAN MONAN { get; set; }
    }
}
