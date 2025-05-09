-- Price range preference by customers
with price_range_table as (
	select
		customer_age_group,
		case
			when price < 600 then 'budget (<$600)'
			when price between 600 and 1199 then 'mid-range ($600–$1199)'
			when price >= 1200 then 'premium (≥$1200)'
		end as price_range,
		count(*) as total_customers
	from sales
	group by customer_age_group, price_range
),
ranked_price_range as (
	select
		customer_age_group,
		price_range,
		total_customers,
		row_number() over (
			partition by customer_age_group 
			order by total_customers desc
		) as ranking
	from price_range_table
)
select
	customer_age_group,
	price_range,
	total_customers
from ranked_price_range
where ranking = 1
order by customer_age_group;
    