
--- FIND CANDIDATES WHO HAVE THE SAME PHYSICS_MARKS AND BIOLOGY_MARKS BUT DIFFERENT CHEMISTRY_MARKS.

SELECT DISTINCT C.[name] AS [NAME OF CANDIDATES],
C.[application_no] AS [APPLICATION NUMBER],
CM.[physics_marks] AS [PHYSICS_MARKS],
CM.[chem_marks] AS [CHEMISTRY_MARKS],
CM.[biology_marks] AS [BIOLOGY_MARKS]
FROM [dbo].[candidates] C JOIN [dbo].[candidates_marks] CM
ON C.[application_no] = CM.[application_no]
WHERE CM.[physics_marks] =CM.[physics_marks]
AND CM.[biology_marks]=  CM.[biology_marks]
AND CM.[chem_marks] <> CM.[chem_marks] AND C.[application_no] <> CM.[application_no]