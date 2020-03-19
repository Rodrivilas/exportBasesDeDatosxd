#1
Select name
from ingredients
inner join vendors on vendors.companyname='Veggies_R_Us' && ingredients.vendorid=vendors.vendorid;

#2
Select name
from ingredients
inner join vendors on (vendors.companyname='Veggies_R_Us' || vendors.companyname='Spring Water Supply') && ingredients.vendorid=vendors.vendorid;

select name from ingredients where vendorid = (select vendorid from vendors where companyname ='Veggies_R_US') or vendorid = (select vendorid from vendors where companyname ='Spring Water Supply');

#3
select avg (unitprice) 
from ingredients
where vendorid = (select vendorid from vendors where companyname ='Veggies_R_US');

#4
use restaurant;
select name, inventory from ingredients
where inventory<(select avg(inventory) from ingredients);

#5
select companyname from vendors
where vendorid =(select vendorid from vendors where companyname ='Veggies_R_US')
and vendorid in(
select vendors.vendorid from vendors
inner join ingredients on
vendors.vendorid = ingredients.vendorid
and vendors.foodgroup = 'Milk');