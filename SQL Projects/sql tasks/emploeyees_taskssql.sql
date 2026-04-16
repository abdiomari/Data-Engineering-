--find the second highest earner

select * from employees e;

  select 
 		*
        from (
		 select
		 	dense_rank() over(order by salary desc) as highest_earner,
		 	employee_id,
		 	concat (e.first_name,' ', e.last_name) as Name,
		 	salary
		 from employees e) ranked
        where ranked.highest_earner = 2;
		 
 
 -- top 3 highest paid employees
  select 
 		first_name,
        Salary,
        department,
        rank
        from (
 select
       first_name,
        Salary,
        department,
        dense_rank() over (order by salary desc ) as rank
    from
        employees ) ranked
        where rank <= 3
        order by department, rank;

 
-- rank employees by salary in each department 
 select 
 		first_name,
        Salary,
        department,
        rank
        from (
  select
       first_name,
        Salary,
        department,
        dense_rank() over (partition by department order by salary desc ) as rank
    from
        employees ) ranked
        where rank <= 3
        order by department, rank;
 
-- find employees whose salary is above department average
 
select
	first_name,
	last_name, 
	salary,
	department, 
	department_avg
from (
select 
first_name,
last_name, 
salary,
department, 
AVG(Salary) over(partition by department) as department_avg
from employees
) Above_Avg
where Salary > department_avg;




 -- find emplyees earning more than company average

select
	first_name,
	last_name, 
	salary,
	department, 
	department_avg
from (
select 
first_name,
last_name, 
salary,
department, 
AVG(Salary) over() as department_avg
from employees
) Above_Avg
where Salary > department_avg;


 
 --detect salary outliers 


 
select
	first_name,
	last_name, 
	salary,
	department, 
	department_avg,
	dense_rank() over(partition by department order by salary desc ) as rank_dept
from (
select
	first_name,
	last_name, 
	salary,
	department, 
	AVG(Salary) over() as department_avg
from employees e 
) t
where salary > department_avg * 1.5
order by department, salary desc;












