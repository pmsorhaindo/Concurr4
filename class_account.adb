-- Implementation of bankAccount
with Simple_io; use Simple_io;
package body Class_account is

        procedure statement(the:in Account) is
        begin
                put("Mini statement: The amount on deposit is £");
                put( the.balance_of, aft=>2, exp=>0);
                new_line(2);
        end statement;

        procedure deposit (the:in out Account; amount:in PMoney) is
        begin
                the.balance_of := the.balance_of + amount;
        end deposit;

        procedure withdraw(the: in out Account; amount:in PMoney; get:out PMoney) is
        begin
                if the.balance_of >= amount then
                        the.balance_of := the.balance_of - amount;
                        get := amount;
                else
                        get := 0.00;
                end if;
        end withdraw;

        function balance(the:in Account) return Money is
        begin
                return the.balance_of;
        end balance;
end Class_account;
