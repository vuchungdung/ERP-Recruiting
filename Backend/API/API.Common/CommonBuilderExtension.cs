﻿using Core.Services;
using Core.Services.InterfaceService;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using Services.Common.Implement;
using Services.Common.Interfaces;

namespace API.Common
{
    public static class CommonBuilderExtension
    {
        public static IServiceCollection AddCommonServices(this IServiceCollection services, IConfiguration config)
        {
            services.AddScoped<ISkillService, SkillService>();
            services.AddScoped<ITagService, TagService>();
            services.AddScoped<IFileCvService, FileCvService>();
            services.AddScoped<ISequenceService, SequenceService>();
            services.AddScoped<IProviderService, ProviderService>();
            services.AddScoped<IJobCategoryService, JobCategoryService>();
            services.AddScoped<IProcessService, ProcessService>();

            return services;
        }
    }
}