WITH TRIPS AS (

    SELECT 
   bikeid,
   usertype,
   starttime
   START_STATION_ID,
   timestampdiff(SECOND, starttime, stoptime) as trip_duration_seconds
    FROM {{ source('demo', 'bike') }}

)

select
* 
from 
TRIPS