using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebAppToDoList.Models
{
    public class GetUserViewModel
    {
        public string cd_user { get; set; }
        public string id_user { get; set; }
        public string nm_user { get; set; }


        public DateTime createdOnDate { get; set; }
        public DateTime lasModifiedOnDate { get; set; }

        public int pageIndex { get; set; }
        public int pageTotal { get; set; }
    }
}