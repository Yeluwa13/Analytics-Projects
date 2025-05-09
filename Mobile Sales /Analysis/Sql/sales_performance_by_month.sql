-- % change in Sales performance by month

with monthly_sales as (
    select
        monthname(str_to_date(transaction_date, '%d/%m/%y')) as transaction_month,
        sum(units_sold) as current_month_sales,
        month(str_to_date(transaction_date, '%d/%m/%y')) as month_order
    from sales
    group by month_order
),
lagged_sales as (
    select
        transaction_month,
        current_month_sales,
        lag(current_month_sales) over (
            order by month_order
        ) as previous_month_sales
    from monthly_sales
)
select
    transaction_month,
    current_month_sales,
    previous_month_sales,
    case 
        when previous_month_sales = 0 
        then null
        else round((current_month_sales - previous_month_sales) / previous_month_sales * 100, 2)
    end as percentage_change
from lagged_sales
order by month_order;

