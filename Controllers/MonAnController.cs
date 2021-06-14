using LTTH_NhaHang.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace LTTH_NhaHang.Controllers
{
    [RoutePrefix("api/Monan")]
    public class MonAnController : ApiController
    {
        Model1 db = new Model1();
        [Route]
        [HttpGet]
        // GET: api/MonAn
        public IEnumerable<MONAN> Get()
        {
            return db.MONANs.ToList();
        }

        // GET: api/MonAn/5
        [Route("{id:int}")]
        [HttpGet]
        public MONAN Get(int id)
        {
            return db.MONANs.Find(id);
        }

        [HttpGet]
        [Route("NoiBat")]
        public IEnumerable<MONAN> NoiBat()
        {
            var list = db.MONANs.Where(x => x.trangthai == true).ToList();
            return list;
        }
        // POST: api/MonAn
        [Route]
        [HttpPost]
        public void Post([FromBody]MONAN monan)
        {
            monan.anhminhhoa = "/Content/img/" + monan.anhminhhoa;
            db.MONANs.Add(monan);
            db.SaveChanges();
        }

        // PUT: api/MonAn/5
        [Route("{id:int}")]
        [HttpPut]
        public void Put(int id, [FromBody]MONAN monan)
        {
            var dish = db.MONANs.Find(id);
            dish.anhminhhoa = "/Content/img/" + monan.anhminhhoa;
            dish.tenmonan = monan.tenmonan;
            dish.dongia = monan.dongia;
            dish.mota = monan.mota;
            dish.trangthai = monan.trangthai;
            dish.loaimonanID = monan.loaimonanID;
            db.SaveChanges();
        }

        // DELETE: api/MonAn/5
        [Route("{id:int}")]
        [HttpDelete]
        public void Delete(int id)
        {
            db.MONANs.Remove(db.MONANs.Find(id));
            db.SaveChanges();
        }
    }
}
