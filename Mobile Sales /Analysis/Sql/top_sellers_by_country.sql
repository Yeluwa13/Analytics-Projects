-- Top selling mobile brands and models in specific countries

select 
    mobile_brand,
    mobile_model,
    country,
    sum(units_sold) as total_sales
from sales
where country = 'india' -- or any other country
group by mobile_brand, mobile_model
order by total_sales desc
