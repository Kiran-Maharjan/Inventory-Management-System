create procedure Supplier_Insert
@Name varchar(50),
@Email varchar(50),
@Contact varchar(50),
@Address varchar(50),
@Latitude varchar(50),
@Longitude varchar(50),
@Status bit
as
Insert into Suppliers(Name,Email,Contact,Address,Latitude,Longtitude,Status)
VALUES(@Name,@Email,@Contact,@Address,@Latitude,@Longitude,@Status);