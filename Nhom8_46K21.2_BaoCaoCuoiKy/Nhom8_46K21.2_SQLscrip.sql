create proc UpdateDimProduct @ProductID int, 
							@ProductType varchar(50), 
							@Product varchar(50), 
							@Type varchar(50)
as
begin
	Update Dim_Product
	set [Product Type] = @ProductType, Product = @Product, [Type] = @Type
	where ProductId = @ProductID
end
go

create proc UpdateDimMarket @Areacode int, 
							@State varchar(50), 
							@Market varchar(50), 
							@MarketSize varchar(50)
as
begin
	Update Dim_Market
	set [State] = @State, Market = @Market, [Market Size] = @MarketSize
	where [Area code] = @Areacode
end
alter table Fact_Table add
constraint FK_F_P foreign key (ProductId) references Dim_Product (ProductId)
alter table Fact_Table add
constraint FK_F_T foreign key (DateID) references [Dim-Time](DateID)
alter table Fact_Table add
constraint FK_F_M foreign key ([Area Code]) references Dim_Market([Area code])