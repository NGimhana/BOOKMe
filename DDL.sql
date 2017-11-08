DROP DATABASE Company ;
CREATE DATABASE Company;
USE Company;

CREATE TABLE Customer(
  CustID VARCHAR(6) NOT NULL ,
  UserName VARCHAR(10) NOT NULL,
  NIC VARCHAR (15) NOT NULL  ,
  Name VARCHAR(20) NOT NULL ,
  Tel INT NOT NULL ,
  Password VARCHAR(10) NOT NULL,
  CONSTRAINT PRIMARY KEY (CustID)
);

CREATE TABLE Town(
  TownID INT NOT NULL,
  Town_description VARCHAR (20) NOT NULL,
  distance NUMERIC(4,2) NOT NULL,
  CONSTRAINT PRIMARY KEY (TownID)
);

CREATE TABLE st_route(
  r_id INT NOT NULL,
  des VARCHAR (200) NOT NULL,
  CONSTRAINT PRIMARY KEY(r_id)
);

CREATE TABLE Bus(
	BusID VARCHAR(6) NOT NULL,
	r_id INT NOT NULL,
  DepartureTime DATE NOT NULL,
  WEEKDAY VARCHAR(6) NOT NULL,
  StartStation INT NOT NULL,
  DESTINATION INT NOT NULL,
	CONSTRAINT PRIMARY KEY (BusID),
	CONSTRAINT FOREIGN KEY (r_id) REFERENCES st_route(r_id)
	ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE Seat(
  SeatID VARCHAR(6) NOT NULL ,
  BusID VARCHAR (50) ,
  State INT NOT NULL,
  CONSTRAINT PRIMARY KEY (SeatID,BusID)
);

CREATE TABLE Station(
  s_id VARCHAR(6) NOT NULL,
  s_name VARCHAR(20) NOT NULL,
  route_list VARCHAR (200) NOT NULL,
  CONSTRAINT PRIMARY KEY(s_id)
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
insert into Bus values('B4','R2',NOW(),'Sun',4,6);

INSERT INTO Station VALUES (1, 'kadawatha', '1K3K5K9K4K6K8');
INSERT INTO Station VALUES (2, 'mahara', '2K5K4K6K8'),;
INSERT INTO Station VALUES (3, 'pettah', '1K4');
INSERT INTO Station VALUES (4, 'dehiwala', '9K20K7');

