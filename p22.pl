% create a list containing all the integers within a given range
%
range(B, E, [B|T]) :- B =< E, B1 is B + 1, range(B1, E, T).
range(B, B, [B]) .
