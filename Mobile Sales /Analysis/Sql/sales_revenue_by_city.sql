-- highest total revenue and units sold by city

select 
    city,
	sum(units_sold) as total_sales,
    sum(total_revenue) as revenue
from sales
group by city
order by revenue desc;