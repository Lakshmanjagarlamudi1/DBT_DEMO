WITH CTE AS (
    SELECT
    t.*,
    w.*
    FROM {{ ref('trip_fact') }} AS t
    LEFT JOIN {{ ref('daily_weather') }} as w
    ON t.TRIP_DATE = w.Date
)

SELECT * FROM CTE
