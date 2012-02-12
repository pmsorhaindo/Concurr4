package body Pack_prime is
        task body Task_prime is
                prime : Positive;
                answer: Boolean := TRUE;
        begin
                accept start(p:in Positive) do
                        prime:= p;
                end start;
                
                for i in 2 .. prime-1 loop
                        if prime rem i = 0 then
                                answer := FALSE; exit;
                        end if;
                end loop;
                
                accept finish(result:out Boolean) do
                        result:= answer;
                end finish;
        end Task_prime;
end Pack_prime;
