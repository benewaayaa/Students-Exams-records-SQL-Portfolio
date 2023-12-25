
--- RETRIEVE THE NAMES AND APPLICATION NUMBERS OF CANDIDATES WHO SCORED ABOVE 90 IN BOTH PHYSICS AND CHEMISTRY.

SELECT DISTINCT
        C.[application_no] AS [APPLICATION_NUMBERS],
        C.[name] AS [NAMES OF CANDIDATES]
FROM [dbo].[candidates] C
JOIN [dbo].[candidates_marks] CM  ON C.[application_no] = CM.[application_no]
WHERE [chem_marks] > 90
AND [physics_marks] > 90


