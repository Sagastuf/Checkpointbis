use Gestion_de_flotte
select * from Tableau_des_voyages
alter table Tableau_des_voyages;
exec sp_rename 'Tableau_des_voyages', 'Trips' 
select * from vehicules
select * from Driver
insert into Driver (DriverID,FirstName,LastName,Address,LicenseNumber,Phone,City,Statut,ZipCode)
values (2,'Sarah','Connor','456 Elm St','D7654321',0987654321,'Otherville','NY',54321);
select * from Trips;
insert into Trips (VehicleID,DriverID,StartDate,EndDate,StartLocation,EndLocation,Distance)
values (2,1,'2024-07-01','2024-07-02','Los Angeles','San Francisco','380')
insert into Trips (VehicleID,DriverID,StartDate,EndDate,StartLocation,EndLocation,Distance)
values (1,1,'2024-07-01','2024-07-02','Los Angeles','San Francisco','380')
Delete from Trips where VehicleID=2
insert into Trips (VehicleID,DriverID,StartDate,EndDate,StartLocation,EndLocation,Distance)
values (2,2,'2024-07-03','2024-07-04','New York','Washington D.C.','255')
select * from maintenance
insert into Maintenance (VehicleID,MaintenanceDate,Descriptions,Coût)
values (1,'2024-06-15','Oil change','50.00')
insert into Maintenance (VehicleID,MaintenanceDate,Descriptions,Coût)
values (2,'2024-06-20','Tire replacement','300.00')

--Update the cost of the second maintenance record to 350.00.
select * from Maintenance
UPDATE Maintenance
SET Coût = '350.00'
WHERE VehicleID= 2;

--Delete the first vehicle from the Vehicles table.
select * from vehicules
delete from vehicules where LicensePlate='ABC123'

--Insert one more record into the Trips table with the following details:
VehicleID: 2
DriverID: 1
StartDate: '2024-07-05'
EndDate: '2024-07-06'
StartLocation: "Boston"
EndLocation: "Philadelphia"
Distance: 300

select * from Trips
insert into Trips (VehicleID,DriverID,StartDate,EndDate,StartLocation,EndLocation,Distance)
values (2,1,'2024-07-05','2024-07-06','Boston','Philadelphial','300')
alter table trips
drop constraint PK__Tableau___476B54B251D97F56;
alter table trips
add foreign Key (VehicleID) references Maintenance(VehicleID)
delete from trips where EndLocation='Philadelphia'
UPDATE trips
SET EndLocation ='Philadelphia'
WHERE StartLocation='Boston'
select * from trips
--Update the color of the second vehicle in the Vehicles table to "Red".
UPDATE vehicules
SET color ='Red'
WHERE years=2018
select * from vehicules
--Insert a new maintenance record into the Maintenance table with the following details:
VehicleID: 1
MaintenanceDate: '2024-07-10'
Description: "Brake inspection"

insert into Maintenance(VehicleID,MaintenanceDate,Descriptions)
values (1,'2024-07-10','Brake inspection')
alter table Maintenance
drop constraint PK__Tableau___476B54B290373807
alter table vehicules
Alter column VehicleID int not null

alter table vehicules
drop constraint TG
UPDATE vehicules
SET VehicleID=2
WHERE years=2018
select * from vehicules
ALTER TABLE vehicules
ADD CONSTRAINT PK_vehicules PRIMARY KEY (VehicleID)
Select *from Maintenance



alter table Maintenance
ADD maintenanceid int
alter table Maintenance
select * from Maintenance

insert into Maintenance(maintenanceid)
values(1)
ADD CONSTRAINT MDIR foreign Key (VehicleID) references vehicules (VehicleID)
update Maintenance
set maintenanceid=2
where VehicleID=2
alter table Maintenance
alter column maintenanceid int not null
alter table Maintenance
ADD CONSTRAINT PT_Maintenance PRIMARY KEY (maintenanceid)
alter table Maintenance
ADD CONSTRAINT const_e foreign Key (VehicleID) references vehicules (VehicleID)
Select * from Driver
update Driver
set Phone=222333444
where DriverID=1
select * from Trips
delete Trips
where TripID = 2
alter table Trips
add TripID int
update Trips
set tripID=1
where VehicleID=1

update Trips
set tripID=2
where DriverID=2

update Trips
set tripID=3
where StartLocation='Boston'
alter table Trips
add constraint TR_TRIPS PRIMARY KEY (TripID)
--Delete the trip with TripID = 2 from the Trips table.
delete Trips
where TripID = 2
select * from Trips