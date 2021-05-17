namespace LTTH_NhaHang.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("DAUBEP")]
    public partial class DAUBEP
    {
        public int daubepID { get; set; }

        [StringLength(50)]
        public string hoten { get; set; }

        [StringLength(10)]
        public string sdt { get; set; }

        [StringLength(50)]
        public string diachi { get; set; }

        [Column(TypeName = "text")]
        public string mota { get; set; }

        [StringLength(50)]
        public string anhminhhoa { get; set; }
    }
}
