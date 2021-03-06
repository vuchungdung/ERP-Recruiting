﻿using Core.CommonModel;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Text;

namespace Database.Sql.ERP.Entities.Common
{
    [Table("JobCategories")]
    public class JobCategory : BaseEntity
    {
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int CategoryId { get; set; }

        [Required]
        [Column(TypeName ="nvarchar(100)")]
        public string Name { get; set; }

        [Required]
        public string Description { get; set; }
    }
}
