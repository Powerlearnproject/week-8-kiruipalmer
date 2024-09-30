-- Insert Sample Data into Users Table
INSERT INTO Users (Name, Age, Gender, Income, EducationLevel, Address) VALUES
('Alice Johnson', 28, 'Female', 45000.00, 'Tertiary', '123 Main St, City A'),
('Bob Smith', 34, 'Male', 55000.00, 'Secondary', '456 Elm St, City B'),
('Charlie Brown', 22, 'Other', 30000.00, 'Primary', '789 Oak St, City C');

-- Insert Sample Data into HealthRecords Table
INSERT INTO HealthRecords (UserID, Date, Height, Weight, BMI, PhysicalActivityLevel, DietaryHabits, SmokingStatus) VALUES
(1, '2024-01-15', 165.0, 70.0, 25.7, 'Moderate', 'Balanced Diet', 'No'),
(2, '2024-01-20', 180.0, 95.0, 29.3, 'Low', 'High Sugar', 'Yes'),
(3, '2024-01-25', 160.0, 80.0, 31.2, 'Low', 'High Fat', 'No');

-- Insert Sample Data into Interventions Table
INSERT INTO Interventions (InterventionName, Description, TargetDemographic) VALUES
('Healthy Eating Workshop', 'A workshop to educate on nutrition and healthy eating habits.', 'Adults'),
('Physical Activity Challenge', 'A community challenge to encourage daily physical activity.', 'All Ages'),
('Smoking Cessation Program', 'A support program to help individuals quit smoking.', 'Smokers');

-- Insert Sample Data into UserInterventions Table
INSERT INTO UserInterventions (UserID, InterventionID, DateImplemented, Status) VALUES
(1, 1, '2024-02-01', 'Active'),
(2, 3, '2024-02-05', 'Pending'),
(3, 2, '2024-02-10', 'Completed');
