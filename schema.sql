-- Create Users Table
CREATE TABLE Users (
    UserID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100),
    Age INT,
    Gender ENUM('Male', 'Female', 'Other'),
    Income DECIMAL(10, 2),
    EducationLevel ENUM('None', 'Primary', 'Secondary', 'Tertiary', 'Higher'),
    Address VARCHAR(255)
);

-- Create HealthRecords Table
CREATE TABLE HealthRecords (
    RecordID INT PRIMARY KEY AUTO_INCREMENT,
    UserID INT,
    Date DATE,
    Height DECIMAL(5, 2),  -- in cm
    Weight DECIMAL(5, 2),   -- in kg
    BMI DECIMAL(4, 2),
    PhysicalActivityLevel ENUM('Low', 'Moderate', 'High'),
    DietaryHabits VARCHAR(255),
    SmokingStatus ENUM('Yes', 'No'),
    FOREIGN KEY (UserID) REFERENCES Users(UserID)
);

-- Create Interventions Table
CREATE TABLE Interventions (
    InterventionID INT PRIMARY KEY AUTO_INCREMENT,
    InterventionName VARCHAR(100),
    Description TEXT,
    TargetDemographic VARCHAR(255)
);

-- Create UserInterventions Table
CREATE TABLE UserInterventions (
    UserInterventionID INT PRIMARY KEY AUTO_INCREMENT,
    UserID INT,
    InterventionID INT,
    DateImplemented DATE,
    Status ENUM('Active', 'Completed', 'Pending'),
    FOREIGN KEY (UserID) REFERENCES Users(UserID),
    FOREIGN KEY (InterventionID) REFERENCES Interventions(InterventionID)
);
