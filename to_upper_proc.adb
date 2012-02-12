procedure to_upper_proc( c:in out Character) is
        diff_A_a: constant Natural := Character'Pos('a') - Character'Pos('A');
begin
        if c in 'a' .. 'z' then
                c := Character'Val( Character'Pos(c) - diff_A_a);
        end if;
end to_upper_proc;
