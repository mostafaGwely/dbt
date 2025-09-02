WITH CTE AS (

    SELECT
        starttime                                AS datetime_started_at,
        CAST(starttime AS DATE)                  AS date_started_at,
        EXTRACT(HOUR FROM starttime)             AS hour_started_at,
        {{  day_type('starttime')}}         AS day_type,
       {{  get_season('starttime')}}        AS season_of_year
       
    FROM {{ source('demo', 'bike') }}

)

SELECT *
FROM CTE
