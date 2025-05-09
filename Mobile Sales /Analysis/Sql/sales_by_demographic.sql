-- Age group and Gender generating the most sales

select 
    customer_age_group,
    customer_gender,
    sum(units_sold) as total_sales
from sales
group by 
    customer_age_group,
    customer_gender
order by total_sales desc
