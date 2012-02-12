with Simple_io, pack_factorial, pack_prime;
use Simple_io, pack_factorial, pack_prime;

procedure execute_threads is

thread_1 : Task_factorial;
thread_2 : Task_factorial;
thread_3 : Task_prime;
factorial: Positive;
prime: Boolean;

begin
        thread_1.start(5);
        thread_2.start(7);
        thread_3.start(97);
        
        put("Factorial 5 is ");
        thread_1.finish( factorial ); -- getting the result;
        put( factorial ); new_line;
        
        put("Factorial 8 is ");
        thread_2.finish( factorial );
        put( factorial ); new_line;
        
        put("97 is a prime is ");
        thread_3.finish( prime );
        if prime then put("True"); else put("False"); end if; new_line;
end execute_threads;

