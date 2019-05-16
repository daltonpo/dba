--matar sessões

SELECT pg_terminate_backend(pg_stat_activity.pid)
FROM pg_stat_activity
WHERE pg_stat_activity.datname = 'PORTAL_CMS';


SELECT pg_terminate_backend(pg_stat_activity.pid) FROM pg_stat_activity WHERE pg_stat_activity.datname = 'feeds_teste';



select 'GRANT ALL ON TABLE '||tablename||' TO grp_feeds;'
from pg_tables where schemaname = 'public';

select *
from pg_class where schemaname = 'public';

select 'GRANT ALL ON SEQUENCE '||relname||' TO grp_feeds;'
FROM pg_class c WHERE c.relkind = 'S';


GRANT ALL ON SCHEMA public TO grp_feeds;
GRANT ALL ON SCHEMA public TO usr_celso;

GRANT ALL ON TABLE criterio TO postgres;
GRANT ALL ON TABLE desafio TO postgres;
GRANT ALL ON TABLE configuracao_sistema TO postgres;
GRANT ALL ON TABLE avaliador TO postgres;
GRANT ALL ON TABLE micro_feedback TO postgres;
GRANT ALL ON TABLE notificacao TO postgres;
GRANT ALL ON TABLE perfil TO postgres;
GRANT ALL ON TABLE periodo TO postgres;
GRANT ALL ON TABLE papel_usuario TO postgres;
GRANT ALL ON TABLE situacao_desafio TO postgres;
GRANT ALL ON TABLE usuario TO postgres;
GRANT ALL ON TABLE agenda_feedback_presencial TO postgres;
GRANT ALL ON TABLE avaliacao_criterio_respostas TO postgres;
GRANT ALL ON TABLE tipo_avaliacao TO postgres;
GRANT ALL ON TABLE situacao_avaliacao TO postgres;
GRANT ALL ON TABLE perfil_cargo TO postgres;
GRANT ALL ON TABLE perfil_criterio TO postgres;
GRANT ALL ON TABLE avaliacao TO postgres;
GRANT ALL ON TABLE avaliador_colaborador TO postgres;

GRANT ALL ON SEQUENCE solicitacao_ajuste_id_seq TO postgres;
GRANT ALL ON SEQUENCE agenda_feedback_presencial_id_seq TO postgres;
GRANT ALL ON SEQUENCE avaliacao_criterio_respostas_id_seq TO postgres;
GRANT ALL ON SEQUENCE avaliacao_id_seq TO postgres;
GRANT ALL ON SEQUENCE avaliador_id_seq TO postgres;
GRANT ALL ON SEQUENCE avaliador_colaborador_id_seq TO postgres;
GRANT ALL ON SEQUENCE configuracao_sistema_id_seq TO postgres;
GRANT ALL ON SEQUENCE criterio_id_seq TO postgres;
GRANT ALL ON SEQUENCE desafio_id_seq TO postgres;
GRANT ALL ON SEQUENCE notificacao_id_seq TO postgres;
GRANT ALL ON SEQUENCE perfil_cargo_id_seq TO postgres;
GRANT ALL ON SEQUENCE perfil_criterio_id_seq TO postgres;
GRANT ALL ON SEQUENCE perfil_id_seq TO postgres;
GRANT ALL ON SEQUENCE usuario_id_seq TO postgres;
GRANT ALL ON SEQUENCE micro_feedback_id_seq TO postgres;
GRANT ALL ON SEQUENCE periodo_id_seq TO postgres;




