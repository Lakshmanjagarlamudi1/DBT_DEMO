WITH BIKE AS (

    SELECT
    START_STATION_ID as STATION_ID,
    START_STATION_NAME AS STATION_NAME,
    START_LAT,
    START_LNG
    
    FROM {{ ref('bike_stage') }}
    WHERE RIDE_ID != 'ride_id'
)

SELECT * FROM BIKE