using LTTH_NhaHang.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;


namespace LTTH_NhaHang.Controllers
{
    public class ObjDatban
    {
        public string hoten;
        public string sdt;
        public int songuoi;
        public DateTime ngaydat;
        public string giodat;
    }
    [RoutePrefix("api/datban")]
    public class DatbanController : ApiController
    {
        Model1 db = new Model1();
        // GET api/<controller>
        public IEnumerable<DATBAN> Get()
        {
            return db.DATBANs.ToList();
        }

        // GET api/<controller>/5
        public DATBAN Get(int id)
        {
            return db.DATBANs.Find(id);
        }

        // POST api/<controller>
        [HttpPost]
        public void Post([FromBody]ObjDatban value)
        {
            var kh = new KHACHHANG();
            kh.hoten = value.hoten;
            kh.sdt = value.sdt;
            db.KHACHHANGs.Add(kh);
            db.SaveChanges();
            var datban = new DATBAN();
            datban.ngaydat = value.ngaydat;
            datban.giodat = value.giodat;
            datban.songuoi = value.songuoi;
            datban.khachhangID = db.KHACHHANGs.ToList().LastOrDefault().khachhangID;
            db.DATBANs.Add(datban);
            db.SaveChanges();
        }

        // PUT api/<controller>/51
        public void Put(int id, [FromBody]ObjDatban value)
        {
            var datban = db.DATBANs.Find(id);
            var kh = db.KHACHHANGs.Find(datban.khachhangID);
            datban.songuoi = value.songuoi;
            if (value.ngaydat.Year != 1)
                datban.ngaydat = value.ngaydat;
            datban.giodat = value.giodat;
            kh.hoten = value.hoten;
            kh.sdt = value.sdt;
            db.SaveChanges();
        }

        // DELETE api/<controller>/5
        public void Delete(int id)
        {
            db.KHACHHANGs.Remove(db.KHACHHANGs.Find(db.DATBANs.Find(id).khachhangID));
            db.DATBANs.Remove(db.DATBANs.Find(id));
            db.SaveChanges();
        }
        [HttpPut]
        [Route("PutConfirm/{id:int}")]
        public void PutConfirm(int id)
        {
            var datban = db.DATBANs.Find(id);
            var list = db.DDATBANs.Where(x => x.DATBAN.ngaydat != datban.ngaydat).ToList();
            var list1 = db.BANs.Where(x => x.DDATBANs.Count() == 0).ToList();
            var listBan = new List<BAN>();
            foreach (var item in list)
            {
                listBan.Add(item.BAN);
            }
            listBan.Union(list1);
            int total = 0;
            foreach(var ban in listBan)
            {
                if (total < datban.songuoi)
                {
                    total += (int)ban.LOAIBAN.succhua;
                    var ddatban = new DDATBAN();
                    ddatban.datbanID = datban.datbanID;
                    ddatban.banID = ban.banID;
                    db.DDATBANs.Add(ddatban);
                    db.SaveChanges();
                }
                else
                {
                    break;
                }
            }
            datban.trangthai = true;
            db.SaveChanges();
        }
    }
}