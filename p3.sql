select icn.region_id,
       r.entity,
       r.code,
       avg(icn.number_rabies) as average,
       min(icn.number_rabies) as min,
       max(icn.number_rabies) as max,
       sum(icn.number_rabies) as total
from infectious_cases_normalized icn
         inner join regions r on r.id = icn.region_id
where icn.number_rabies is not null
group by icn.region_id
order by average desc
limit 10;
