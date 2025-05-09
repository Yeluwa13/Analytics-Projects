with casual_riders as (
    -- Calculate the number of rides taken by casual riders grouped by day of the week
    select 
        day_of_week, 
        count(*) as num_of_rides_casual
    from bike_share
    where member_casual = 'casual'
    group by day_of_week
    ),
    -- Calculate the number of rides taken by annual members grouped by day of the week
    member_riders as (
        select 
            day_of_week, 
            count(*) as num_of_rides_member
        from bike_share
        where member_casual = 'member'
        group by day_of_week
    )
    -- Combine the results for casual riders and members, aligning by day of the week
    select 
        c.day_of_week,
        coalesce(c.num_of_rides_casual, 0) as num_of_rides_casual, -- Use 0 if no casual rides for a day
        coalesce(m.num_of_rides_member, 0) as num_of_rides_member -- Use 0 if no member rides for a day
    from casual_riders c
    full outer join member_riders m
    on c.day_of_week = m.day_of_week
    -- Order the results by the days of the week in a logical sequence
    order by 
        case c.day_of_week
            when 'Sunday' then 1
            when 'Monday' then 2
            when 'Tuesday' then 3
            when 'Wednesday' then 4
            when 'Thursday' then 5
            when 'Friday' then 6
            when 'Saturday' then 7
        end;
 