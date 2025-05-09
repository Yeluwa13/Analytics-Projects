-- What are the most popular days of the week for casual riders vs. members?
-- query to analyze the number of rides by day of the week and membership type
select 
    day_of_week,
	member_casual,
	count(*) as num_of_rides
from bike_share
group by day_of_week, member_casual
order by day_of_week, member_casual
;

-- separate query to analyze casual riders' behavior by day of the week
select 
    day_of_week, 
	count(*) as num_of_rides_casual
from bike_share
where member_casual = 'casual'
group by day_of_week
order by num_of_rides_casual desc;
 