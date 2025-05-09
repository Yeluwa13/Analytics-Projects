-- How do sales numbers vary by storage size, color, or operating system (Android vs. iOS)?

select 
    storage_size,
    color,
    operating_system,
    sum(units_sold) as total_sales
from sales
group by 
    storage_size,
    color,
    operating_system
order by total_sales desc
