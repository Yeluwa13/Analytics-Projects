-- Analyze bike preference for casual riders
select 
    rideable_type,
    count(*) as bike_count
from bike_share
where member_casual = 'casual'
group by rideable_type
order by bike_count desc;

-- Ensure data consistency by enforcing valid values for member_casual
alter table bike_share
add constraint chk_member_casual
check (member_casual in ('casual', 'member'));

-- Create an index to optimize the group by query
create index idx_member_casual_rideable_type
on bike_share (member_casual, rideable_type);

-- Compare bike preference between casual riders and members
-- This query shows the count of each bike type used by casual riders and members,
-- allowing us to identify which bike type is preferred by each group.
select 
    member_casual,
    rideable_type,
    count(*) as bike_count
from bike_share
group by member_casual, rideable_type
order by member_casual, bike_count desc;
