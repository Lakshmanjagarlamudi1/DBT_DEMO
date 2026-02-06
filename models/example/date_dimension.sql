WITH CTE AS (
    SELECT
    TO_TIMESTAMP(STARTED_AT) AS STARTED_AT,
    DATE(TO_TIMESTAMP(STARTED_AT)) AS DATE_STARTED_AT,
    HOUR(TO_TIMESTAMP(STARTED_AT)) AS HOUR_STARTED_AT,

    {{get_dayType('STARTED_AT')}} AS DAYTYPE,

    {{get_season('STARTED_AT')}} AS SEASON_OF_THE_YEAR


    FROM {{ source('demo', 'bike') }}
    WHERE STARTED_AT != 'started_at'
)

select * from CTE