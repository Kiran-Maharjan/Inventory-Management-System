USE [Inventory Management System]
GO
/****** Object:  StoredProcedure [dbo].[ProductSuppliers]    Script Date: 23-Apr-18 8:42:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER proc [dbo].[ProductSuppliers]
@SupplierId int,
@sql nvarchar(max)
as
begin
set @sql='select p.*,s.Name as SupplierName from products p
join Suppliers s on s.Id=p.SupplierId'

if(@SupplierId is not NULL)
	begin
		set @sql=@sql+' WHERE p.SupplierId='+cast(@SupplierId as nvarchar(50))
	end
exec sp_executesql @sql 
end