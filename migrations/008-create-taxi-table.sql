create TABLE taxi_driver(
    id integer primary key AUTOINCREMENT,
    drives_name text,
    contact_no integer,
    taxi_id integer
);

create table taxi(
    id integer primary key AUTOINCREMENT,
    taxi_name text

);
create TABLE route(
    id integer primary key AUTOINCREMENT,
    route_name text
);

create table trips(
id integer primary key AUTOINCREMENT,
    route_id integer,
    taxi_id integer,
    driver_id integer,
    FOREIGN KEY (route_id) REFERENCES route(id),
    FOREIGN KEY (taxi_id) REFERENCES taxi(id),
    FOREIGN KEY (driver_id) REFERENCES driver(id)
);



