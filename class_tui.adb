-- super complex TUI implementation
with Ada.Text_io; use Ada.Text_io;
package body Class_tui is

        procedure menu( the:in out TUI; m1,m2,m3,m4:in String) is

        selection : Character;
        valid_response : Boolean := False;

        procedure set_response(choice:in Menu_item; mes:in String) is        
        begin
                if mes /= "" then
                        the.selection := choice;
                        valid_response := TRUE;
                end if;
        end set_response;

        procedure display_menu_item(prompt, name:in String) is
        begin
                if name/="" then
                        put(prompt & name);
                        new_line(2);
                end if;
        end display_menu_item;
        begin
                while not valid_response loop
                        display_menu_item( "[a]   ", m1 );
                        display_menu_item( "[b]   ", m2 );
                        display_menu_item( "[c]   ", m3 );
                        display_menu_item( "[d]   ", m4 );
                        put("Input selection: ");
                        get(selection);
                        skip_line;
                        case selection is
                                when 'a' | 'A' => set_response(M_1, m1 );
                                when 'b' | 'B' => set_response(M_2, m2 );
                                when 'c' | 'C' => set_response(M_3, m3 );
                                when 'd' | 'D' => set_response(M_4, m4 );
                                when 'e' | 'E' => set_response(M_QUIT, "Quit" );
                                when others    => valid_response := FALSE;
                        end case;
                        if not valid_response then
                                message(the, "Invalid response");
                        end if;
                end loop;
        end menu;

        function event(the:in TUI) return Menu_item is
        begin
                return the.selection;
        end;

        procedure message(the: in TUI; mes:in String) is
        begin
                new_line;
                put(mes);
                new_line;
        end message;

        procedure dialog(the:in TUI; mes:in String; res:out Float) is -- overloaded dialog provides two methods one taking a float on taking an integer:)
        begin
                new_line(1);
                put(mes & " : ");
                get(res);
                skip_line;
        end dialog;

        procedure dialog(the:in TUI; mes:in String; res:out Integer) is
        begin
                new_line(1);
                put(mes & " : ");
                get(res);
                skip_line;
        end dialog;

end Class_tui;
