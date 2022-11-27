/****
select * from [Order Details]
select * from dbo.Orders
select * from dbo.Customers

select * from [Order Details]
inner join dbo.Orders
on [Order Details].OrderID = dbo.Orders.OrderID

select * from [Order Details] Tbl1
inner join dbo.Orders Tbl2
on Tbl1.OrderID = Tbl2.OrderID

inner join dbo.Customers Tbl3
on Tbl3.CustomerID = Tbl2.CustomerID
****/

/* 1 */
select p.ProductID,p.ProductName, c.CategoryID,c.CategoryName from Categories c
inner join Products p
on c.CategoryID = p.CategoryID

/* 2 */
select p.ProductID,p.ProductName, c.CategoryName from Categories c
inner join Products p
on c.CategoryID = p.CategoryID
where p.ProductID > 100

/* 3 */
select p.ProductName,s.CompanyName from Products p
inner join Suppliers s
on p.SupplierID = s.SupplierID

/* 4 */
select p.ProductName,s.CompanyName,s.Country from Products p
inner join Suppliers s
on p.SupplierID = s.SupplierID
where s.Country = 'usa'

/* 5 */
select p.ProductName,s.CompanyName,s.Country from Products p
inner join Suppliers s
on p.SupplierID = s.SupplierID
where s.Country != 'Germany'

/* 6 */
select s.CompanyName,s.HomePage from Suppliers s
where s.HomePage is not NULL

/* 7 */
select p.ProductName,s.CompanyName,s.HomePage from Suppliers s
inner join Products p 
on p.SupplierID = s.SupplierID
where s.HomePage is not NULL  

/* 8 */
select o.OrderID,o.OrderDate from Orders o
where o.OrderID = 10408

/* 9-10 */
select o.OrderID,p.ProductName,s.CompanyName from Orders o
inner join [Order Details] od
on o.OrderID = od.OrderID
inner join Products p 
on p.ProductID = od.ProductID
inner join Suppliers s
on s.SupplierID = p.SupplierID
where o.OrderID = 10408
