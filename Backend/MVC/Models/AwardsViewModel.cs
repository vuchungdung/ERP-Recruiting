﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace MVC.Models
{
    public class AwardsViewModel
    {
        public int Id { get; set; }
        public int CandidateId { get; set; }
        public string Title { get; set; }
        public string Institute { get; set; }
        public string Description { get; set; }
        public DateTime _From { get; set; }
        public DateTime _To { get; set; }
        public int? CreateBy { get; set; }
        public DateTime CreateDate { get; set; }
        public DateTime? UpdateDate { get; set; }
        public int? UpdateBy { get; set; }
        public bool Deleted { get; set; }
    }
}
