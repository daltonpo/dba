--Verificar replicação standby

 psql -c "select application_name, client_hostname, backend_start, sent_location, write_location from pg_stat_replication order by client_hostname;"
 
 -- queries com mais tempo de execução
 psql pje_16 -c "SELECT queryid,substring(query, 1, 50) AS short_query,round(total_time::numeric, 2) AS total_time,calls,round((100 * total_time / sum(total_time::numeric) OVER ())::numeric, 2) AS percentage_cpu FROM pg_stat_statements ORDER BY total_time DESC LIMIT 10;"
