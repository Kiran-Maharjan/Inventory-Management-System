select p.*,s.Name as SupplierName from Products p
join Suppliers s on s.Id=p.SupplierId