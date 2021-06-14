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
        public int monanID { get; set; }

        public int loaimonanID { get; set; }

        [StringLength(50)]
        public string tenmonan { get; set; }

        public double? dongia { get; set; }

        [StringLength(500)]
        public string mota { get; set; }

        [StringLength(50)]
        public string anhminhhoa { get; set; }

        public bool? trangthai { get; set; }

        public virtual LOAIMONAN LOAIMONAN { get; set; }
    }
}
