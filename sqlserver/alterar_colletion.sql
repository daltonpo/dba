select 'alter table ' + tabela + ' alter column ' + coluna + ' ' + column_type + ' (' + max_length + ') collate ' + ' SQL_Latin1_General_CP1_CI_AS ' + is_nullable + ';' as comando--, t.* 
from(
select t.name as tabela, c.name as coluna, c.collation_name,
       case c.is_nullable
		when 1 then 'null'
		else 'not  null'
	   end as is_nullable,
       CASE c.system_type_id
         WHEN 167 THEN 'VARCHAR'
         WHEN 231 THEN 'NVARCHAR'
         WHEN 239 THEN 'NCHAR'
		 WHEN 175 THEN 'CHAR'
       END as 'column_type',
       CASE c.max_length
		 WHEN '-1' THEN 'Max'
		 else cast(c.max_length as varchar)
	   end as 'max_length'
from sys.columns c, sys.tables t 
where c.object_id = t.object_id
 and c.collation_name is not null) as t;

---ALTER TABLE log_analitico ALTER COLUMN idioma COLLATE SQL_Latin1_General_CP1_CI_AS