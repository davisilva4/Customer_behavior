SELECT 
    'SELECT ' || 
    group_concat(
        CASE 
            WHEN lower(type) LIKE '%bigint%' 
                THEN 'CAST("' || name || '" AS TEXT) AS "' || name || '"'
            ELSE 
                '"' || name || '"'
        END
    , ', ')
    || ' FROM "customer";' AS generated_sql
FROM pragma_table_info('customer');