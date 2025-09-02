{% macro get_season(x) %}

 CASE 
            WHEN EXTRACT(MONTH FROM {{x}}) IN (12, 1, 2)  THEN 'WINTER'
            WHEN EXTRACT(MONTH FROM {{x}}) IN (3, 4, 5)   THEN 'SPRING'
            WHEN EXTRACT(MONTH FROM {{x}}) IN (6, 7, 8)   THEN 'SUMMER'
            WHEN EXTRACT(MONTH FROM {{x}}) IN (9, 10, 11) THEN 'FALL'
        END    

{% endmacro %}


{% macro day_type(x)%}
    CASE 
            WHEN DAYOFWEEK({{x}}) IN (1, 7)  THEN 'WEEKEND'
            ELSE 'BUSINESSDAY'
        END  
{% endmacro %}