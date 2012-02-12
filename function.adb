function to_upper_fun( c:in Character ) return Character is
        answer : Character;
        diff_A_a: constant Natural := Character'Pos('a') - Character'Pos('A');
begin
        if c in 'a' .. 'z' then
                answer := Character'Val(Character'Pos(c) - diffA_a );
        else
                answer := c
        end if;
        return answer;
end to_upper_fun;
