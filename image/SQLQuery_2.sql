-- ALTERING THE DOB COLUMN TO EXTRACT THE YEAR 

ALTER TABLE [dbo].[candidates] ADD[YEAR] INT;
UPDATE [dbo].[candidates]
SET [YEAR] = YEAR([dob])

---  CALCULATE THE AVERAGE BIOLOGY MARKS FOR CANDIDATES BORN BEFORE THE YEAR 2000.

SELECT 
    C.[application_no] AS [APPLICATION_NUMBERS],
    C.[name] AS [NAMES OF CANDIDATES],
    C.[YEAR],
    AVG(CM.[biology_marks]) AS [BIOLOGY MARKS]
FROM [dbo].[candidates_marks] CM
JOIN [dbo].[candidates] C
    ON C.[application_no] = CM.[application_no]
WHERE YEAR([dob]) < 1999
GROUP BY C.[application_no], C.[name], C.[YEAR];





