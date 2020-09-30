﻿using Core.CommonModel;
using Core.CommonModel.Enum;
using Database.Sql.ERP;
using Microsoft.AspNetCore.Http;
using Services.Cadidates.Interfaces;
using Services.Cadidates.ViewModel;
using System;
using System.Linq;
using System.Threading.Tasks;
using Database.Sql.ERP.Entities.Cadidate;
using System.Security.Claims;
using System.Security.Cryptography.X509Certificates;
using Microsoft.EntityFrameworkCore;
using Core.Services.InterfaceService;
using System.Net.Http.Headers;
using Database.Sql.ERP.Entities.Common;
using Services.Common.ViewModel;

namespace Services.Cadidates.Implement
{
    public partial class CadidateService : ICadidateService
    {
        private IERPUnitOfWork _context;
        private IHttpContextAccessor _httpContext;
        private ISequenceService _sequenceService;
        public CadidateService(IERPUnitOfWork context,
            IHttpContextAccessor httpContext,
            ISequenceService sequenceService)
        {
            _context = context;
            _httpContext = httpContext;
            _sequenceService = sequenceService;
        }

        public Task<ResponseModel> ApplyToJob(int id)
        {
            throw new NotImplementedException();
        }

        public Task<ResponseModel> ChangeProcess(int id)
        {
            throw new NotImplementedException();
        }

        public async Task<ResponseModel> Delete(CadidateViewModel model)
        {
            ResponseModel response = new ResponseModel();
            try
            {
                Cadidate md = _context.CadidateRepository.FirstOrDefault(x => x.CadidateId == model.CadidateId);

                md.Deleted = true;
                md.UpdateDate = DateTime.Now;
                md.UpdateBy = 1;

                _context.CadidateRepository.Update(md);

                await _context.SaveChangesAsync();

                response.Result = ResponseStatus.Success;
            }
            catch(Exception ex)
            {
                response.Status = ResponseStatus.Error;
                response.Errors.Add(ex.InnerException.InnerException.Message);
                throw ex;
            }
            return response;
        }

        public Task<ResponseModel> DropdownSelection()
        {
            throw new NotImplementedException();
        }

        public async Task<ResponseModel> GetList(FilterModel filter)
        {
            ResponseModel response = new ResponseModel();
            try
            {
                var query = from m in _context.CadidateRepository.Query()
                            where !m.Deleted
                            orderby m.Name
                            select new CadidateViewModel()
                            {
                                Name = m.Name,
                                Email = m.Email,
                                Address = m.Address,
                                Phone = m.Phone,
                                Gender = m.Gender,
                                Degree = m.Degree,
                                University = m.University,
                                Major = m.Major,
                                ApplyDate = m.ApplyDate,
                                Experience = m.Experience,
                                Rating = m.Rating,
                                ProviderId = m.ProviderId,
                                CategoryId = m.CategoryId,
                                Skill = m.Skill,
                                JobId = m.JobId,
                                TagId = m.TagId
                            };
                if (!string.IsNullOrEmpty(filter.Text))
                {
                    query = query.Where(x => x.Name.ToLower().Contains(filter.Text.ToLower())
                                        || x.Email.ToLower().Contains(filter.Text.ToLower())
                                        || x.Address.ToLower().Contains(filter.Text.ToLower())
                                        || x.Phone.ToLower().Contains(filter.Text.ToLower())
                                        || x.Degree.ToLower().Contains(filter.Text.ToLower())
                                        );
                }
                BaseListModel<CadidateViewModel> listItems = new BaseListModel<CadidateViewModel>();

                listItems.Items = await query.Skip((filter.Paging.PageIndex - 1) * filter.Paging.PageSize)
                                       .Take(filter.Paging.PageSize)
                                       .OrderByDescending(x => x.Name)
                                       .ToListAsync()
                                       .ConfigureAwait(true);
                listItems.TotalItems = await query.CountAsync();

                response.Result = listItems;
                response.Status = ResponseStatus.Success;
            }
            catch(Exception ex)
            {
                response.Errors.Add(ex.InnerException.InnerException.Message);
                response.Status = ResponseStatus.Error;
                throw ex;
            }
            return response;
        }

        public async Task<ResponseModel> Insert(CadidateViewModel model)
        {
            ResponseModel response = new ResponseModel();
            try
            {
                Cadidate md = new Cadidate();
                var cadidateId = await _sequenceService.GetCadidateNewId();
                md.Name = model.Name;
                md.Email = model.Email;
                md.Address = model.Address;
                //md.Dob = model.Dob;
                md.Phone = model.Phone;
                md.Gender = model.Gender;
                md.Degree = model.Degree;
                md.University = model.University;
                md.Major = model.Major;
                //md.ApplyDate = model.ApplyDate;
                md.Experience = model.Experience;              
                md.ProviderId = model.ProviderId;
                md.CategoryId = model.CategoryId;
                md.Skill = model.Skill;
                md.CreateDate = DateTime.Now;
                md.CreateBy = Convert.ToInt32(_httpContext.HttpContext.User.FindFirst(ClaimTypes.NameIdentifier).Value);

                foreach(var item in model.Files)
                {
                    File f = new File();
                    f.CadidateId = cadidateId;
                    f.Deleted = false;
                    f.FileName = item.FileName;
                    //f.FilePath = item.FilePath;
                    //f.FileSize = item.FileSize;
                    //f.FileType = item.FileType;
                    f.CreateBy = Convert.ToInt32(_httpContext.HttpContext.User.FindFirst(ClaimTypes.NameIdentifier).Value);
                    f.CreateDate = DateTime.Now;

                    _context.FileCVRepository.Add(f);
                    _context.SaveChanges();
                }

                await _context.CadidateRepository.AddAsync(md);
                await _context.SaveChangesAsync();

                response.Status = ResponseStatus.Success;
            }
            catch(Exception ex)
            {
                throw ex;
            }
            return response;
        }

        public async Task<ResponseModel> Item(int id)
        {
            ResponseModel response = new ResponseModel();
            try
            {
                Cadidate md = await _context.CadidateRepository.FirstOrDefaultAsync(x => x.CadidateId == id);

                CadidateViewModel model = new CadidateViewModel()
                {
                    Name = md.Name,
                    Email = md.Email,
                    Address = md.Address,
                    Phone = md.Phone,
                    Gender = md.Gender,
                    Degree = md.Degree,
                    University = md.University,
                    Major = md.Major,
                    ApplyDate = md.ApplyDate,
                    Experience = md.Experience,
                    Rating = md.Rating,
                    ProviderId = md.ProviderId,
                    CategoryId = md.CategoryId,
                    Skill = md.Skill,
                    JobId = md.JobId,
                    TagId = md.TagId,
                    FaceBook = md.FaceBook,
                    Zalo = md.Zalo,
                    LinkIn = md.LinkIn,
                    Dob = md.Dob,
                };

                response.Result = model;
                response.Status = ResponseStatus.Success;
            }
            catch(Exception ex)
            {
                throw ex;
            }
            return response;
        }
        public Task<ResponseModel> Tagging(int id)
        {
            throw new NotImplementedException();
        }

        public Task<ResponseModel> Update(CadidateViewModel model)
        {
            throw new NotImplementedException();
        }
    }
}
