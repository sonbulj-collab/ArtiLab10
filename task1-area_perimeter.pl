area_square(Side, Area) :-
    Area is Side * Side.

perimeter_square(Side, Perimeter) :-
    Perimeter is 4 * Side.

area_rectangle(Length, Width, Area) :-
    Area is Length * Width.

perimeter_rectangle(Length, Width, Perimeter) :-
    Perimeter is 2 * (Length + Width).

area_triangle(Base, Height, Area) :-
    Area is Base * Height / 2.

perimeter_triangle(A, B, C, Perimeter) :-
    Perimeter is A + B + C.
