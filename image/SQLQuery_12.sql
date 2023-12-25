-- IDENTIFY CANDIDATES WHO HAVE A HIGHSCHOOL_GPA GREATER THAN THE AVERAGE HIGHSCHOOL_GPA OF CANDIDATES BORN IN THE 1980S.

WITH CandidatesBornIn1980s AS (
    SELECT [application_no]
    FROM [dbo].[candidates]
    WHERE YEAR(dob) BETWEEN 1980 AND 1989
)

SELECT DISTINCT C.[application_no] AS [APPLICATION_NUMBER], C.[name] AS [NAME OF CANDIDATES], CM.Highschool_GPA
FROM [dbo].[candidates] C 
JOIN [dbo].[candidates_marks] CM ON C.[application_no] = CM.[application_no]
WHERE CM.[highschool_gpa] > (
    SELECT DISTINCT AVG(CM2.Highschool_GPA)
    FROM [dbo].[candidates] C2
    JOIN [dbo].[candidates_marks] CM2 ON C2.[application_no] = CM2.[application_no]
    WHERE C2.[application_no] IN (SELECT [application_no] FROM CandidatesBornIn1980s)
);
