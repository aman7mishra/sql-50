Link - https://leetcode.com/problems/the-number-of-employees-which-report-to-each-employee

select mgr.employee_id , mgr.name, count(emp.reports_to) as reports_count, round(avg(emp.age)) as average_age
from employees mgr
join employees emp on mgr.employee_id=emp.reports_to
group by emp.reports_to
having count(emp.reports_to) >= 1
order by mgr.employee_id