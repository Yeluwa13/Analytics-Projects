-- Identify rows with invalid datetime format in the started_at column
select 
    started_at
from bike_share
where not started_at regexp '^[0-9]{2}/[0-9]{2}/[0-9]{4} [0-9]{2}:[0-9]{2}:[0-9]{2}$'
;

-- add new columns for cleaned datetime values
alter table bike_share 
add COLUMN started_at_clean datetime,
add COLUMN ended_at_clean datetime;

-- Populate the new columns with cleaned datetime values
update bike_share
set started_at_clean = str_to_date(started_at, '%d/%m/%Y %H:%i:%s'),
	ended_at_clean = str_to_date(ended_at, '%d/%m/%Y %H:%i:%s')
where started_at regexp '^[0-9]{2}/[0-9]{2}/[0-9]{4} [0-9]{2}:[0-9]{2}:[0-9]{2}$'
  and ended_at regexp '^[0-9]{2}/[0-9]{2}/[0-9]{4} [0-9]{2}:[0-9]{2}:[0-9]{2}$';
 