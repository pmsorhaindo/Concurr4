with Simple_io; use Simple_io;

procedure simpleIOTypes is
        fNum : Float;
begin
        fNum := 123.456;
        put("Scientific Notation as Default :: ");
        put (fNum); -- scientific Notation as Default
        new_line;
        put("Using 'aft' and 'fore' to limit the places before and after the decimal point");
        new_line; put("fore=>4, aft =>2, exp=>0 :: ");
        put(fNum, fore=>4, aft=>2, exp=>0); -- no exponents hence non scientific notation.
        new_line;
        put("With a 3 char exponent :: ");
        put(fNum, fore=>4, aft=>2, exp=>3);
end simpleIOTypes;
