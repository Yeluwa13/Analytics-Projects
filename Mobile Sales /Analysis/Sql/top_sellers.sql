-- Which mobile brands and models are the top sellers overall?
select 
    mobile_brand,
    mobile_model,
    sum(units_sold) as total_sales
from sales
group by mobile_brand, mobile_model
order by total_sales desc
