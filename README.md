Dataset Description:

The dataset comprises two tables: Candidates_marks and Candidate. The former includes academic performance attributes like Application_no, Highschool_GPA, Physics_marks, Chem_marks, and Biology_marks. The latter holds personal details such as application_no, name, father_name, and dob. 

Insights to be gained

This dataset provides a comprehensive view of candidates' academic achievements and personal information, enabling in-depth analysis and insights that are crucial for informed decision-making in education and recruitment processes.


QUESTION TO LEAD TO THE INSIGHTS

1. Retrieve the names and application numbers of candidates who scored above 90 in both Physics and Chemistry.
2. Calculate the average Biology marks for candidates born before the year 2000.
3. Identify candidates with a Highschool_GPA greater than 3.5 and Physics_marks greater than 85.
4. Find the top 10 candidates with the highest overall marks, considering Physics, Chemistry, and Biology.
5. List the names and ages of candidates who have the same father's name.
6. Calculate the percentage of candidates who scored below the average Highschool_GPA.
7. Find the application numbers of candidates who scored the highest in Chemistry but below 80 in Physics.
8. Retrieve the names of candidates who have Biology_marks greater than the average for candidates born in the 1990s.
9. Identify candidates who have the same date of birth but different names.
10. List the application numbers of candidates who have the highest Highschool_GPA in each father's name group.
11. Calculate the total number of candidates born in each year and month.
12. Find candidates who have the same Physics_marks and Biology_marks but different Chemistry_marks.
13. Retrieve the names of candidates who have the lowest total marks (sum of Physics, Chemistry, and Biology).
14. Identify candidates who have a Highschool_GPA greater than the average Highschool_GPA of candidates born in the 1980s.
15. List the application numbers and names of candidates who have the second-highest Biology_marks.


QUESTION 1:

RETRIEVE THE NAMES AND APPLICATION NUMBERS OF CANDIDATES WHO SCORED ABOVE 90 IN BOTH PHYSICS AND CHEMISTRY.

Identifying candidates with scores above 90 in Physics and Chemistry reveals high-achievers, potentially guiding targeted academic support and recognizing exceptional talent in the application pool.

CODE

SELECT DISTINCT C.[application_no] AS [APPLICATION_NUMBERS], C.[name] AS [NAMES OF CANDIDATES]
FROM [dbo].[candidates] C JOIN [dbo].[candidates_marks] CM  ON C.[application_no] = CM.[application_no] WHERE [chem_marks] > 90 AND [physics_marks] > 90

OUTPUT 

