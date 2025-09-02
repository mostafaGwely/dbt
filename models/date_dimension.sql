WITH CTE AS (
    select
    starttime
    from 
    {{ source('demo', 'bike') }}

)

select 
* 
from CTE