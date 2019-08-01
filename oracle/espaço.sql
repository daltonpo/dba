SELECT u.tablespace_name, Trunc(total,2) "Total MB", Trunc(livre,2) "Livre MB", Trunc(total - livre,2) "Usado MB", Trunc(livre / total * 100,2) "% livre", 100 - Trunc(livre / total * 100,2) "% usado"
FROM (
SELECT tablespace_name, Sum(bytes) /1024 /1024 livre 
FROM dba_free_space
GROUP BY tablespace_name) u,
(SELECT tablespace_name, Sum(bytes) / 1024 /1024 total
FROM dba_data_files
GROUP BY tablespace_name) t
WHERE u.tablespace_name = t.tablespace_name
ORDER BY 1;
