with Simple_io, swap;
use Simple_io;

procedure main is
        books_room_1 : Integer;
        books_room_2 : Integer;
begin
        books_room_1 := 10; books_room_2 := 20;
        put(books_room_1); put(" "); put(books_room_2); new_line;
        swap(books_room_1, books_room_2);
        put(books_room_1); put(" "); put(books_room_2); new_line;
end main;
