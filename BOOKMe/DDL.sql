DROP DATABASE Company ;
CREATE DATABASE Company;
USE Company;

CREATE TABLE Customer(
  CustID VARCHAR(6) NOT NULL ,
  NIC VARCHAR (15) NOT NULL  ,
  Name VARCHAR(20) NOT NULL ,
  Tel INT NOT NULL ,
  CONSTRAINT PRIMARY KEY (CustID)
);

CREATE TABLE Town(
  TownID INT NOT NULL,
  Town_description VARCHAR (20) NOT NULL,
  distance NUMERIC(4,2) NOT NULL,
  CONSTRAINT PRIMARY KEY (TownID)
);

CREATE TABLE Route(
  RouteID VARCHAR(6) NOT NULL,
  StartTown INT NOT NULL,
  DestinationTown INT NOT NULL,
  CONSTRAINT PRIMARY KEY(RouteID)
);

CREATE TABLE Bus(
	BusID VARCHAR(6) NOT NULL,
	RouteID VARCHAR(6) NOT NULL,
  DepartureTime DATE NOT NULL,
  WEEKDAY VARCHAR(6) NOT NULL,
  StartStation INT NOT NULL,
  DESTINATION INT NOT NULL,
	CONSTRAINT PRIMARY KEY (BusID),
	CONSTRAINT FOREIGN KEY (RouteID) REFERENCES Route(RouteID)
	ON UPDATE CASCADE ON DELETE CASCADE
);


CREATE TABLE Seat(
  SeatID VARCHAR(6) NOT NULL ,
  BusID VARCHAR (50) ,
  Status VARCHAR(1) NOT NULL,
  CONSTRAINT PRIMARY KEY (SeatID,BusID)
);



CREATE TABLE Operator(
  OperatorID VARCHAR(6) NOT NULL ,
  BusID VARCHAR (6)  NOT NULL,
  Name VARCHAR(20) ,
  CONSTRAINT PRIMARY KEY (OperatorID),
  CONSTRAINT FOREIGN KEY(BusID) REFERENCES Bus(BusID)
  ON UPDATE CASCADE ON DELETE CASCADE
);
  
insert into Town values(1,'Colombo Fort',2.72);
insert into Town values(2,'Kompanna Vidiya',3.78);
insert into Town values(3,'Kollupitiya',5.22);
insert into Town values(4,'Bambalaptiya',7.22);
insert into Town values(5,'Wellawatte',9.32);
insert into Town values(6,'Dehiwela',12.02);
insert into Town values(7,'Mount Levinia',14.22);
insert into Town values(8,'Ratmalana',16.02);
insert into Town values(9,'Angulana',17.96);
insert into Town values(10,'Lunawa',19.38);
insert into Town values(11,'Moratuwa',20.92);

insert into Route values('R1',1,4);
insert into Route values('R2',4,8);
insert into Route values('R3',9,11);

insert into Bus values('B1','R1',NOW(),'Sun',1,3);
insert into Bus values('B2','R1',NOW(),'Sun',1,4);
insert into Bus values('B3','R1',NOW(),'Sun',3,4);


SELECT * FROM Bus Where RouteID=(SELECT RouteID from Route where StartTown <= 2
 and DestinationTown >= 2 UNION SELECT RouteID FROM Route WHERE StartTown <= 3 and DestinationTown >= 3);