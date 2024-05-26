all_different([]).
all_different([H|T]):-
    \+ member(H,T),
    all_different(T).

valid([]).
valid([Head|Tail]):-
    all_different([Head]), 
    valid(Tail).

sudoku4x4(Puzzle) :-
    Puzzle = [
              R1C1, R1C2, R1C3, R1C4,
              R2C1, R2C2, R2C3, R2C4,
              R3C1, R3C2, R3C3, R3C4,
              R4C1, R4C2, R4C3, R4C4],

    Row1 = [R1C1, R1C2, R1C3, R1C4],
    Row2 = [R2C1, R2C2, R2C3, R2C4],
    Row3 = [R3C1, R3C2, R3C3, R3C4],
    Row4 = [R4C1, R4C2, R4C3, R4C4],

    Col1  = [R1C1, R2C1, R3C1, R4C1],
    Col2  = [R1C2, R2C2, R3C2, R4C2],
    Col3  = [R1C3, R2C3, R3C3, R4C3],
    Col4  = [R1C4, R2C4, R3C4, R4C4],

    SubGrid1 = [R1C1, R1C2, R2C1, R2C2],
    SubGrid2 = [R1C3, R1C4, R2C3, R2C4],
    SubGrid3 = [R3C1, R3C2, R3C3, R3C4],
    SubGrid4 = [R4C1, R4C2, R4C3, R4C4],

    all_different(Row1),
    all_different(Row2),
    all_different(Row3),
    all_different(Row4),
    all_different(Col1),
    all_different(Col2),
    all_different(Col3),
    all_different(Col4),
    all_different(SubGrid1),
    all_different(SubGrid2),
    all_different(SubGrid3),
    all_different(SubGrid4),


example4x4([
    _, _, 2, _,
    _, _, _, _,
    _, _, _, _,
    _, _, _, 4
]).

