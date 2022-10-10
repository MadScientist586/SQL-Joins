-- joins: select all the computers from the products table:
-- using the products table and the categories table, return the product name and the category name */
select *
from products p
inner join categories c
on p.Categoryid = c.categoryid
where c.categoryid = 1;

/* joins: find all product names, product prices, and products ratings that have a rating of 5 */
 select Name, Price, Rating
 from products p
 inner join reviews r
 on p.productid = r.productid
 where r.rating = 5;
/* joins: find the employee with the most total quantity sold.  use the sum() function and group by */
select e.firstname, e.lastname, sum(s.quantity) as total 
from sales s
inner join employees e on e.employeeid = s.employeeid
group by e.employeeid
order by total desc
limit 2;


/* joins: find the name of the department, and the name of the category for Appliances and Games */
select d.name 'Department Name', c.name 'Category Name'
 from departments d
 inner join categories c
 on c.departmentid = d.departmentid
 where c.name = 'Appliances' or c.name = 'Games';
/* joins: find the product name, total # sold, and total price sold,
 for Eagles: Hotel California --You may need to use SUM() */
select p.name, sum(s.quantity) 'total sold', sum(s.quantity * s.priceperunit) 'total price'
from products p
inner join sales s
on s.productid = p.productid
where p.productid = 97;

/* joins: find Product name, reviewer name, rating, and comment on the Visio TV. (only return for the lowest rating!) */
select p.name, r. reviewer, r.rating, r.comment
from products p
inner join reviews r
on r.productid = p.productid
where p.productid = 857 and r.rating = 1;


