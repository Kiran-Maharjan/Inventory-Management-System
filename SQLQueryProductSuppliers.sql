alter proc ProductSuppliers
as
select p.*,s.Name as SupplierName from products p
join Suppliers s on s.Id=p.SupplierId