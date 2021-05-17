namespace LTTH_NhaHang.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("CTDATMON")]
    public partial class CTDATMON
    {
        [Key]
        [Column(Order = 0)]
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int datmonID { get; set; }

        [Key]
        [Column(Order = 1)]
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int monanID { get; set; }

        public int? soluong { get; set; }

        public virtual DATMON DATMON { get; set; }

        public virtual MONAN MONAN { get; set; }
    }
}
