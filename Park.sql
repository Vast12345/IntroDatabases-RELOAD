create table entity(
    id_entity int primary key,
    nom_entity varchar(25) not null
);

create table Department(
    id_department int primary key,
    nom_department varchar(20),
    id_entity int not null,
    Foreign Key (id_entity) REFERENCES entity(id_entity)
);

create table Park(
    id_park int primary key,
    nom_park varchar(25) not null,
    fechaCrea_park date not null
);

create table department_park(
    id_department int not null,
    id_park int not null,
    PRIMARY KEY(id_department, id_park),
    Foreign Key (id_department) REFERENCES Department(id_department),
    Foreign Key (id_park) REFERENCES Park(id_park)
);

create table AreaPark(
    id_area int primary key,
    nom_area varchar(20) not null,
    size_area double not null,
    id_park int not null,
    Foreign Key (id_park) REFERENCES Park(id_park)
);

create table Species(
    id_species int primary key,
    nomSci_species varchar(25) not null,
    nomVul_species varchar(25) not null,
    tipo_species VARCHAR(20) not null,
    id_area int not null,
    Foreign Key (id_area) REFERENCES AreaPark(id_area)
);

create table Worker(
    id_worker int primary key,
    nom_worker varchar(25) not null,
    address_worker varchar(30) not null,
    direccion_worker varchar(30) not null,
    salary double not null,
    id_park int not null,
    Foreign Key (id_park) REFERENCES Park(id_park)
);

create table telephones(
    id_telephone int primary key,
    numFigo int not null,
    numMovil int not null,
    id_worker int not null,
    Foreign Key (id_worker) REFERENCES Worker(id_worker)
);

create table Entrance(
    id_ent int primary key,
    nom_ent varchar(25) not null,
    ubicacion_ent varchar(20) not null,
    id_park int not null,
    Foreign Key (id_park) REFERENCES Park(id_park)
);

create table managPersonnel(
    id_manag int primary key,
    entradaParque varchar(45) not null,
    id_worker int not null,
    id_area int not null,
    Foreign Key (id_worker) REFERENCES Worker(id_worker),
    Foreign Key (id_area) REFERENCES AreaPark(id_area)
);

insert into entity values 
(1, "parkCompany"),
(2, "proCompany"),
(3, "CompanyPark"),
(4, "ThatCompany"),
(5, "MaybeEvenAnotherCompany");

insert into `Department` VALUES
(1, "parkDepartment", 2),
(2, "DepartmentofParks", 1),
(3, "PerhapsaDepartment", 5),
(4, "ThatDepartment", 3),
(5, "TheOneandOnlyDepart", 1);

insert into Park VALUES
(1, "CentralPark", "2008-11-11"),
(2, "ParkofColombia", "2008-11-09"),
(3, "JustaPark", "2008-10-29"),
(4, "MaybeaPark", "2022-04-22"),
(5, "ParquedelCielo", "2024-12-04");

insert into department_park VALUES
(1, 2),
(3, 1),
(4, 1),
(5, 3),
(3, 4);

insert into `AreaPark` VALUES
(1, 'Central Meadow', 1500.25, 1),
(2, 'Woodland Trail', 2800.75, 2),
(3, 'Lakeview Grove', 2100.50, 3),
(4, 'Wildflower Field', 3200.00, 4),
(5, 'Riverside Picnic', 1800.30, 5);

insert into Species VALUES
(1, 'Bulbasaur', 'Fushigidane', 'plant', 1),
(2, 'Charmander', 'Hitokage', 'animal', 2),
(3, 'Squirtle', 'Zenigame', 'animal', 3),
(4, 'Geodude', 'Ishitsubute', 'mineral', 4),
(5, 'Oddish', 'Nazonokusa', 'plant', 5);

insert into Worker VALUES
(1, 'Lorenzo Lopez', '123 Elm Street', 'Springfield', 35000.00, 1),
(2, 'Daniel Postobon', '456 Oak Avenue', 'Riverside', 40000.00, 2),
(3, 'Camilo TheGuy', '789 Maple Road', 'Greenville', 42000.00, 3),
(4, 'HaHaHader TheFellow', '101 Pine Lane', 'Lakeview', 38000.00, 4),
(5, 'Carlos ElCafe', '234 Cedar Drive', 'Hillside', 37000.00, 5);

insert into telephones VALUES
(1, 123456789, 987654321, 1),
(2, 234567890, 876543219, 2),
(3, 345678901, 765432198, 3),
(4, 456789012, 654321987, 4),
(5, 567890123, 543219876, 5);

insert into Entrance VALUES
(1, 'Main Entrance', 'Front Gate', 1),
(2, 'South Entrance', 'Side Gate', 2),
(3, 'West Entrance', 'Back Gate', 3),
(4, 'East Entrance', 'Side Gate', 4),
(5, 'North Entrance', 'Side Gate', 5);

insert into `managPersonnel` VALUES
(1, 'Main Office', 1, 1),
(2, 'Administration Building', 2, 2),
(3, 'Visitor Center', 3, 3),
(4, 'Maintenance Shed', 4, 4),
(5, 'Information Kiosk', 5, 5);