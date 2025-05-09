-- Top selling mobile brands and models in specific cities

select 
    mobile_brand,
    mobile_model,
    city,
    sum(units_sold) as total_sales
from sales
where city = 'istanbul' -- or any other city
group by mobile_brand, mobile_model
order by total_sales desc;
