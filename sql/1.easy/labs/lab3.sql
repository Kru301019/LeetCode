drop table ProceduresHistory;
CREATE TABLE Owners (
    OwnerID INTEGER PRIMARY key,
    Name VARCHAR(255) not null,
    Surname VARCHAR(255),
    StreetAddress text,
    City VARCHAR(100),
    State char(3),
    StateFull VARCHAR(255),
    ZipCode integer 
);

COPY Owners
FROM '/home/up2166428/Owners.csv'
DELIMITER ',' 
CSV HEADER;

CREATE TABLE Pets (
    PetID VARCHAR(7) PRIMARY key,
    Name VARCHAR(50) not null,
    Type VARCHAR(50),
    Gender VARCHAR(10),
    Age integer,
    OwnerID INTEGER, 
    FOREIGN KEY (OwnerID) REFERENCES Owners(OwnerID) ON DELETE CASCADE
);

COPY Pets
FROM '/home/up2166428/Pets.csv'
DELIMITER ',' 
CSV HEADER;

CREATE TABLE ProceduresDetails (
    Category VARCHAR(50),
    ProcedureNumber INTEGER,
    ProcedureName VARCHAR(50),
    Price INTEGER
);

COPY ProceduresDetails
FROM '/home/up2166428/ProceduresDetails.csv'
DELIMITER ',' 
CSV HEADER;

CREATE TABLE ProceduresHistory (
    PetID VARCHAR(7),
    ProceduresDate Date,
    ProcedureType VARCHAR(50),
    ProcedureSubID INTEGER
   
);

COPY ProceduresHistory
FROM '/home/up2166428/ProceduresHistory.csv'
DELIMITER ',' 
CSV HEADER;

SELECT PetID
FROM ProceduresHistory
where PetID = 'J6-8562';

ALTER TABLE ProceduresHistory
ADD CONSTRAINT procedureshistory_petid_fkey
FOREIGN KEY (PetID) REFERENCES Pets(PetID)
ON DELETE CASCADE;
-- Extract a table of individual costs (procedure prices) incurred by owners of pets from the 
--clinic in question (this table should have owner and procedure price side-by-side)
SELECT
    Owners.Name,
    PD.Price
FROM 
    ProceduresHistory PH
JOIN 
    ProceduresDetails PD on PD.ProcedureNumber = PH.ProcedureSubID and 
    PD.Category = PH.ProcedureType
JOIN pets on pets.PetID = PH.PetID
JOIN Owners on Owners.OwnerID = pets.OwnerID;

--Match up all procedures performed to their descriptions
SELECT 
    DISTINCT 
    PH.ProcedureType, 
    PD.ProcedureName, 
    PD.Price
FROM 
    ProceduresHistory PH
JOIN 
    ProceduresDetails PD on PD.ProcedureNumber = PH.ProcedureSubID and 
    PD.Category = PH.ProcedureType;

--Find out which pets from this clinic had procedures performed
SELECT  ProceduresHistory.PetID, Pets.name
FROM Pets
JOIN ProceduresHistory using (PetID);

--Extract information on pet’s names and owner names side-by-side
SELECT Pets.Name, Owners.Name
FROM Pets
JOIN Owners using (OwnerID);



