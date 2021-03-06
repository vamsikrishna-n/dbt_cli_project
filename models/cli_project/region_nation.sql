with REGION as (

    select * from {{ref('stg_region')}}

),

NATION as (

    SELECT * from {{ref('stg_nation')}}

),
REGION_NATION AS (
  
  SELECT 
  R.R_REGIONKEY AS REGION_ID,
  R.R_NAME AS REGION_NAME,
  N.N_NATIONKEY AS NATION_ID,
  N.N_NAME AS NATION_NAME 
  FROM REGION R LEFT JOIN NATION N ON R.R_REGIONKEY = N.N_REGIONKEY  
)

SELECT * FROM REGION_NATION
