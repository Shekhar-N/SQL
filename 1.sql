with cte as (
	select club_id,
	case
		when edu_ex in ('MM', 'CI', 'CO') THEN 0.5
		when edu_ex in ('CL', 'CM', 'CD') then 1.0
		else 0
	end as points
	from club, unnest(string_to_array(coalesce(edu,'0'),':')) as edu_ex
)
select club_id, sum(points) as points from cte group by club_id order by club_id