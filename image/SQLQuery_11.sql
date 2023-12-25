
--- RETRIEVE THE NAMES OF CANDIDATES WHO HAVE THE LOWEST TOTAL MARKS (SUM OF PHYSICS, CHEMISTRY, AND BIOLOGY).

SELECT DISTINCT C.[application_no] AS [APPLICATION_NUMBER],
C.[name] AS [NAME OF CANDIDATES],
CM.[physics_marks] AS [PHYSICS_MARKS],
CM.[chem_marks] AS [CHEMISTRY_MARKS],
CM.[biology_marks] AS [BIOLOGY_MARKS],
(CAST(CM.[physics_marks] AS INT)+ CAST(CM.[chem_marks] AS INT) + CAST(CM.[biology_marks] AS INT)) AS [TOTAL MARKS]
FROM [dbo].[candidates] C 
JOIN [dbo].[candidates_marks] CM 
ON C.[application_no] = CM.[application_no]
ORDER BY 
[TOTAL MARKS] DESC
