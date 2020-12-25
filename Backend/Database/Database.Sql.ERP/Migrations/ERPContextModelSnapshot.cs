﻿// <auto-generated />
using System;
using Database.Sql.ERP;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Infrastructure;
using Microsoft.EntityFrameworkCore.Metadata;
using Microsoft.EntityFrameworkCore.Storage.ValueConversion;

namespace Database.Sql.ERP.Migrations
{
    [DbContext(typeof(ERPContext))]
    partial class ERPContextModelSnapshot : ModelSnapshot
    {
        protected override void BuildModel(ModelBuilder modelBuilder)
        {
#pragma warning disable 612, 618
            modelBuilder
                .HasAnnotation("ProductVersion", "3.1.7")
                .HasAnnotation("Relational:MaxIdentifierLength", 128)
                .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

            modelBuilder.Entity("Database.Sql.ERP.Entities.Candidate.Award", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int")
                        .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                    b.Property<int>("CandidateId")
                        .HasColumnType("int");

                    b.Property<int?>("CreateBy")
                        .HasColumnType("int");

                    b.Property<DateTime>("CreateDate")
                        .HasColumnType("datetime");

                    b.Property<bool>("Deleted")
                        .HasColumnType("bit");

                    b.Property<string>("Description")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("Institute")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("Title")
                        .HasColumnType("nvarchar(max)");

                    b.Property<int?>("UpdateBy")
                        .HasColumnType("int");

                    b.Property<DateTime?>("UpdateDate")
                        .HasColumnType("datetime");

                    b.Property<DateTime>("_From")
                        .HasColumnType("datetime");

                    b.Property<DateTime>("_To")
                        .HasColumnType("datetime");

                    b.HasKey("Id");

                    b.ToTable("Awards");
                });

            modelBuilder.Entity("Database.Sql.ERP.Entities.Candidate.Candidate", b =>
                {
                    b.Property<int>("CandidateId")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int")
                        .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                    b.Property<string>("Address")
                        .HasColumnType("nvarchar(250)");

                    b.Property<int?>("CreateBy")
                        .HasColumnType("int");

                    b.Property<DateTime>("CreateDate")
                        .HasColumnType("datetime");

                    b.Property<bool>("Deleted")
                        .HasColumnType("bit");

                    b.Property<DateTime?>("Dob")
                        .HasColumnType("datetime2");

                    b.Property<string>("Email")
                        .HasColumnType("varchar(200)");

                    b.Property<string>("Facebook")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("FileName")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("FilePath")
                        .HasColumnType("nvarchar(max)");

                    b.Property<int?>("Gender")
                        .HasColumnType("int");

                    b.Property<string>("LinkedIn")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("Name")
                        .HasColumnType("nvarchar(100)");

                    b.Property<string>("Password")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("Phone")
                        .HasColumnType("varchar(20)");

                    b.Property<int?>("ProviderId")
                        .HasColumnType("int");

                    b.Property<string>("Skype")
                        .HasColumnType("nvarchar(max)");

                    b.Property<int?>("UpdateBy")
                        .HasColumnType("int");

                    b.Property<DateTime?>("UpdateDate")
                        .HasColumnType("datetime");

                    b.Property<string>("Username")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("Zalo")
                        .HasColumnType("nvarchar(max)");

                    b.HasKey("CandidateId");

                    b.ToTable("Candidates");
                });

            modelBuilder.Entity("Database.Sql.ERP.Entities.Candidate.Education", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int")
                        .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                    b.Property<int>("CandidateId")
                        .HasColumnType("int");

                    b.Property<int?>("CreateBy")
                        .HasColumnType("int");

                    b.Property<DateTime>("CreateDate")
                        .HasColumnType("datetime");

                    b.Property<bool>("Deleted")
                        .HasColumnType("bit");

                    b.Property<string>("Description")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("Institute")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("Title")
                        .HasColumnType("nvarchar(max)");

                    b.Property<int?>("UpdateBy")
                        .HasColumnType("int");

                    b.Property<DateTime?>("UpdateDate")
                        .HasColumnType("datetime");

                    b.Property<int>("_From")
                        .HasColumnType("int");

                    b.Property<int>("_To")
                        .HasColumnType("int");

                    b.HasKey("Id");

                    b.ToTable("Educations");
                });

            modelBuilder.Entity("Database.Sql.ERP.Entities.Candidate.WorkHistory", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int")
                        .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                    b.Property<int>("CandidateId")
                        .HasColumnType("int");

                    b.Property<string>("Company")
                        .IsRequired()
                        .HasColumnType("nvarchar(200)");

                    b.Property<int?>("CreateBy")
                        .HasColumnType("int");

                    b.Property<DateTime>("CreateDate")
                        .HasColumnType("datetime");

                    b.Property<bool>("Deleted")
                        .HasColumnType("bit");

                    b.Property<string>("Description")
                        .IsRequired()
                        .HasColumnType("nvarchar(200)");

                    b.Property<string>("Position")
                        .HasColumnType("nvarchar(max)");

                    b.Property<DateTime>("TimeEnd")
                        .HasColumnType("datetime");

                    b.Property<DateTime>("TimeStart")
                        .HasColumnType("datetime");

                    b.Property<int?>("UpdateBy")
                        .HasColumnType("int");

                    b.Property<DateTime?>("UpdateDate")
                        .HasColumnType("datetime");

                    b.HasKey("Id");

                    b.ToTable("WorkHistories");
                });

            modelBuilder.Entity("Database.Sql.ERP.Entities.Common.File", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int")
                        .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                    b.Property<int>("CandidateId")
                        .HasColumnType("int");

                    b.Property<int?>("CreateBy")
                        .HasColumnType("int");

                    b.Property<DateTime>("CreateDate")
                        .HasColumnType("datetime");

                    b.Property<bool>("Deleted")
                        .HasColumnType("bit");

                    b.Property<string>("FileName")
                        .IsRequired()
                        .HasColumnType("nvarchar(200)")
                        .HasMaxLength(200);

                    b.Property<string>("FilePath")
                        .IsRequired()
                        .HasColumnType("nvarchar(200)")
                        .HasMaxLength(200);

                    b.Property<int>("FileSize")
                        .HasColumnType("int");

                    b.Property<string>("FileType")
                        .IsRequired()
                        .HasColumnType("nvarchar(100)")
                        .HasMaxLength(100);

                    b.Property<int?>("UpdateBy")
                        .HasColumnType("int");

                    b.Property<DateTime?>("UpdateDate")
                        .HasColumnType("datetime");

                    b.HasKey("Id");

                    b.ToTable("Files");
                });

            modelBuilder.Entity("Database.Sql.ERP.Entities.Common.JobCategory", b =>
                {
                    b.Property<int>("CategoryId")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int")
                        .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                    b.Property<int?>("CreateBy")
                        .HasColumnType("int");

                    b.Property<DateTime>("CreateDate")
                        .HasColumnType("datetime");

                    b.Property<bool>("Deleted")
                        .HasColumnType("bit");

                    b.Property<string>("Description")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("Name")
                        .IsRequired()
                        .HasColumnType("nvarchar(100)");

                    b.Property<int?>("UpdateBy")
                        .HasColumnType("int");

                    b.Property<DateTime?>("UpdateDate")
                        .HasColumnType("datetime");

                    b.HasKey("CategoryId");

                    b.ToTable("JobCategories");
                });

            modelBuilder.Entity("Database.Sql.ERP.Entities.Common.Process", b =>
                {
                    b.Property<int>("ProcessId")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int")
                        .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                    b.Property<int?>("CreateBy")
                        .HasColumnType("int");

                    b.Property<DateTime>("CreateDate")
                        .HasColumnType("datetime");

                    b.Property<bool>("Deleted")
                        .HasColumnType("bit");

                    b.Property<string>("Name")
                        .IsRequired()
                        .HasColumnType("nvarchar(100)");

                    b.Property<string>("Note")
                        .HasColumnType("nvarchar(max)");

                    b.Property<int?>("UpdateBy")
                        .HasColumnType("int");

                    b.Property<DateTime?>("UpdateDate")
                        .HasColumnType("datetime");

                    b.HasKey("ProcessId");

                    b.ToTable("Process");
                });

            modelBuilder.Entity("Database.Sql.ERP.Entities.Common.Provider", b =>
                {
                    b.Property<int>("ProviderId")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int")
                        .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                    b.Property<int?>("CreateBy")
                        .HasColumnType("int");

                    b.Property<DateTime>("CreateDate")
                        .HasColumnType("datetime");

                    b.Property<bool>("Deleted")
                        .HasColumnType("bit");

                    b.Property<string>("Link")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("Name")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<int?>("UpdateBy")
                        .HasColumnType("int");

                    b.Property<DateTime?>("UpdateDate")
                        .HasColumnType("datetime");

                    b.HasKey("ProviderId");

                    b.ToTable("Providers");
                });

            modelBuilder.Entity("Database.Sql.ERP.Entities.Common.Skill", b =>
                {
                    b.Property<string>("SkillId")
                        .HasColumnType("nvarchar(50)");

                    b.Property<int?>("CreateBy")
                        .HasColumnType("int");

                    b.Property<DateTime>("CreateDate")
                        .HasColumnType("datetime");

                    b.Property<bool>("Deleted")
                        .HasColumnType("bit");

                    b.Property<string>("Name")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<int?>("UpdateBy")
                        .HasColumnType("int");

                    b.Property<DateTime?>("UpdateDate")
                        .HasColumnType("datetime");

                    b.HasKey("SkillId");

                    b.ToTable("Skills");
                });

            modelBuilder.Entity("Database.Sql.ERP.Entities.Common.Tag", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int")
                        .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                    b.Property<string>("Color")
                        .IsRequired()
                        .HasColumnType("nvarchar(20)");

                    b.Property<string>("Content")
                        .IsRequired()
                        .HasColumnType("nvarchar(200)");

                    b.Property<int?>("CreateBy")
                        .HasColumnType("int");

                    b.Property<DateTime>("CreateDate")
                        .HasColumnType("datetime");

                    b.Property<bool>("Deleted")
                        .HasColumnType("bit");

                    b.Property<string>("Name")
                        .IsRequired()
                        .HasColumnType("nvarchar(200)");

                    b.Property<int?>("UpdateBy")
                        .HasColumnType("int");

                    b.Property<DateTime?>("UpdateDate")
                        .HasColumnType("datetime");

                    b.HasKey("Id");

                    b.ToTable("Tags");
                });

            modelBuilder.Entity("Database.Sql.ERP.Entities.Interview.InterviewDate", b =>
                {
                    b.Property<int>("DateId")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int")
                        .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                    b.Property<string>("Address")
                        .IsRequired()
                        .HasColumnType("nvarchar(100)");

                    b.Property<int>("CandidateId")
                        .HasColumnType("int");

                    b.Property<int?>("CreateBy")
                        .HasColumnType("int");

                    b.Property<DateTime>("CreateDate")
                        .HasColumnType("datetime");

                    b.Property<bool>("Deleted")
                        .HasColumnType("bit");

                    b.Property<int>("EmployeeId")
                        .HasColumnType("int");

                    b.Property<int>("JobId")
                        .HasColumnType("int");

                    b.Property<string>("Note")
                        .HasColumnType("nvarchar(max)");

                    b.Property<int>("RecruitType")
                        .HasColumnType("int");

                    b.Property<int>("Time")
                        .HasColumnType("int");

                    b.Property<DateTime>("TimeDate")
                        .HasColumnType("datetime");

                    b.Property<int?>("UpdateBy")
                        .HasColumnType("int");

                    b.Property<DateTime?>("UpdateDate")
                        .HasColumnType("datetime");

                    b.HasKey("DateId");

                    b.ToTable("InterviewDates");
                });

            modelBuilder.Entity("Database.Sql.ERP.Entities.Interview.InterviewProcess", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int")
                        .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                    b.Property<int>("CandidateId")
                        .HasColumnType("int");

                    b.Property<int?>("CreateBy")
                        .HasColumnType("int");

                    b.Property<DateTime>("CreateDate")
                        .HasColumnType("datetime");

                    b.Property<bool>("Deleted")
                        .HasColumnType("bit");

                    b.Property<int>("ProcessId")
                        .HasColumnType("int");

                    b.Property<int>("Result")
                        .HasColumnType("int");

                    b.Property<DateTime>("ResultDate")
                        .HasColumnType("datetime");

                    b.Property<int?>("UpdateBy")
                        .HasColumnType("int");

                    b.Property<DateTime?>("UpdateDate")
                        .HasColumnType("datetime");

                    b.HasKey("Id");

                    b.ToTable("InterviewProcesses");
                });

            modelBuilder.Entity("Database.Sql.ERP.Entities.Interview.InterviewResult", b =>
                {
                    b.Property<int>("ResultId")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int")
                        .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                    b.Property<int?>("CreateBy")
                        .HasColumnType("int");

                    b.Property<DateTime>("CreateDate")
                        .HasColumnType("datetime");

                    b.Property<int>("DateId")
                        .HasColumnType("int");

                    b.Property<bool>("Deleted")
                        .HasColumnType("bit");

                    b.Property<string>("Note")
                        .HasColumnType("nvarchar(max)");

                    b.Property<int>("Result")
                        .HasColumnType("int");

                    b.Property<int?>("UpdateBy")
                        .HasColumnType("int");

                    b.Property<DateTime?>("UpdateDate")
                        .HasColumnType("datetime");

                    b.HasKey("ResultId");

                    b.ToTable("InterviewResults");
                });

            modelBuilder.Entity("Database.Sql.ERP.Entities.Recruitment.Apply", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int")
                        .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                    b.Property<DateTime>("ApplyDate")
                        .HasColumnType("datetime");

                    b.Property<int>("CandidateId")
                        .HasColumnType("int");

                    b.Property<int?>("CreateBy")
                        .HasColumnType("int");

                    b.Property<DateTime>("CreateDate")
                        .HasColumnType("datetime");

                    b.Property<bool>("Deleted")
                        .HasColumnType("bit");

                    b.Property<int>("JobId")
                        .HasColumnType("int");

                    b.Property<int?>("UpdateBy")
                        .HasColumnType("int");

                    b.Property<DateTime?>("UpdateDate")
                        .HasColumnType("datetime");

                    b.HasKey("Id");

                    b.ToTable("Applies");
                });

            modelBuilder.Entity("Database.Sql.ERP.Entities.Recruitment.Employee", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int")
                        .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                    b.Property<string>("Address")
                        .HasColumnType("nvarchar(250)");

                    b.Property<int?>("CreateBy")
                        .HasColumnType("int");

                    b.Property<DateTime>("CreateDate")
                        .HasColumnType("datetime");

                    b.Property<bool>("Deleted")
                        .HasColumnType("bit");

                    b.Property<DateTime?>("Dob")
                        .HasColumnType("datetime");

                    b.Property<string>("Email")
                        .HasColumnType("varchar(200)");

                    b.Property<int?>("Gender")
                        .HasColumnType("int");

                    b.Property<string>("Name")
                        .HasColumnType("nvarchar(100)");

                    b.Property<string>("Phone")
                        .HasColumnType("varchar(20)");

                    b.Property<string>("Position")
                        .HasColumnType("nvarchar(max)");

                    b.Property<int?>("UpdateBy")
                        .HasColumnType("int");

                    b.Property<DateTime?>("UpdateDate")
                        .HasColumnType("datetime");

                    b.HasKey("Id");

                    b.ToTable("Employees");
                });

            modelBuilder.Entity("Database.Sql.ERP.Entities.Recruitment.JobDescription", b =>
                {
                    b.Property<int>("JobId")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int")
                        .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                    b.Property<string>("Benefit")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<int>("CategoryId")
                        .HasColumnType("int");

                    b.Property<int?>("CreateBy")
                        .HasColumnType("int");

                    b.Property<DateTime>("CreateDate")
                        .HasColumnType("datetime");

                    b.Property<bool>("Deleted")
                        .HasColumnType("bit");

                    b.Property<string>("Description")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("Endow")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("Image")
                        .HasColumnType("nvarchar(max)");

                    b.Property<int>("OfferFrom")
                        .HasColumnType("int");

                    b.Property<int>("OfferTo")
                        .HasColumnType("int");

                    b.Property<int>("Quatity")
                        .HasColumnType("int");

                    b.Property<string>("RequestJob")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("SkillId")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<int>("Status")
                        .HasColumnType("int");

                    b.Property<DateTime>("TimeEnd")
                        .HasColumnType("datetime2");

                    b.Property<DateTime>("TimeStart")
                        .HasColumnType("datetime2");

                    b.Property<string>("Title")
                        .IsRequired()
                        .HasColumnType("nvarchar(100)");

                    b.Property<int>("Type")
                        .HasColumnType("int");

                    b.Property<int?>("UpdateBy")
                        .HasColumnType("int");

                    b.Property<DateTime?>("UpdateDate")
                        .HasColumnType("datetime");

                    b.HasKey("JobId");

                    b.ToTable("JobDescriptions");
                });

            modelBuilder.Entity("Database.Sql.ERP.Entities.System.Command", b =>
                {
                    b.Property<string>("CommandId")
                        .HasColumnType("varchar(50)")
                        .HasMaxLength(50);

                    b.Property<int?>("CreateBy")
                        .HasColumnType("int");

                    b.Property<DateTime>("CreateDate")
                        .HasColumnType("datetime");

                    b.Property<bool>("Deleted")
                        .HasColumnType("bit");

                    b.Property<string>("Name")
                        .IsRequired()
                        .HasColumnType("nvarchar(50)")
                        .HasMaxLength(50);

                    b.Property<int?>("UpdateBy")
                        .HasColumnType("int");

                    b.Property<DateTime?>("UpdateDate")
                        .HasColumnType("datetime");

                    b.HasKey("CommandId");

                    b.ToTable("Commands");
                });

            modelBuilder.Entity("Database.Sql.ERP.Entities.System.CommandInFunction", b =>
                {
                    b.Property<string>("CommandId")
                        .HasColumnType("varchar(50)")
                        .HasMaxLength(50);

                    b.Property<string>("FunctionId")
                        .HasColumnType("varchar(50)")
                        .HasMaxLength(50);

                    b.Property<int?>("CreateBy")
                        .HasColumnType("int");

                    b.Property<DateTime>("CreateDate")
                        .HasColumnType("datetime");

                    b.Property<bool>("Deleted")
                        .HasColumnType("bit");

                    b.Property<int?>("UpdateBy")
                        .HasColumnType("int");

                    b.Property<DateTime?>("UpdateDate")
                        .HasColumnType("datetime");

                    b.HasKey("CommandId", "FunctionId");

                    b.ToTable("CommandInFunctions");
                });

            modelBuilder.Entity("Database.Sql.ERP.Entities.System.Function", b =>
                {
                    b.Property<string>("FunctionId")
                        .HasColumnType("varchar(50)")
                        .HasMaxLength(50);

                    b.Property<int?>("CreateBy")
                        .HasColumnType("int");

                    b.Property<DateTime>("CreateDate")
                        .HasColumnType("datetime");

                    b.Property<bool>("Deleted")
                        .HasColumnType("bit");

                    b.Property<string>("Icon")
                        .HasColumnType("varchar(50)")
                        .HasMaxLength(50);

                    b.Property<string>("Name")
                        .IsRequired()
                        .HasColumnType("nvarchar(200)")
                        .HasMaxLength(200);

                    b.Property<string>("ParentId")
                        .HasColumnType("varchar(50)")
                        .HasMaxLength(50);

                    b.Property<int>("SortOrder")
                        .HasColumnType("int");

                    b.Property<int?>("UpdateBy")
                        .HasColumnType("int");

                    b.Property<DateTime?>("UpdateDate")
                        .HasColumnType("datetime");

                    b.Property<string>("Url")
                        .IsRequired()
                        .HasColumnType("nvarchar(200)")
                        .HasMaxLength(200);

                    b.HasKey("FunctionId");

                    b.ToTable("Functions");
                });

            modelBuilder.Entity("Database.Sql.ERP.Entities.System.Permission", b =>
                {
                    b.Property<string>("RoleId")
                        .HasColumnType("varchar(50)")
                        .HasMaxLength(50);

                    b.Property<string>("FunctionId")
                        .HasColumnType("varchar(50)")
                        .HasMaxLength(50);

                    b.Property<string>("CommandId")
                        .HasColumnType("varchar(50)")
                        .HasMaxLength(50);

                    b.Property<int?>("CreateBy")
                        .HasColumnType("int");

                    b.Property<DateTime>("CreateDate")
                        .HasColumnType("datetime");

                    b.Property<bool>("Deleted")
                        .HasColumnType("bit");

                    b.Property<int?>("UpdateBy")
                        .HasColumnType("int");

                    b.Property<DateTime?>("UpdateDate")
                        .HasColumnType("datetime");

                    b.HasKey("RoleId", "FunctionId", "CommandId");

                    b.ToTable("Permissions");
                });

            modelBuilder.Entity("Database.Sql.ERP.Entities.System.Role", b =>
                {
                    b.Property<int>("RoleId")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int")
                        .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                    b.Property<int?>("CreateBy")
                        .HasColumnType("int");

                    b.Property<DateTime>("CreateDate")
                        .HasColumnType("datetime");

                    b.Property<bool>("Deleted")
                        .HasColumnType("bit");

                    b.Property<string>("Description")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("Name")
                        .IsRequired()
                        .HasColumnType("nvarchar(50)");

                    b.Property<int?>("UpdateBy")
                        .HasColumnType("int");

                    b.Property<DateTime?>("UpdateDate")
                        .HasColumnType("datetime");

                    b.HasKey("RoleId");

                    b.ToTable("Roles");
                });

            modelBuilder.Entity("Database.Sql.ERP.Entities.System.User", b =>
                {
                    b.Property<int>("UserId")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int")
                        .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                    b.Property<string>("Address")
                        .IsRequired()
                        .HasColumnType("nvarchar(100)");

                    b.Property<int?>("CreateBy")
                        .HasColumnType("int");

                    b.Property<DateTime>("CreateDate")
                        .HasColumnType("datetime");

                    b.Property<bool>("Deleted")
                        .HasColumnType("bit");

                    b.Property<string>("Email")
                        .IsRequired()
                        .HasColumnType("nvarchar(200)");

                    b.Property<string>("Image")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("Name")
                        .IsRequired()
                        .HasColumnType("nvarchar(100)");

                    b.Property<string>("Password")
                        .IsRequired()
                        .HasColumnType("varchar(100)");

                    b.Property<string>("Phone")
                        .IsRequired()
                        .HasColumnType("varchar(20)");

                    b.Property<int?>("UpdateBy")
                        .HasColumnType("int");

                    b.Property<DateTime?>("UpdateDate")
                        .HasColumnType("datetime");

                    b.Property<string>("UserName")
                        .IsRequired()
                        .HasColumnType("varchar(100)");

                    b.Property<bool>("isActive")
                        .HasColumnType("bit");

                    b.HasKey("UserId");

                    b.ToTable("Users");
                });

            modelBuilder.Entity("Database.Sql.ERP.Entities.System.UserRole", b =>
                {
                    b.Property<int>("UserId")
                        .HasColumnType("int");

                    b.Property<int>("RoleId")
                        .HasColumnType("int");

                    b.Property<int?>("CreateBy")
                        .HasColumnType("int");

                    b.Property<DateTime>("CreateDate")
                        .HasColumnType("datetime");

                    b.Property<bool>("Deleted")
                        .HasColumnType("bit");

                    b.Property<int?>("UpdateBy")
                        .HasColumnType("int");

                    b.Property<DateTime?>("UpdateDate")
                        .HasColumnType("datetime");

                    b.HasKey("UserId", "RoleId");

                    b.ToTable("UserRoles");
                });
#pragma warning restore 612, 618
        }
    }
}
