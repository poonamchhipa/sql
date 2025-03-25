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

