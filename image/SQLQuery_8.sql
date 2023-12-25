

-- RETRIEVE THE NAMES OF CANDIDATES WHO HAVE BIOLOGY_MARKS GREATER THAN THE AVERAGE FOR CANDIDATES BORN IN THE 1990s.

SELECT C.[name] AS [NAMES OF CANDIDATES],
CM.[biology_marks] AS [BIOLOGY_MARKS],
AVG(CM.[biology_marks]) AS [AVERAGE BIOLOGY MARKS FOR 1990s]
FROM [dbo].[candidates] C JOIN[dbo].[candidates_marks] CM 
ON C.[application_no] = CM.[application_no]
WHERE YEAR(C.[dob]) BETWEEN 1990 AND 1999
GROUP BY C.[name], CM.[biology_marks]
HAVING 
CM.[biology_marks] > AVG(CM.[biology_marks]) 


-- RETRIEVE THE NAMES OF CANDIDATES WHO HAVE BIOLOGY_MARKS GREATER THAN THE AVERAGE FOR CANDIDATES BORN IN THE 1990s.

SELECT 
    C.[name] AS [NAME OF CANDIDATES],
    CM.[biology_marks] AS [BIOLOGY MARKS],
    AVG(CM.[biology_marks]) AS [AVERAGE BIOLOGY MARKS FOR 1990s]
FROM 
    [dbo].[candidates] C 
    JOIN [dbo].[candidates_marks] CM ON C.[application_no] = CM.[application_no] 
WHERE  
    YEAR(C.[dob]) BETWEEN 1990 AND 1999
GROUP BY 
    C.[name], CM.[biology_marks]
HAVING 
    CM.[biology_marks] > AVG(CM.[biology_marks]);
