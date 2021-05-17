namespace LTTH_NhaHang.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("BLOG")]
    public partial class BLOG
    {
        public int blogID { get; set; }

        public int? nguoidungID { get; set; }

        [StringLength(50)]
        public string tenblog { get; set; }

        [Column(TypeName = "date")]
        public DateTime? ngayblog { get; set; }

        [Column(TypeName = "text")]
        public string noidung { get; set; }

        [StringLength(50)]
        public string anhminhhoa { get; set; }

        public virtual NGUOIDUNG NGUOIDUNG { get; set; }
    }
}
