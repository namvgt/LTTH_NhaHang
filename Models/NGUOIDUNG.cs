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
        [StringLength(10)]
        public string nguoidungID { get; set; }

        [StringLength(50)]
        public string hoten { get; set; }

        [StringLength(10)]
        public string sdt { get; set; }

        [StringLength(50)]
        public string diachi { get; set; }

        [StringLength(25)]
        public string email { get; set; }

        [StringLength(15)]
        public string username { get; set; }

        [StringLength(15)]
        public string password { get; set; }

        [StringLength(10)]
        public string quyen { get; set; }

        [StringLength(25)]
        public string anhminhhoa { get; set; }
    }
}
