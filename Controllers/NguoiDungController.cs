using LTTH_NhaHang.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace LTTH_NhaHang.Controllers
{
    [RoutePrefix("api/nguoidung")]
    public class NguoiDungController : ApiController
    {
        Model1 db = new Model1();
        // GET api/<controller>
        [Route]
        [HttpGet]
        public IEnumerable<NGUOIDUNG> Get()
        {
            return db.NGUOIDUNGs.ToList();
        }

        // GET api/<controller>/5
        [Route("{id:int}")]
        [HttpGet]
        public NGUOIDUNG Get(int id)
        {
            return db.NGUOIDUNGs.Find(id);
        }

        // POST api/<controller>
        [Route]
        [HttpPost]
        public void Post([FromBody]NGUOIDUNG value)
        {
            value.anhminhhoa = "/Content/img/" + value.anhminhhoa;
            db.NGUOIDUNGs.Add(value);
            db.SaveChanges();
        }

        // PUT api/<controller>/5
        [Route("{id:int}")]
        [HttpPut]
        public void Put(int id, [FromBody]NGUOIDUNG value)
        {
            var user = db.NGUOIDUNGs.Find(id);
            user.hoten = value.hoten;
            user.ngaysinh = value.ngaysinh;
            user.email = value.email;
            user.diachi = value.diachi;
            user.sdt = value.sdt;
            if (value.anhminhhoa != "")
                user.anhminhhoa = "/Content/img/" + value.anhminhhoa;
            db.SaveChanges();
        }

        // DELETE api/<controller>/5
        [Route("{id:int}")]
        [HttpDelete]
        public void Delete(int id)
        {
            db.NGUOIDUNGs.Remove(db.NGUOIDUNGs.Find(id));
            db.SaveChanges();
        }
    }
}