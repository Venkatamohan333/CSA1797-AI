% Define the diseases
has_diabetes(john).
has_hypertension(jane).

% Define diet suggestions
diet_suggestion(john, 'Diabetes'):-
    write('John, your diet should be low in sugar and carbohydrates. Include more vegetables and lean proteins.'), nl.

diet_suggestion(jane, 'Hypertension'):-
    write('Jane, your diet should be low in salt and saturated fats. Include more fruits, vegetables, and whole grains.'), nl.

% General diet suggestion if the disease is not specified
diet_suggestion(Person, _):-
    write('Sorry, we cannot provide a specific diet suggestion for '), write(Person), write('.'), nl.

% Example usage:
% ?- diet_suggestion(john, 'Diabetes').
% ?- diet_suggestion(jane, 'Hypertension').
% ?- diet_suggestion(mary, 'UnknownDisease').
