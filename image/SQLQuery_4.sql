

-- FIND THE TOP 10 CANDIDATES WITH THE HIGHEST OVERALL MARKS, CONSIDERING PHYSICS, CHEMISTRY, AND BIOLOGY.

SELECT TOP 10 
    C.[application_no] AS [APPLICATION_NUMBERS],
    C.[name] AS [NAMES OF STUDENTS],
    MAX(CAST(CM.[physics_marks] AS int)) AS [HIGHEST PHYSICS_MARK],
    MAX(CAST(CM.[chem_marks] AS int)) AS [HIGHEST CHEMISTRY MARK],
    MAX(CAST(CM.[biology_marks] AS int)) AS [HIGHEST BIOLOGY MARK]
FROM [dbo].[candidates] C 
JOIN [dbo].[candidates_marks] CM 
    ON C.[application_no] = CM.[application_no]
GROUP BY C.[application_no], C.[name]
ORDER BY MAX(CAST(CM.[physics_marks] AS int)) + MAX(CAST(CM.[chem_marks] AS int)) + MAX(CAST(CM.[biology_marks] AS int)) DESC;
