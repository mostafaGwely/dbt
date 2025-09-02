WITH TRIPS AS (

    SELECT 
   *
   from 
   {{ ref('trip_fact') }} t 
   left join
   {{ ref('daily_weather') }} w
   on date(t.starttime) = w.daily_weather

)

select
* 
from 
TRIPS