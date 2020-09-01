﻿using Core.DataAccess;
using Database.Sql.ERP.Entities.Interview;
using System;
using System.Collections.Generic;
using System.Text;

namespace Database.Sql.ERP.UnitOfWork
{
    public interface IInterviewUnitOfWork
    {
        ITableGenericRepository<InterviewDate> InterviewRepository { get; }
        ITableGenericRepository<InterviewProcess> InterviewProcessRepository { get; }
        ITableGenericRepository<InterviewResult> InterviewResultRepository { get; }
        ITableGenericRepository<Process> ProcessRepository { get; }

    }
}
