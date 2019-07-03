  CREATE TABLE SERVER_ERRORS
   (ERROR_TIME      TIMESTAMP (6), 
	USERNAME        VARCHAR2(30 BYTE), 
	ERROR_MESSAGE   VARCHAR2(512 BYTE), 
	SQL_STATEMENT   VARCHAR2(2014 BYTE)
   );


create or replace trigger catch_servererrors
   after servererror on database
declare
   sql_text ora_name_list_t;
   message varchar2(2000) := null;
   statement varchar2(2000) := null;
begin

    IF ora_login_user IN ('SYS', 'SYSTEM') THEN
        RETURN;
    END IF;

    for depth in 1 .. ora_server_error_depth loop
        message:= message|| ora_server_error_msg(depth);
    end loop;

    for i in 1 .. ora_sql_txt(sql_text) loop
        statement := statement || sql_text(i);
    end loop;

    insert into server_errors (error_time,username,error_message,sql_statement) values (sysdate, ora_login_user,message,statement);
exception
    when others then
        null;
end;
/
