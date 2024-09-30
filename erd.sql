+---------------+         +------------------+
|    Users      | 1     n |   HealthRecords  |
|---------------|---------|------------------|
| UserID (PK)   |         | RecordID (PK)    |
| Name           |         | UserID (FK)      |
| Age            |         | Date             |
| Gender         |         | Height           |
| Income         |         | Weight           |
| EducationLevel |         | BMI              |
| Address        |         | PhysicalActivity  |
+---------------+         +------------------+
                                |
                                | n
                                |
                                |
                         +----------------+
                         |  UserInterventions  |
                         |---------------------|
                         | UserInterventionID (PK)|
                         | UserID (FK)        |
                         | InterventionID (FK)|
                         | DateImplemented     |
                         | Status              |
                         +--------------------+
                                |
                                | n
                                |
                                |
                         +----------------+
                         |   Interventions  |
                         |-----------------|
                         | InterventionID (PK)|
                         | InterventionName     |
                         | Description           |
                         | TargetDemographic     |
                         +----------------------+
