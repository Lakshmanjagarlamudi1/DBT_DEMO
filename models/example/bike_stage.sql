WITH CTE AS (

    SELECT
    RIDE_ID,
    REPLACE(STARTED_AT,'"','') AS STARTED_AT,
    REPLACE(ENDED_AT,'"','') AS ENDED_AT,
    REPLACE(START_STATION_NAME,'"','') AS START_STATION_NAME,
    START_STATION_ID,
    REPLACE(END_STATION_NAME,'"','') AS END_STATION_NAME,
    END_STATION_ID,
    START_LAT,
    START_LNG,
    END_LAT,
    END_LNG,
    REPLACE(MEMBER_CASUAL,'"','') AS MEMBER_CASUAL

    FROM {{ source('demo', 'bike') }}
    WHERE STARTED_AT NOT IN ('starttime', '"starttime"')
    AND ENDED_AT   NOT IN ('stoptime',  '"stoptime"')
    AND ride_id    NOT IN ('bikeid',    '"bikeid"')



)


select * from CTE