using LTTH_NhaHang.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace LTTH_NhaHang.Controllers
{
    [RoutePrefix("api/loaimonan")]
    public class LoaiMonAnController : ApiController
    {
        Model1 db = new Model1();
        // GET api/<controller>
        [Route]
        [HttpGet]
        public IEnumerable<LOAIMONAN> Get()
        {
            return db.LOAIMONANs.ToList();
        }

        // GET api/<controller>/5
        [Route("{id:int}")]
        [HttpGet]
        public LOAIMONAN Get(int id)
        {
            return db.LOAIMONANs.Find(id);
        }

        // POST api/<controller>
        [Route]
        [HttpPost]
        public void Post([FromBody]LOAIMONAN value)
        {
            db.LOAIMONANs.Add(value);
            value.anhminhhoa = "/Content/img/" + value.anhminhhoa;
            db.SaveChanges();
        }

        // PUT api/<controller>/5
        [Route("{id:int}")]
        [HttpPut]
        public void Put(int id, [FromBody]LOAIMONAN value)
        {
            var loaima = db.LOAIMONANs.Find(id);
            loaima.tenloaimon = value.tenloaimon;
            loaima.anhminhhoa = "/Content/img/" + value.anhminhhoa;
            db.SaveChanges();
        }
        [Route("{id:int}")]
        [HttpDelete]
        // DELETE api/<controller>/5
        public void Delete(int id)
        {
            db.LOAIMONANs.Remove(db.LOAIMONANs.Find(id));
        }
    }
}