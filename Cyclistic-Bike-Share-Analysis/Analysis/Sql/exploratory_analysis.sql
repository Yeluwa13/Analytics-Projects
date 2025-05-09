select
    user_type,
    count(*) as ride_count,
    avg(duration) as avg_duration
from bike_share_data
group by user_type;
 