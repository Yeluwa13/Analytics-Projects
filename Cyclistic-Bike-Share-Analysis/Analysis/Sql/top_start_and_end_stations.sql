-- Most popular start and end stations for casual riders. (To find the hotspots for target marketing)

-- Find the top 10 most popular start stations for casual riders
select start_station_name,
	count(*) as start_station_count
from bike_share
where member_casual = 'casual'
  and start_station_name is not null -- Exclude null station names
group by start_station_name
order by start_station_count desc
limit 10
;

-- Find the top 10 most popular end stations for casual riders
select end_station_name,
	count(*) as end_station_count
from bike_share
where member_casual = 'casual'
  and end_station_name is not null -- Exclude null station names
group by end_station_name
order by end_station_count desc
limit 10;
 