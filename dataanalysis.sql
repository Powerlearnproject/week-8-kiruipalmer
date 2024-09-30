-- count odf users by GEnder
SELECT Gender, COUNT(*) AS UserCount
FROM Users
GROUP BY Gender;

-- average BMI
SELECT u.EducationLevel, AVG(hr.BMI) AS AverageBMI
FROM Users u
JOIN HealthRecords hr ON u.UserID = hr.UserID
GROUP BY u.EducationLevel;

--physical activity level distribution
SELECT PhysicalActivityLevel, COUNT(*) AS UserCount
FROM HealthRecords
GROUP BY PhysicalActivityLevel;

--intervention effectiveness
SELECT ui.InterventionID, COUNT(*) AS UserCount, 
       i.InterventionName
FROM UserInterventions ui
JOIN Interventions i ON ui.InterventionID = i.InterventionID
GROUP BY ui.InterventionID, i.InterventionName;

--correlation of BMI AND INCOME
SELECT AVG(hr.BMI) AS AverageBMI, AVG(u.Income) AS AverageIncome
FROM Users u
JOIN HealthRecords hr ON u.UserID = hr.UserID
GROUP BY u.Income;
 --USERS WITH HIGH BMI and smokes
 SELECT u.Name, hr.BMI, hr.SmokingStatus
FROM Users u
JOIN HealthRecords hr ON u.UserID = hr.UserID
WHERE hr.BMI > 30 AND hr.SmokingStatus = 'Yes';
