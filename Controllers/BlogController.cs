using LTTH_NhaHang.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace LTTH_NhaHang.Controllers
{
    [RoutePrefix("api/Blog")]
    public class BlogController : ApiController
    {
        public Model1 db = new Model1();
        // GET: api/Blog
        [Route("")]
        [HttpGet]
        public IEnumerable<BLOG> Get()
        {
            return db.BLOGs.ToList();
        }

        // GET: api/Blog/5
        [Route("{id:int}")]
        [HttpGet]
        public BLOG Get(int id)
        {
            return db.BLOGs.Where(x => x.blogID == id).FirstOrDefault();
        }

        // POST: api/Blog
        [Route("")]
        [HttpPost]
        public void Post([FromBody]BLOG obj)
        {
            obj.anhminhhoa = "/Content/img/" + obj.anhminhhoa;
            db.BLOGs.Add(obj);
            db.SaveChanges();
        }

        // PUT: api/Blog/5
        [Route("{id:int}")]
        [HttpPut]
        public void Put(int id, [FromBody]BLOG blog)
        {
            var bg = db.BLOGs.Find(id);
            bg.noidung = blog.noidung;
            bg.tenblog = blog.tenblog;
            bg.anhminhhoa = "/Content/img/" + blog.anhminhhoa;
            db.SaveChanges();
        }

        // DELETE: api/Blog/5
        [Route("{id:int}")]
        [HttpDelete]
        public void Delete(int id)
        {
            db.BLOGs.Remove(db.BLOGs.Find(id));
            db.SaveChanges();
        }
    }
}
