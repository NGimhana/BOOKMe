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



CREATE TABLE route_bus (
  bus_id int(6) NOT NULL,
  route_id int(11) NOT NULL,
  departure_time time NOT NULL,
  end_time time NOT NULL,
  CONSTRAINT PRIMARY KEY(bus_id)
);

CREATE TABLE route_no (
  route_id int(11) NOT NULL,
  route_no varchar(30) NOT NULL,
  start_st int(11) NOT NULL,
  end_st int(11) NOT NULL,
  CONSTRAINT PRIMARY KEY(route_id)
);

CREATE TABLE Seat(
  seat_id VARCHAR(6) NOT NULL ,
  bus_id VARCHAR (50) ,
  Status INT NOT NULL,
  CONSTRAINT PRIMARY KEY (seat_id,bus_id)
);

CREATE TABLE Station(
  s_id VARCHAR(6) NOT NULL,
  s_name VARCHAR(20) NOT NULL,
  route_list VARCHAR (200) NOT NULL,
  CONSTRAINT PRIMARY KEY(s_id)
);

CREATE TABLE Operator(
  operator_id VARCHAR(6) NOT NULL ,
  bus_id VARCHAR (6)  NOT NULL,
  name VARCHAR(20) NOT NULL ,
  CONSTRAINT PRIMARY KEY (operator_id),
  CONSTRAINT FOREIGN KEY(bus_id) REFERENCES route_bus(bus_id)
  ON UPDATE CASCADE ON DELETE CASCADE
);
  


INSERT INTO route_bus  VALUES (1, 1, '03:18:00', '06:23:00');
INSERT INTO route_bus  VALUES (2, 1, '03:18:00', '06:23:00');
INSERT INTO route_bus  VALUES(3, 1, '03:18:00', '06:23:00');
INSERT INTO route_bus  VALUES(4, 2, '03:18:00', '06:23:00');
INSERT INTO route_bus  VALUES(5, 2, '03:18:00', '06:23:00');
INSERT INTO route_bus  VALUES(6, 3, '03:18:00', '06:23:00');
INSERT INTO route_bus  VALUES(7, 4, '03:18:00', '06:23:00');
INSERT INTO route_bus  VALUES(8, 4, '03:18:00', '06:23:00');
INSERT INTO route_bus  VALUES(9, 5, '03:18:00', '06:23:00');
INSERT INTO route_bus  VALUES(10, 5, '03:18:00', '06:23:00');
INSERT INTO route_bus  VALUES(11, 6, '03:18:00', '06:23:00');
INSERT INTO route_bus  VALUES(12, 6, '03:18:00', '06:23:00');
INSERT INTO route_bus  VALUES(13, 7, '03:18:00', '06:23:00');
INSERT INTO route_bus  VALUES(14, 8, '00:00:00', '00:00:00');
INSERT INTO route_bus  VALUES(15, 8, '00:00:00', '00:00:00');

INSERT INTO station VALUES (1, 'kadawatha', '1K3K5K9K4K6K8');
INSERT INTO station VALUES (2, 'mahara', '2K5K4K6K8');
INSERT INTO station VALUES (3, 'pettah', '1K4');
INSERT INTO station VALUES (4, 'dehiwala', '9K20K7');


