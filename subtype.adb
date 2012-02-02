-- subtypes
with Ada.Text_io; use Ada.Text_io;
procedure main is
        type Speed_mph          is range 0..25_000;
        subtype Train_speed     is Speed_mph range 0 .. 130;
        subtype Bus_speed       is Speed_mph range 0 .. 75;
        subtype Cycling_speed   is Speed_mph range 0 .. 30;
        subtype Person_speed    is Speed_mph range 0 .. 15;

        t0715 Train_speed; -- 07:15 Brighton - London
        b0720 Bus_speed;   -- 07:20 Brighton - London

begin
        t0715 := 55; -- Average speed Brighton - London (Train)
        b0720 := 35; -- Average speed Brighton - London (Bus)
        
        if t0715 > b0720 then
                put("The train is faster than the bus");
        else
                put("The bus is faster than the train");
        end if;
        new_line;
end main;

--subtypes within the same time can be freely operated on with each other and compared and assigned.
--subtypes of different types will throw errors.
