package Pack_Factorial is
        task type Task_factorial is
                entry start(f:in Positive);
                entry finish(result:out Positive);
        end Task_factorial;
end Pack_Factorial;
