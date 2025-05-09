-- analyze the times of day casual riders take trips (morning, afternoon, evening, or night) for targeted marketing
select 
	-- categorize the time of day based on the hour of the trip start
	case
		when hour(started_at_clean) between 5 and 11 then 'morning'
		when hour(started_at_clean) between 12 and 16 then 'afternoon'
		when hour(started_at_clean) between 17 and 20 then 'evening'
		else 'night'
	end as time_of_day,
	-- count the total number of rides for each time of day
	count(*) as total_rides
from 
	bike_share
where 
	-- filter for casual riders only
	member_casual = 'casual'
group by 
	time_of_day
order by 
	-- sort the results by total rides in descending order
	total_rides desc;
 