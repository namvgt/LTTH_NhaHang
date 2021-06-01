using LTTH_NhaHang.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;


namespace LTTH_NhaHang.Controllers
{
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
        public string Get(int id)
        {
            return "value";
        }

        // POST api/<controller>
        [HttpPost]
        public void Post([FromBody]DATBAN value)
        {
            KHACHHANG kh = new KHACHHANG();
            kh.khachhangID = "KH" + DateTime.Now.Day.ToString() + DateTime.Now.Month.ToString() + DateTime.Now.Year.ToString() +  value.sdt;
            kh.sdt = value.sdt;
            kh.hoten = value.hoten;
            db.KHACHHANGs.Add(kh);
            db.SaveChanges();
            
            DATBAN datban = new DATBAN();
            datban.khachhangID = "KH" + DateTime.Now.Day.ToString() + DateTime.Now.Month.ToString() + DateTime.Now.Year.ToString() + value.sdt; ;
            datban.datbanID = "DB" + DateTime.Now.Day.ToString() + DateTime.Now.Month.ToString() + DateTime.Now.Year.ToString() + value.sdt; ;
            datban.songuoi = Convert.ToInt32(value.songuoi);
            datban.ngaydat = value.ngaydat;
            datban.giodat = value.giodat;
            datban.hoten = value.hoten;
            datban.sdt = value.sdt;
            db.DATBANs.Add(datban);
            db.SaveChanges();


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