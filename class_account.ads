package Class_account is
        -- public interface
        type Account is private;
        subtype Money is Float;
        subtype PMoney is Float range 0.0 .. Float'Last;

        procedure statement(the:in Account);
        procedure deposit(the:in out Account; amount:in PMoney);
        procedure withdraw(the:in out Account; amount:in PMoney; get:out PMoney);

        function balance(the:in Account) return Money;

        private -- start of private interface
        type Account is record
                balance_of : Money := 0.00; -- Amount in account
        end record;

end Class_Account;
