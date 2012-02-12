package Pack_prime is
        task type Task_prime is
                entry start(p:in Positive);
                entry finish(result:out Boolean);
        end Task_prime;
end Pack_prime;
