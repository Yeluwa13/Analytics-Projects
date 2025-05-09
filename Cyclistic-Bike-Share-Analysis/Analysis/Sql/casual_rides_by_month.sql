-- What time of year do we have more casual rides taken
-- identify the months with the highest number of casual rides
select 
    lower(monthname(started_at_clean)) as ride_month, -- extract the month name from the ride start date and convert to lowercase
    count(*) as total_rides -- count the total number of rides for each month
from bike_share
where member_casual = 'casual' -- filter for casual riders only
group by ride_month -- group by the month name
order by 
    field(ride_month, 'january', 'february', 'march', 'april', 'may', 'june', 'july', 'august', 'september', 'october', 'november', 'december'), -- ensure months are ordered chronologically
    total_rides desc; -- sort by total rides in descending order
 