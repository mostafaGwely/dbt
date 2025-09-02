WITH TRIPS AS (

    SELECT 
   bikeid,
   usertype,
   STARTTIME,
   START_STATION_ID,
   timestampdiff(SECOND, starttime, stoptime) as trip_duration_seconds
    FROM {{ source('demo', 'bike') }}

)

select
* 
from 
TRIPS