-- highest total revenue and units sold by country

select 
    country,
    sum(units_sold) as total_sales,
    sum(total_revenue) as revenue
from sales
group by country
order by revenue desc
;