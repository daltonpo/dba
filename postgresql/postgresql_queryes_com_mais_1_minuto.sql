select now() - query_start AS elapsed, 
query AS sql_text, 
datname AS database, 
usename AS username
from    pg_stat_activity
where now() - query_start > '00:01:00'   /* we only want queries lasting more than one minute */
and state = 'active'
order by 1 desc