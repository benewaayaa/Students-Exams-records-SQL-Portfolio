

-- IDENTIFY CANDIDATES WITH A HIGHSCHOOL_GPA GREATER THAN 3.5 AND PHYSICS_MARKS GREATER THAN 85.

SELECT DISTINCT
        CM.[application_no] AS [APPLICATION NUMBER],
        C.[name] AS [NAMES OF STUDENTS],
       CM.[highschool_gpa] AS [STUDENT'S GPA],
        CM. [physics_marks] AS [PHYSICS MARKS]
FROM [dbo].[candidates_marks] CM 
JOIN [dbo].[candidates] C
ON C.[application_no] = CM.[application_no]
WHERE CM.[highschool_gpa] > 3.5 AND CM.[physics_marks] > 85
