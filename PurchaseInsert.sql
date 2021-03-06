create proc Purchase_Insert
@ProductId int,
@Quantity int,
@Price int
as
begin
insert into Purchases(ProductId,Quantity,Price)
values(@ProductId,@Quantity,@Price);

update Products set Quantity=Quantity+@Quantity,
Price=@Price+(((@Price)*Margin)/100)
where id=@ProductId;

end