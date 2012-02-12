--PAM (Personal Account Manager)
with Simple_io, class_account, class_tui;
use Simple_io, class_account, class_tui;

procedure main is
        user : Account;
        screen : TUI;
        cash : Money;
        received : Money;

        function float_image(f:in Float) return String is
                res : String(1..10); -- string of 10 characters
        begin
                put(res, f, aft=>2, exp=>0);
                return res;
        end float_image;
begin
        loop
                menu(screen, "Deposit", "Withdraw", "Balance", "");
                case event(screen) is
                        when M_1 => -- Deposit
                                dialog(screen, "Amount to deposit", cash);
                                if cash <= 0.0 then
                                        message (screen, "Must be >= 0.00");
                                else
                                        deposit(user,cash);
                                end if;
                        when M_2 => -- Withdraw
                                dialog(screen, "Amount to withdraw", cash);
                                if cash <= 0.0 then
                                        message(screen, "Must be >= 0.00");
                                else
                                        withdraw(user, cash, received);
                                        if received <= 0.0 then
                                                message(screen, "Not enough money in account!");
                                        end if;
                                end if;
                        when M_3 =>
                                message(screen," Balance s " & float_image(balance(user)) );
                        when M_QUIT =>
                                return;
                        when others =>
                                message(screen, "Program Error");
                end case;
        end loop;
end main;
