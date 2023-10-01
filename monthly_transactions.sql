-- Link - https://leetcode.com/problems/monthly-transactions-i

select CONCAT(YEAR(trans_date),
    case when MONTH(trans_date) <10 then "-0" else "-" end , MONTH(trans_date)) as month, 
    country,
    count(amount) as trans_count,
    sum(case when state='approved' then 1 else 0 end) as approved_count,
    sum(amount) as trans_total_amount,
    sum(case when state='approved' then amount else 0 end)as approved_total_amount
from transactions
group by month, country