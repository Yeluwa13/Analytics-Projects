-- Top 3 Mobile brands and models by Age Group
with brand_sales as (
    select 
        customer_age_group,
        mobile_brand,
        mobile_model,
        sum(units_sold) as purchases
    from sales
    group by 
        customer_age_group, 
        mobile_brand, 
        mobile_model
),
ranked_brands as (
    select 
        customer_age_group,
        mobile_brand,
        mobile_model,
        purchases,
        row_number() over (
            partition by customer_age_group 
            order by purchases desc
        ) as ranking
    from brand_sales
)
select 
    customer_age_group,
    mobile_brand,
    mobile_model,
    purchases
from ranked_brands
where ranking <= 3
order by 
    customer_age_group, 
    ranking;