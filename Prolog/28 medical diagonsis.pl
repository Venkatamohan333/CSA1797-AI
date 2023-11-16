% Define symptoms and possible illnesses
has_symptom(john, fever).
has_symptom(john, cough).
has_symptom(john, fatigue).

has_symptom(susan, headache).
has_symptom(susan, nausea).
has_symptom(susan, dizziness).

% Define rules for diagnosis
diagnose(Person, 'Common Cold') :-
    has_symptom(Person, fever),
    has_symptom(Person, cough),
    has_symptom(Person, fatigue).

diagnose(Person, 'Migraine') :-
    has_symptom(Person, headache),
    has_symptom(Person, nausea),
    has_symptom(Person, dizziness).

% General diagnosis if the illness is not specified
diagnose(_, 'Unknown Illness') :-
    write('Sorry, we cannot determine the illness based on the symptoms provided.'), nl.

% Example usage:
% ?- diagnose(john, Illness).
% ?- diagnose(susan, Illness).
% ?- diagnose(jane, Illness).
