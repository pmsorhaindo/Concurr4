with Simple_io; use Simple_io;
procedure main is
        type Miles is digits 8 range 0.0 .. 25_000.0;
        type Kilometers is digits 8 range 0.0 .. 50_000.0;
        london_paris : Miles;
        paris_geneva : Kilometers;
        london_paris_geneva : Kilometers;
begin
        london_paris := 210.0; --Miles
        paris_geneva := 420.0; --Kilometers
        london_paris_geneva :=
                kilometers(london_paris*1.609_344)+ paris_geneva;
                -- If the programmer had writtedn london_paris+paris_geneva straight the compiler would have picked up the type mismatch at compile time.
        put("Distance London - Paris - Geneva is ");
        put(Float(london_paris_geneva), aft=>2, exp=>0);
        put("Km");
        new_line;
end main;
