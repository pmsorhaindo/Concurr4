with Ada.Text_io; use Ada.Text_io;

procedure main is
        type Apples is range 0 .. 100;
        type French_apples is range 1 .. 100;
        number : Apples;
        number_from_france : French_apples;
begin
        number := 10;
        put("Apple is: ");
        put(Apples'Image(number)); new_line;
        number_from_france := French_apples ( number );
        put("Frenchified Apple is: ");
        put(French_apples'Image(number_from_france)); new_line;
end main;
