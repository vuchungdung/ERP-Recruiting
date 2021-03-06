﻿using Core.CommonModel;
using Core.CommonModel.Enum;
using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Database.Sql.ERP.Entities.Recruitment
{
    [Table("JobDescriptions")]
    public class JobDescription : BaseEntity
    {
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int JobId { get; set; }

        [Required]
        [Column(TypeName = "nvarchar(100)")]
        public string Title { get; set; }

        [Required]
        public string Description { get; set; }

        [Required]
        public string RequestJob { get; set; }

        [Required]
        public string Benefit { get; set; }

        [Required]
        public string Endow { get; set; }

        [Required]
        public string SkillId { get; set; }

        [Required]
        public int CategoryId { get; set; }

        [Required]
        public int OfferFrom { get; set; }

        [Required]
        public int OfferTo { get; set; }

        public JobStatus Status { get; set; }

        [Required]
        public DateTime TimeStart { get; set; }

        [Required]
        public DateTime TimeEnd { get; set; }

        [Required]
        public int Quatity { get; set; }

        public string Image { get; set; }

        public Core.CommonModel.Enum.Type Type { get; set; }
    }
}