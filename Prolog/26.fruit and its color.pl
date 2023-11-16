% Define facts about fruits and their colors
fruit_color(apple, red).
fruit_color(banana, yellow).
fruit_color(grape, purple).
fruit_color(orange, orange).
fruit_color(strawberry, red).
fruit_color(blueberry, blue).

% Define rules for backtracking queries
has_color(Fruit, Color) :- fruit_color(Fruit, Color).
has_color(Fruit, Color) :- fruit_color(Fruit, _), Color \= _.

is_color(Color, Fruits) :- findall(Fruit, fruit_color(Fruit, Color), Fruits).

% Example usage:
% To find the color of a specific fruit:
% ?- has_color(apple, Color).

% To find fruits of a specific color:
% ?- is_color(red, Fruits).
