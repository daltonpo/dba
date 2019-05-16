select tablename, per.*
from pg_tables as t , (SELECT grantee, privilege_type 
	              FROM information_schema.role_table_grants 
                      WHERE table_schema='public' and table_name = 'und_obra') as per
where schemaname='public'
except
SELECT table_name, grantee, privilege_type 
FROM information_schema.role_table_grants 
WHERE table_schema='public';