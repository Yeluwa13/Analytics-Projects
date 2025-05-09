-- This query analyzes the differences in ride durations between casual riders and members.
-- It calculates the average, minimum, maximum, and standard deviation of ride durations
-- and includes a comparison metric to highlight the differences between user types.

select
    member_casual,
    round(avg(ride_length_sec), 2) as avg_ride_length,
    round(min(ride_length_sec), 2) as min_ride_length,
    round(max(ride_length_sec), 2) as max_ride_length,
    round(stddev(ride_length_sec), 2) as stddev_ride_length
from bike_share
where ride_length_sec > 0 and ride_length_sec is not null -- Exclude rides with invalid durations (negative or null values)
group by member_casual
order by avg_ride_length desc
;
 