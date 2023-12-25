
-- FIND THE APPLICATION NUMBERS OF CANDIDATES WHO SCORED THE HIGHEST IN CHEMISTRY BUT BELOW 80 IN PHYSICS.

SELECT 
    CM.[application_no] AS [APPLICATION NUMBERS],
     C.[name] AS [NAMES OF STUDENTS],
    MAX(CM.[chem_marks]) AS [HIGHEST CHEMISTRY MARK],
    MAX(CM.[physics_marks]) AS [HIGHEST PHYSICS MARK]
FROM 
    [dbo].[candidates_marks] CM
    JOIN [dbo].[candidates] C
ON C.[application_no] = CM.[application_no]
WHERE 
    CM.[physics_marks] < 80
GROUP BY 
    CM.[application_no], C.[name]
HAVING 
    MAX(CM.[chem_marks]) = (SELECT MAX([chem_marks]) 
    FROM [dbo].[candidates_marks] WHERE [physics_marks] < 80);
