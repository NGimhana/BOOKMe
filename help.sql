--insert to route_bus

INSERT INTO `route_bus` (`bus_id`, `route_id`, `departure_time`, `end_time`) VALUES ('1', '1', '03:18:00', '06:23:00');
INSERT INTO `route_bus` (`bus_id`, `route_id`, `departure_time`, `end_time`) VALUES ('2', '1', '03:18:00', '06:23:00');
INSERT INTO `route_bus` (`bus_id`, `route_id`, `departure_time`, `end_time`) VALUES ('3', '1', '03:18:00', '06:23:00');

INSERT INTO `route_bus` (`bus_id`, `route_id`, `departure_time`, `end_time`) VALUES ('4', '2', '03:18:00', '06:23:00');
INSERT INTO `route_bus` (`bus_id`, `route_id`, `departure_time`, `end_time`) VALUES ('5', '2', '03:18:00', '06:23:00');

INSERT INTO `route_bus` (`bus_id`, `route_id`, `departure_time`, `end_time`) VALUES ('6', '3', '03:18:00', '06:23:00');

INSERT INTO `route_bus` (`bus_id`, `route_id`, `departure_time`, `end_time`) VALUES ('7', '4', '03:18:00', '06:23:00');
INSERT INTO `route_bus` (`bus_id`, `route_id`, `departure_time`, `end_time`) VALUES ('8', '4', '03:18:00', '06:23:00');

INSERT INTO `route_bus` (`bus_id`, `route_id`, `departure_time`, `end_time`) VALUES ('9', '5', '03:18:00', '06:23:00');
INSERT INTO `route_bus` (`bus_id`, `route_id`, `departure_time`, `end_time`) VALUES ('10', '5', '03:18:00', '06:23:00');

INSERT INTO `route_bus` (`bus_id`, `route_id`, `departure_time`, `end_time`) VALUES ('11', '6', '03:18:00', '06:23:00');
INSERT INTO `route_bus` (`bus_id`, `route_id`, `departure_time`, `end_time`) VALUES ('12', '6', '03:18:00', '06:23:00');

INSERT INTO `route_bus` (`bus_id`, `route_id`, `departure_time`, `end_time`) VALUES ('13', '7', '03:18:00', '06:23:00');

--query for get
SELECT bus_id, route_id, depature_time, end_time from route_bus where route_id = '$route_id':
