% Define birds and whether they can fly
can_fly(sparrow).
can_fly(pigeon).
can_fly(eagle).
cannot_fly(penguin).
cannot_fly(ostrich).

% Queries to check if a bird can fly
fly_check(Bird) :- can_fly(Bird), write(Bird), write(' can fly.'), nl.
fly_check(Bird) :- cannot_fly(Bird), write(Bird), write(' cannot fly.'), nl.
fly_check(_) :- write('Bird not recognized.'), nl.

% Example usage:
% ?- fly_check(sparrow).
% ?- fly_check(penguin).
% ?- fly_check(hawk).
