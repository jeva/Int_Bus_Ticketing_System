using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Bus_Website
{
    public class Trip
    {
        public string Trip_id { get; set; }
        public string Bus_companyID { get; set; }
        public string Company_name { get; set; }
        public string Bus_id { get; set; }
        public string Boarding_point { get; set; }
        public string Arrival_point { get; set; }
        public string Depart_date { get; set; }
        public string Return_date { get; set; }
        public string Depart_time { get; set; }
        public string Arrival_time { get; set; }
        public string Adult_fare { get; set; }
        public string Child_fare { get; set; }
        public string Total_time { get; set; }
        public string Reg_num { get; set; }
      
        public string Bus_Id { get; set; }

    }
}