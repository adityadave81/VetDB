USE veterans;

CREATE TABLE VETSTUDENTS(
	StudentID	INT NOT NULL AUTO_INCREMENT,
    FirstName	VARCHAR(50) NOT NULL,
    LastName	VARCHAR(50)	NOT NULL,
    Address		VARCHAR(100),
    Phone		VARCHAR(20),
    University	VARCHAR(50),
    Email		VARCHAR(50),
    VetID		INT,
    PRIMARY KEY (StudentID),
    CONSTRAINT VET_FK	FOREIGN KEY(VetID) REFERENCES VETDATABASE(VetID) 
	);
    
    CREATE TABLE VETDATABASE(
	VetID	INT NOT NULL AUTO_INCREMENT,
    VetName	VARCHAR(50) NOT NULL,
    ServingYear INT	NOT NULL,
    ServingLocation		VARCHAR(100),
    Address	VARCHAR(100),
    Phone		VARCHAR(20),
    Email		VARCHAR(50),
    PRIMARY KEY (VetID)
	);
    
    CREATE TABLE VETSCHEDULE(
	StudentID INT,
	VetID	INT,
    Position VARCHAR(50),
    StartDate datetime,
    HoursWorked	INT,
    MaxHours	INT,
    CoordID	INT,
    CONSTRAINT Stud_FK FOREIGN KEY(StudentID) REFERENCES VETSTUDENTS(StudentID),
    CONSTRAINT Vet_FK2 FOREIGN KEY(VetID) REFERENCES VETDATABASE(VetID)
    );
    
    CREATE TABLE UNIVERSITYDATABASE(
	CoordID	INT NOT NULL AUTO_INCREMENT,
    CoName	VARCHAR(50),
    VetsEmployed	INT,
    University	VARCHAR(50),
    CoEmail	VARCHAR(50),
    CoPhone VARCHAR(20),
    PRIMARY KEY (CoordID)
	);
