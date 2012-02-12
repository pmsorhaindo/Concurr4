package body Pack_factorial is
        task body Task_factorial is
                factorial : Positive;
                answer : Positive := 1;
        begin
                accept start(f:in Positive) do
                        factorial := f;
                end start;

                for i in 2 .. factorial loop
                        answer := answer*i;
                end loop;

                accept finish(result:out Positive) do
                        result := answer;
                end finish;
        end Task_factorial;
end Pack_factorial;
