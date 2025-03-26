set serveroutput on;
declare
       v_count int:=0;
       
begin 
     select count(*) into v_count from test where id>10;
     if SQl%notFOUND THEN
          dbms_output.put_line('cursor open');
     select count(*) into v_count from test where id>10;
     end if;
    
end;
/

SET SERVEROUTPUT ON;

declare
    v_count int:=0;
    
begin 
    if SQL%FOUND THEN
        dbms_output.put_line('cursor open');
    select count(*) into v_count from test where id>10;
   end if;
   
end;



declare
    v_count int:=0;
    
begin 
    if SQL%FOUND THEN
        dbms_output.put_line('cursor open 1'|| ' ' || sql%rowcount);
    end if;
    update test set id =50;
    if SQL%FOUND THEN
        dbms_output.put_line('cursor open 2' || ' ' || sql%rowcount);
   end if;
   
end;
/

--select * from test;

insert into test values(40);
insert into test values(50);
insert into test values(60);
select * from test;

declare
    v_count int;
begin
    insert into test values(40);
    insert into test values(50);
    insert into test values(60);
    v_count := SQL%ROWCOUNT;

    if v_count = 3 then
        dbms_output.put_line('4,5,6,rows are affected' || ' ' || sql%rowcount);
    else
        dbms_output.put_line('Not affected' || ' ' || sql%rowcount);
    end if;
    
END;
/
select * from test;