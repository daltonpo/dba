--Verificar replicação standby

 psql -c "select application_name, client_hostname, backend_start, sent_location, write_location from pg_stat_replication order by client_hostname;"
