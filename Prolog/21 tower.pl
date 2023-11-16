% Towers of Hanoi implementation in Prolog

% Define the predicate to move N disks from tower A to tower B using tower C as an auxiliary tower.
hanoi(1, A, B, _):-
    write('Move disk 1 from '), write(A), write(' to '), write(B), nl.

hanoi(N, A, B, C):-
    N > 1,
    M is N - 1,
    hanoi(M, A, C, B),
    write('Move disk '), write(N), write(' from '), write(A), write(' to '), write(B), nl,
    hanoi(M, C, B, A).

% Example usage:
% To solve the Towers of Hanoi problem with 3 disks on tower 'A', moving to tower 'C' using tower 'B' as an auxiliary.
% ?- hanoi(3, 'A', 'C', 'B').
