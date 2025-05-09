-- This SQL query retrieves the average ride duration and total number of rides for each user type from the bike share data.
select 
	ride_length, 
	count(*)
from bike_share
group by ride_length
order by ride_length;

-- Identify invalid ride_length formats
select 
	ride_length
from bike_share
where ride_length NOT REGEXP '^[0-9]{2}:[0-9]{2}:[0-9]{2}$';

-- Delete rows with invalid or null ride_length values
delete from bike_share
where ride_length not regexp '^[0-9]{2}:[0-9]{2}:[0-9]{2}$'
	or ride_length = '00:00:00'
	or ride_length is null;

-- Add a new column for ride length in seconds
alter table bike_share
add column ride_length_sec int;

-- Populate ride_length_sec with converted values
update bike_share
set ride_length_sec = time_to_sec(str_to_date(ride_length, '%H:%i:%s'));
 