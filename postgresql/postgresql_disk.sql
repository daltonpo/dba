--table_sizes
SELECT relname AS "relation",
       pg_size_pretty(pg_total_relation_size(C.oid)) AS "total_size"
FROM pg_class C
LEFT JOIN pg_namespace N ON (N.oid = C.relnamespace)
WHERE nspname NOT IN ('pg_catalog', 'information_schema')
      AND C.relkind <> 'i'
      AND nspname ='public'
ORDER BY pg_total_relation_size(C.oid) DESC;

--relation_sizes
SELECT relname AS "relation",
    pg_size_pretty(pg_relation_size(C.oid)) AS "size"
FROM pg_class C
LEFT JOIN pg_namespace N ON (N.oid = C.relnamespace)
WHERE nspname = 'public'
ORDER BY pg_relation_size(C.oid) DESC;


--db_size
SELECT pg_size_pretty(pg_database_size(current_database()));