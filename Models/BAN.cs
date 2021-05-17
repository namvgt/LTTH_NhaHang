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
        public int banID { get; set; }

        public int? loaibanID { get; set; }

        public int? datbanID { get; set; }

        public bool? trangthai { get; set; }

        public virtual DATBAN DATBAN { get; set; }

        public virtual LOAIBAN LOAIBAN { get; set; }
    }
}
