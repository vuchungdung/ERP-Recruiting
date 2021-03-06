USE [ERP-Recruiting]
GO

CREATE PROC SP_JOBDESCRIPTION_GET_PAGING
AS 
	BEGIN
		SELECT JOB.Title,
			JOB.JobId,
			JOB.Description,
			JOB.Endow,
			JOB.Benefit,
			JOB.SkillId,
			JOB.OfferFrom,
			JOB.OfferTo,
			JOB.RequestJob,
			JOB.Status,
			CAT.Name,
			JOB.TimeStart,
			JOB.TimeEnd,
			JOB.CategoryId,
			JOB.Quatity,
			JOB.Type,
			JOB.CreateDate
		FROM DBO.JobDescriptions AS JOB,
			DBO.JobCategories AS CAT
			WHERE 
				JOB.CategoryId = CAT.CategoryId AND
				JOB.Deleted = 0
			ORDER BY JOB.JobId
	END;
GO

CREATE PROC SP_SKILL_GET_ALL
AS
	BEGIN
		SELECT SKILL.SkillId, SKILL.Name FROM DBO.Skills AS SKILL WHERE SKILL.Deleted = 0
	END
GO

CREATE PROC SP_CATEGORY_GET_ALL
AS
	BEGIN
		SELECT JC.CategoryId,JC.Name,COUNT(JOB.JobId) AS Total
		FROM DBO.JobCategories AS JC,DBO.JobDescriptions AS JOB 
		WHERE JC.Deleted = 0 AND JC.CategoryId = JOB.CategoryId
		GROUP BY JC.CategoryId,JC.Name
	END
GO

CREATE PROC SP_JOBDESCRIPTION_GET_ALL
AS 
	BEGIN
		SELECT JOB.Title,
			JOB.JobId,
			JOB.Description,
			JOB.Endow,
			JOB.Benefit,
			JOB.SkillId,
			JOB.OfferFrom,
			JOB.OfferTo,
			JOB.RequestJob,
			JOB.Status,
			CAT.Name,
			JOB.TimeStart,
			JOB.TimeEnd,
			JOB.Quatity,
			JOB.CategoryId,
			JOB.Type,
			JOB.CreateDate
		FROM DBO.JobDescriptions AS JOB,
			DBO.JobCategories AS CAT
			WHERE 
				JOB.CategoryId = CAT.CategoryId AND
				JOB.Deleted = 0
	END;
GO

CREATE PROC SP_JOBDESCRIPTION_GET_SIMILAR
@CATEGORIID INT
AS 
	BEGIN
		SELECT JOB.Title,
			JOB.JobId,
			JOB.Quatity,
			JOB.Type
		FROM DBO.JobDescriptions AS JOB,
			DBO.JobCategories AS CAT
			WHERE 
				JOB.CategoryId = CAT.CategoryId AND
				JOB.Deleted = 0 AND
				CAT.CategoryId = @CATEGORIID
	END;
GO


CREATE PROC SP_JOBDESCRIPTION_GET_ALL_NEW
AS 
	BEGIN
		SELECT TOP(8) JOB.Title,
			JOB.JobId,
			JOB.Description,
			JOB.Endow,
			JOB.Benefit,
			JOB.SkillId,
			JOB.OfferFrom,
			JOB.OfferTo,
			JOB.RequestJob,
			JOB.Status,
			CAT.Name,
			JOB.TimeStart,
			JOB.TimeEnd,
			JOB.CategoryId,
			JOB.Quatity,
			JOB.Type,
			JOB.CreateDate
		FROM DBO.JobDescriptions AS JOB,
			DBO.JobCategories AS CAT
			WHERE 
				JOB.CategoryId = CAT.CategoryId AND
				JOB.Deleted = 0
			ORDER BY JOB.CreateDate DESC
	END;
GO

CREATE PROC SP_JOBDESCRIPTION_GET_DETAIL
@ID INT
AS 
	BEGIN
		SELECT JOB.Title,
			JOB.JobId,
			JOB.Description,
			JOB.Endow,
			JOB.Benefit,
			JOB.SkillId,
			JOB.OfferFrom,
			JOB.OfferTo,
			JOB.RequestJob,
			JOB.Status,
			CAT.Name,
			JOB.TimeStart,
			JOB.Quatity,
			JOB.TimeEnd,
			JOB.CategoryId,
			JOB.Type,
			JOB.CreateDate
		FROM DBO.JobDescriptions AS JOB,
			DBO.JobCategories AS CAT
			WHERE 
				JOB.CategoryId = CAT.CategoryId AND
				JOB.Deleted = 0
				AND JOB.JobId = @ID
			ORDER BY JOB.CreateDate DESC
	END;
GO

CREATE PROC SP_CANDIDATE_UPDATE
(
@CANDIDATEID INT,
@NAME NVARCHAR(100),
@EMAIL VARCHAR(200),
@ADDRESS NVARCHAR(250),
@PHONE NVARCHAR(20),
@DOB DATETIME,
@GENDER INT,
@Facebook nvarchar(max),
@SKYPE NVARCHAR(MAX),
@Linkedin nvarchar(max),
@zalo nvarchar(max),
@PROVIDERID INT = 9
)
AS
	BEGIN
		UPDATE DBO.Candidates SET Skype = @SKYPE, Name = @NAME,Email = @EMAIL,Address = @ADDRESS,Phone = @PHONE,Dob = @DOB,Gender = @GENDER, ProviderId = @PROVIDERID,Zalo = @zalo,LinkedIn = @Linkedin,FaceBook = @Facebook
		WHERE CandidateId = @CANDIDATEID
	END;
GO


CREATE PROC SP_CANDIDATE_LOGIN
(
@USERNAME NVARCHAR(MAX),
@PASSWORD NVARCHAR(MAX)
)
AS
	BEGIN
		SELECT c.CandidateId, c.Username from DBO.Candidates as c WHERE c.Username = @USERNAME AND c.Password = @PASSWORD
	END;
GO

CREATE PROC SP_FILE_CREATE
(
@CREATEDATE DATETIME,
@DELETED BIT,
@FILENAME NVARCHAR(200),
@FILEPATH NVARCHAR(200),
@FILETYPE NVARCHAR(100),
@FILESIZE INT,
@CANDIDATEID INT
)
AS
	BEGIN
		INSERT DBO.Files(CreateDate,Deleted,FileName,FilePath,FileType,FileSize,CandidateId)
		VALUES (@CREATEDATE,@DELETED,@FILENAME,@FILEPATH,@FILETYPE,@FILESIZE,@CANDIDATEID)
	END;
GO







CREATE PROC SP_UPDATE_AWARD
(@id int,
@updateby int,
@delete bit,
@candidateid int,
@title nvarchar(max),
@institute nvarchar(max),
@description nvarchar(max),
@_from datetime,
@_to datetime,
@updatedate datetime
)
AS
	BEGIN
		UPDATE DBO.Awards SET UpdateBy = @updateby, CandidateId = @candidateid,Deleted = @delete,UpdateDate = @updatedate,Title = @title,Institute = @institute,Description = @description,_From = @_from,_To=@_to
		WHERE Id = @id
	END;
GO

CREATE PROC SP_DELETE_AWARD
(@id int)
AS
	BEGIN
		Delete DBO.Awards
		WHERE Id = @id
	END;
GO

CREATE PROC SP_UPDATE_EDUCATION
(@id int,
@updateby int,
@delete bit,
@candidateid int,
@title nvarchar(max),
@institute nvarchar(max),
@description nvarchar(max),
@_from int,
@_to int,
@updatedate datetime
)
AS
	BEGIN
		UPDATE DBO.Educations SET UpdateBy = @updateby, CandidateId = @candidateid,Deleted = @delete,UpdateDate = @updatedate,Title = @title,Institute = @institute,Description = @description,_From = @_from,_To=@_to
		WHERE Id = @id
	END;
GO

CREATE PROC SP_DELETE_EDUCATION
(@id int)
AS
	BEGIN
		Delete DBO.Educations
		WHERE Id = @id
	END;
GO





CREATE PROC SP_UPDATE_WORK
(@id int,
@updateby int,
@delete bit,
@candidateid int,
@position nvarchar(max),
@institute nvarchar(max),
@description nvarchar(max),
@timestart datetime,
@updatedate datetime,
@company nvarchar(max),
@timeend datetime
)
AS
	BEGIN
		UPDATE DBO.WorkHistories SET UpdateBy = @updateby, CandidateId = @candidateid,Deleted = @delete,UpdateDate = @updatedate,Position = @position,Company = @company,Description = @description,TimeStart = @timestart,TimeEnd = @timeend
		WHERE Id = @id
	END;
GO

CREATE PROC SP_DELETE_WORK
(@id int)
AS
	BEGIN
		Delete DBO.WorkHistories
		WHERE Id = @id
	END;
GO


create proc SP_CREATE_AWARD
(@createby int,
@delete bit = 0,
@candidateid int,
@title nvarchar(max),
@institute nvarchar(max),
@description nvarchar(max),
@_from datetime,
@_to datetime,
@createdate datetime
)
as
	begin
		insert dbo.Awards(CandidateId,Deleted,CreateDate,CreateBy,Title,Description,_From,_To,Institute)
		values(@candidateid,@delete,@createdate,@createby,@title,@description,@_from,@_to,@institute)
	end
go

create proc SP_CREATE_EDUCATION
(@createby int,
@delete bit = 0,
@candidateid int,
@title nvarchar(max),
@institute nvarchar(max),
@description nvarchar(max),
@_from int,
@_to int,
@createdate datetime
)
as
	begin
		insert dbo.Educations(CandidateId,Deleted,CreateDate,CreateBy,Title,Description,_From,_To,Institute)
		values(@candidateid,@delete,@createdate,@createby,@title,@description,@_from,@_to,@institute)
	end
go

CREATE PROC SP_CREATE_WORK
(@createby int,
@delete bit = 0,
@candidateid int,
@position nvarchar(max),
@description nvarchar(max),
@timestart datetime,
@createdate datetime,
@company nvarchar(max),
@timeend datetime
)
AS
	BEGIN
		insert dbo.WorkHistories(CandidateId,Deleted,CreateDate,CreateBy,Position,Company,Description,TimeEnd,TimeStart)
		values(@candidateid,@delete,@createdate,@createby,@position,@company,@description,@timeend,@timestart)
	END;
GO

CREATE PROC SP_GET_WORK
(@candidateid int)
AS
	BEGIN
		select w.Id,w.Company,w.Description,w.TimeEnd,w.TimeStart,w.Position
		from dbo.WorkHistories as w where w.CandidateId = @candidateid
	END;
GO

CREATE PROC SP_GET_EDUCATION
(@candidateid int)
AS
	BEGIN
		select w.Id,w.Title,w.Institute,w.Description,w._From,w._To
		from dbo.Educations as w where w.CandidateId = @candidateid
	END;
GO

CREATE PROC SP_GET_AWARD
(@candidateid int)
AS
	BEGIN
		select w.Id,w.Title,w.Institute,w.Description,w._From,w._To
		from dbo.Awards as w where w.CandidateId = @candidateid
	END;
GO


CREATE PROC SP_CANDIDATE_REGRISTER
(
@CREATEDATE DATETIME = GETDATE,
@DELETED BIT,
@USERNAME NVARCHAR(MAX),
@PASSWORD NVARCHAR(MAX),
@FileName nvarchar(max) = '08.jpg',
@FilePath nvarchar(max) = ''
)
AS
	BEGIN
		INSERT DBO.Candidates(CreateDate,Deleted,Username,Password,FileName,FilePath)
		VALUES (@CREATEDATE,@DELETED,@USERNAME,@PASSWORD,@FileName,@FilePath)
	END;
GO


CREATE PROC SP_CANDIDATE_GET_DETAIL
@ID INT 
AS
	BEGIN
		SELECT c.Name,c.Email,c.Gender,c.Dob,c.Address,c.Phone,c.Skype,c.Zalo,c.LinkedIn,c.Facebook,c.FileName,c.FilePath
		FROM DBO.Candidates AS c
		WHERE c.CandidateId = @ID
	END;
GO

CREATE PROC SP_GET_CANDIDATE_USERNAME
(@USERNAME NVARCHAR(MAX))
AS
	BEGIN
		SELECT c.Username,c.FileName,c.FilePath,c.CandidateId
		FROM DBO.Candidates AS c
		WHERE c.Username = @USERNAME
	END;
GO



exec SP_CANDIDATE_GET_DETAIL 1
go

CREATE PROC SP_APPLY_CREATE
(@createby int,
@createdate datetime,
@delete int = 0,
@candidateid int,
@jobid int,
@applydate datetime)
AS
	BEGIN
		insert dbo.Applies(CreateBy,CreateDate,Deleted,CandidateId,JobId,ApplyDate)
		values (@createby,@createdate,@delete,@candidateid,@jobid,@applydate)
	END;
GO



select Process.Name from dbo.Process
go

create proc SP_GET_INTERVIEW
(@ID int)
AS
	BEGIN
		select c.Name,c.CandidateId,j.Title,a.ApplyDate,p.Name as p_Name,j.JobId,i.Result
		from dbo.Candidates as c join Applies as a on c.CandidateId = a.CandidateId
		join dbo.JobDescriptions as j on a.JobId = j.JobId
		join dbo.InterviewProcesses as i on a.Id = i.ApplyId
		join dbo.Process as p on i.ProcessId = p.ProcessId
		where c.CandidateId = @ID
	END;
GO


exec SP_GET_INTERVIEW 1
go

create proc SP_INTERVIEW_P_CREATE
(@applyid int,
@processid int,
@createby int,
@createdate datetime,
@delete bit = 0)
as
	begin
		insert dbo.InterviewProcesses(ApplyId,ProcessId,CreateBy,CreateDate,Deleted,isShow)
		values(@applyid,@processid,@createby,@createdate,@delete,1)
	end;
go


select c.Name,c.CandidateId,j.Title,a.ApplyDate,p.Name as p_Name,j.JobId,i.Result,p.ProcessId
		from dbo.Candidates as c join Applies as a on c.CandidateId = a.CandidateId
		join dbo.JobDescriptions as j on a.JobId = j.JobId
		join dbo.InterviewProcesses as i on a.Id = i.ApplyId
		join dbo.Process as p on i.ProcessId = p.ProcessId



select * from dbo.InterviewProcesses




CREATE PROC SP_GET_WORK_ID
(@id int)
AS
	BEGIN
		select w.Id,w.Company,w.Description,w.TimeEnd,w.TimeStart,w.Position
		from dbo.WorkHistories as w where w.Id = @id
	END;
GO

CREATE PROC SP_GET_EDUCATION_ID
(@id int)
AS
	BEGIN
		select w.Id,w.Title,w.Institute,w.Description,w._From,w._To
		from dbo.Educations as w where w.Id = @id
	END;
GO

CREATE PROC SP_GET_AWARD_ID
(@id int)
AS
	BEGIN
		select w.Id,w.Title,w.Institute,w.Description,w._From,w._To
		from dbo.Awards as w where w.Id = @id
	END;
GO