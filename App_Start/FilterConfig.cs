﻿using System.Web;
using System.Web.Mvc;

namespace LTTH_NhaHang
{
    public class FilterConfig
    {
        public static void RegisterGlobalFilters(GlobalFilterCollection filters)
        {
            filters.Add(new HandleErrorAttribute());
        }
    }
}
