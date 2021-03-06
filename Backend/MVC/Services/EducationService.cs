﻿using MVC.Helper;
using MVC.Models;
using MVC.Services.Interfaces;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace MVC.Services
{
    public class EducationService : IEducationService
    {

        private readonly IDatabaseHelper _helper;

        public EducationService(IDatabaseHelper helper)
        {
            _helper = helper;
        }

        public bool Create(EducationViewModel model)
        {
            try
            {
                var response = _helper.ExecuteSProcedure("SP_CREATE_EDUCATION", "@createby", model.CreateBy,
                                                           "@candidateid", model.CandidateId,
                                                           "@title", model.Title,
                                                           "@description", model.Description,
                                                           "@institute", model.Institute,
                                                           "@_from", model._From,
                                                           "@_to",model._To,
                                                           "@createdate",DateTime.Now);
                if (response != null)
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }


        public List<EducationViewModel> GetByCId(int id)
        {
            try
            {
                var response = _helper.ExecuteSProcedure("SP_GET_EDUCATION", "@candidateid", id);
                return response.ConvertTo<EducationViewModel>().ToList();
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public bool Update(EducationViewModel model)
        {
            try
            {
                var response = _helper.ExecuteSProcedure("SP_UPDATE_EDUCATION", "@id",model.Id,
                                                           "@updateby", model.CreateBy,
                                                           "@delete",0,
                                                           "@candidateid", model.CandidateId,
                                                           "@title", model.Title,
                                                           "@description", model.Description,
                                                           "@institute", model.Institute,
                                                           "@_from", model._From,
                                                           "@_to", model._To,
                                                           "@updatedate", DateTime.Now);
                if (response != null)
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public EducationViewModel GetById(int id)
        {
            try
            {
                var response = _helper.ExecuteSProcedure("SP_GET_EDUCATION_ID", "@id", id);
                return response.ConvertTo<EducationViewModel>().ToList().ElementAt(0);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        public bool Delete(int id)
        {
            try
            {
                var response = _helper.ExecuteSProcedure("SP_DELETE_EDUCATION", "@id", id);
                return true;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}
