set serveroutput on;
declare
   varl varchar(20):='hey';
   a int:=10;
   b int:=20;
   c int;
   d constant int :=19;
   
begin 
     c:=a+b;
     dbms_output.put_line(varl || ' ' || d);
     if(a>15) then
        dbms_output.put_line('a value is greater than 5');
     ELSIF(a=10) then
        dbms_output.put_line('value is 10');
     else
        dbms_output.put_line('else part');
       end if;
     
     
end;



set serveroutput on;
declare
   varl varchar(20):='hey';
   a int:=10;

   
begin 
     loop
         dbms_output.put_line(a);
         a:=a+1;
         --exit when a>13; 
         if(a>13) then
              exit;
         end if;
    
    end loop;

end;  


set serveroutput on;
declare
   a int:=10;

   
begin 
     for varl in 1..10*2 loop
         dbms_output.put_line(a);
        
    
    end loop;

end;  

set serveroutput on;
declare
    salary number := 2800; 
    new_salary number;
begin
    new_salary := 
        CASE 
            when salary > 2500 and salary < 3000
            then salary + (salary * 0.10)
            when salary > 3000
            then salary + (salary * 0.15)
            else salary + (salary * 0.05)
        end;

    dbms_output.put_line('Updated Salary: ' || new_salary);
END;
/

-- loops in PL sql=>
-- (1)basic loop=>runs infinitely until an exit condition is met
-- ex.= print numbers from 1 to 5

set serveroutput on;
declare
      counter number := 1;
begin
     loop
         dbms_output.put_line('counter:' || counter);
         counter:=counter+1;
         exit when counter>5;
    end loop;
end;

-- (2)while loop=>executes as long as condition is true
DECLARE
    num NUMBER := 2;
BEGIN
    WHILE num <= 10 LOOP
        DBMS_OUTPUT.PUT_LINE('Even Number: ' || num);
        num := num + 2;  -- Increment by 2
    END LOOP;
END;
/

-- (3)for loop=>
BEGIN
    FOR i IN 1..5 LOOP
        DBMS_OUTPUT.PUT_LINE('Value: ' || i);
    END LOOP;
END;
/