servidor sinestro


begin tran

select * from TNFEMUNICIPAL where IDMOV='6425'; 
select * from TNFEMUNICIPALHIST where IDMOV='6425';


UPDATE TNFEMUNICIPAL
SET STATUS = 'C' where CODCOLIGADA='1' and IDMOV='6425';

UPDATE TNFEMUNICIPALHIST as t SET STATUS = 'C' 
where CODCOLIGADA='1' and IDMOV='6425' 
AND IDHISTORICONFSE = (select max(IDHISTORICONFSE) from TNFEMUNICIPALHIST where IDMOV = t.IDMOV);


commit;