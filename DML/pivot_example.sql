select product, year,
    sum(case when quarter='Q1' then sales else 0 end) as Q1,
    sum(case when quarter='Q2' then sales else 0 end) as Q2,
    sum(case when quarter='Q3' then sales else 0 end) as Q3,
    sum(case when quarter='Q4' then sales else 0 end) as Q4
from sales group by product, year;