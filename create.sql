CREATE TABLE Caregivers (
    CUsername varchar(255),
    Salt BINARY(16),
    Hash BINARY(16),
    PRIMARY KEY (CUsername)
);

CREATE TABLE Availabilities (
    Time date,
    CUsername varchar(255) REFERENCES Caregivers,
    PRIMARY KEY (Time, CUsername)
);

CREATE TABLE Vaccines (
    Name varchar(255),
    Doses int,
    PRIMARY KEY (Name)
);
CREATE TABLE Patients (
    PUsername varchar(255),
    Salt BINARY(16),
    Hash BINARY(16),
    PRIMARY KEY (PUsername)
);
Create table Appointments(
AppointmentID int IDENTITY(1,1),
CUsername VARCHAR(255) references [dbo].[Caregivers],
PUsername VARCHAR(255) references [dbo].[Patients],
name VARCHAR(255) references [dbo].[Vaccines],
date time, 
Primary Key(AppointmentID)
); 