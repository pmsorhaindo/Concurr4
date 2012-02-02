with Ada.Text_io; use Ada.Text_io;

procedure main is
        ch : Character; -- attempting a character declaration
begin
        ch := 'a';
        case ch is
                when '0' | '1' | '2' | '3' | '4'
                     | '5' | '6' | '7' | '8' | '9' =>
                     put("Character is a digit");
                when 'A' .. 'Z' =>
                     put("Character is an upper case English letter");
                when 'a' .. 'z' =>
                     put("Character is a lower case English letter");
                when others =>
                     put ("Character is not an English letter or digit");
        end case;
        new_line;
end main;
