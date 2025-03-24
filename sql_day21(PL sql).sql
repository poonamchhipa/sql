SET SERVEROUTPUT ON;
declare
    msg varchar(30) := 'hello world by poonam';
begin
    dbms_output.put_line(msg || '#' || '###');
--used to concatenate two strings
end;