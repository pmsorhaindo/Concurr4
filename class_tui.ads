package Class_tui is
        type Menu_item is (M_1, M_2, M_3, M_4, M_QUIT);
        type TUI is private;

        procedure menu(the:in out TUI; m1,m2,m3,m4:in String);
        function event(the:in TUI) return Menu_item;
        procedure message(the:in TUI; mes:in String);
        procedure dialog(the:in TUI; mes:in String; res:out Float);
        procedure dialog(the:in TUI; mes:in String; res:out Integer);

private
        --Not a concern to the client of the class.
        type TUI is record
        selection : Menu_item := M_QUIT;
        end record;
end class_tui;
