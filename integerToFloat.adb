-- Integer to Float Conversion
with Simple_io; use Simple_io;

procedure main is 
begin
        for i in 1 .. 5 loop
                put(i); put(" Pounds = ");
                put(Float(i) / 2.2046, exp=>0, aft=>2);
                put( " Kilograms"); new_line;
        end loop;
end main;
