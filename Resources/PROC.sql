USE [ERP-Recruiting]
GO

CREATE PROC SP_CADIDATE_USER_LOGIN
@USERNAME NVARCHAR(80),
@PASSWORD NVARCHAR(120)
AS
    BEGIN
        SELECT A.UserName,A.UserId,A.Phone,A.Email,A.CadidateId
        FROM DBO.CadidateUsers AS A
        WHERE A.UserName = @USERNAME AND A.Password = @PASSWORD;
    END;
GO

CREATE PROC SP_CADIDATE_USER_REGISTER
@USERNAME NVARCHAR(80),
@PASSWORD NVARCHAR(120),
@EMAIL NVARCHAR(MAX),
@PHONE NVARCHAR(MAX),
@CADIDATEID NVARCHAR(MAX)
AS
	BEGIN
		INSERT INTO CadidateUsers(UserName,Password,Email,Phone,CadidateId)
		VALUES(@USERNAME,@PASSWORD,@EMAIL,@PHONE,@CADIDATEID);
	END;
GO

CREATE PROC SP_JOBDESCRIPTION_GET_PAGING
@PAGESIZE INT = 10,
@PAGE INT = 1
AS 
	BEGIN
		SELECT TOP(@PAGESIZE) JOB.Title,
			JOB.Description,
			JOB.Endow,
			JOB.Benefit,
			JOB.SkillId,
			JOB.OfferFrom,
			JOB.OfferTo,
			JOB.RequestJob,
			JOB.Status,
			CAT.Name,
			REC.TimeStart,
			REC.TimeEnd,
			JOB.CategoryId,
			JOB.Type,
			JOB.CreateDate
		FROM DBO.JobDescriptions AS JOB,
			DBO.RecruitmentPlans AS REC,
			DBO.JobCategories AS CAT
			WHERE 
				JOB.CategoryId = CAT.CategoryId AND
				JOB.PlanId = REC.PlanId
	END;
GO
