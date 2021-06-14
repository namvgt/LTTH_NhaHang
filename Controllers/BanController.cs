using LTTH_NhaHang.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace LTTH_NhaHang.Controllers
{
    [RoutePrefix("api/ban")]
    public class BanController : ApiController
    {
        Model1 db = new Model1();
        // GET api/<controller>
        [HttpGet]
        [Route("GetDadat")]
        public IEnumerable<DDATBAN> GetDadat(string ngaydat)
        {
            return db.DDATBANs.Where(x => x.DATBAN.ngaydat.ToString().Trim() == ngaydat).ToList();
        }
        [HttpGet]
        [Route("GetTrong")]
        public IEnumerable<BAN> GetTrong(string ngaydat)
        {
            var list = db.DDATBANs.Where(x => x.DATBAN.ngaydat.ToString().Trim() != ngaydat).ToList();
            var list1 = db.BANs.Where(x => x.DDATBANs.Count() == 0).ToList();
            var listBan = new List<BAN>();
            foreach (var item in list)
            {
                listBan.Add(item.BAN);
            }
            listBan.Union(list1);
            return listBan;
        }
        // GET api/<controller>/5
        public string Get(int id)
        {
            return "value";
        }

        // POST api/<controller>
        public void Post([FromBody]string value)
        {
        }

        // PUT api/<controller>/5
        public void Put(int id, [FromBody]string value)
        {
        }

        // DELETE api/<controller>/5
        public void Delete(int id)
        {
        }
    }
}