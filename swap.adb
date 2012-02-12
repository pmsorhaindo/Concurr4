procedure swap(first:in out Integer; second:in out Integer) is
        temp : Integer;
begin
        temp := first;
        first := second;
        second := temp;
end swap;
