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
        [StringLength(10)]
        public string banID { get; set; }

        [StringLength(10)]
        public string loaibanID { get; set; }

        [StringLength(10)]
        public string datbanID { get; set; }

        public bool? trangthai { get; set; }

        public virtual DATBAN DATBAN { get; set; }

        public virtual LOAIBAN LOAIBAN { get; set; }
    }
}
