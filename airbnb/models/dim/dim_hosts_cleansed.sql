with src_hosts AS
(
    select * FROM {{ref('src_hosts')}}
)
SELECT
HOST_ID,
NVL(HOST_NAME,'Anonymous') as HOST_NAME,
IS_SUPERHOST,
CREATED_AT,
updated_at
FROM 
SRC_HOSTS