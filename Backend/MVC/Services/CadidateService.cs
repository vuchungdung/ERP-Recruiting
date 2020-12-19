﻿using MVC.Helper;
using MVC.Models;
using MVC.Services.Interfaces;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace MVC.Services
{
    public class CandidateService : ICandidateService
    {
        private readonly IDatabaseHelper _helper;

        public CandidateService(IDatabaseHelper helper)
        {
            _helper = helper;
        }

        public bool Apply(FileViewModel model)
        {
            try
            {
                var response = _helper.ExecuteSProcedure("SP_FILE_CREATE", "@CREATEDATE", DateTime.Now, "@DELETED", false, "@FILENAME",model.FileName, "@FILEPATH",model.FilePath, "@FILETYPE",model.FileType, "@FILESIZE",model.FileSize,"@CANDIDATEID",model.CandidateId);
                if(response != null)
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
            catch(Exception ex)
            {
                throw ex;
            }
        }

        public bool CreateProfile(CandidateViewModel model)
        {
            try
            {
                var response = _helper.ExecuteSProcedure("SP_CANDIDATE_UPDATE",
                                                            "@CANDIDATEID",model.CandidateId,
                                                            "@NAME",model.Name,
                                                            "@EMAIL",model.Email,
                                                            "@ADDRESS",model.Address,
                                                            "@PHONE",model.Phone,
                                                            "@DOB",model.Dob, 
                                                            "@GENDER",model.Gender,
                                                            "@APPLYDATE",DateTime.Now, 
                                                            "@SKYPE",model.Skype,
                                                            "@JOBID",model.JobId,
                                                            "@zalo",model.Zalo,
                                                            "@Facebook",model.Facebook,
                                                            "@Linkid",model.LinkId);
                if(response != null)
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
            catch(Exception ex)
            {
                throw ex;
            }
        }

        public CandidateViewModel GetByUsername(string username)
        {
            try
            {
                var response = _helper.ExecuteSProcedure("SP_GET_CANDIDATE_USERNAME", "@USERNAME", username);
                return response.ConvertTo<CandidateViewModel>().ToList().ElementAt(0);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public bool Login(LoginViewModel model)
        {
            try
            {
                var response = _helper.ExecuteSProcedure("SP_CANDIDATE_LOGIN", "@USERNAME", model.Username, "@PASSWORD", model.Password);
                var result = response.ConvertTo<LoginViewModel>().ToList();
                if (result.Count != 0)
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

        public bool Regrister(RegisterViewModel model)
        {
            try
            {
                var response = _helper.ExecuteSProcedure("SP_CANDIDATE_REGRISTER", "@CREATEDATE",DateTime.Now,"@DELETED",false, "@USERNAME", model.Username, "@PASSWORD", model.Password);
                if(response != null)
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
    }
}
