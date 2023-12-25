
--- LIST THE NAMES AND AGES OF CANDIDATES WHO HAVE THE SAME FATHER'S NAME.

SELECT DISTINCT [name] AS [NAME OF CANDIDATES],
        [dob] AS [DATE OF BIRTH OF CANDIDATES]
FROM [dbo].[candidates]
WHERE [father_name] IN (
    SELECT [father_name] FROM [dbo].[candidates]
    GROUP BY [father_name]
    HAVING COUNT(*)>1
)