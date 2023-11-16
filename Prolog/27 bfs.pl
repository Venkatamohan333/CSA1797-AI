% Define the graph with edges and their corresponding costs
edge(a, b, 5).
edge(a, c, 2).
edge(b, d, 4).
edge(c, e, 3).
edge(d, f, 1).
edge(e, f, 7).

% Best First Search Algorithm
best_first_search(Start, Goal, Path) :-
    best_first_search_([node(Start, [])], Goal, Path).

% Helper predicate for Best First Search
best_first_search_([node(State, Path) | _], State, Path).

best_first_search_(Frontier, Goal, Path) :-
    select(node(CurrentState, CurrentPath), Frontier, NewFrontier),
    findall(node(NextState, [NextState | CurrentPath]),
            (edge(CurrentState, NextState, _), \+ member(node(NextState, _), Frontier)),
            Successors),
    append(NewFrontier, Successors, UpdatedFrontier),
    best_first_search_(UpdatedFrontier, Goal, Path).

% Example usage:
% best_first_search(a, f, Path).
