-- How do sales and revenues break down across different sales channels (online, partner, in-store) and payment types?

select 
    sales_channel,
    payment_type,
    sum(units_sold) as total_sales,
    sum(total_revenue) as revenue
from sales
group by 
    sales_channel, 
    payment_type
order by total_sales desc;