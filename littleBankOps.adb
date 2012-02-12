with Ada.Text_io, Class_account;
use Ada.Text_io, Class_account;

procedure main is
        my_account : Account;
        obtain : Money;
begin
        statement(my_account);

        put("Deposit £100.00 into account"); new_line;
        deposit(my_account, 100.00);
        statement(my_account);

        put("Withdraw £80.00 from account"); new_line;
        withdraw(my_account, 80.00, obtain);
        statement(my_account);

        put("Deposit £200.00 into account"); new_line;
        deposit(my_account, 200.00);
        statement(my_account);
end main;
