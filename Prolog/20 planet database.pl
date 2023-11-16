% Facts representing information about planets
planet(mercury, 0.39, 0.24).
planet(venus, 0.72, 0.62).
planet(earth, 1.00, 1.00).
planet(mars, 1.52, 0.11).
planet(jupiter, 5.20, 317.8).
planet(saturn, 9.58, 95.2).
planet(uranus, 19.22, 14.6).
planet(neptune, 30.05, 17.2).

% Query to find the distance of a planet from the sun
distance_from_sun(Planet, Distance) :-
    planet(Planet, Distance, _).

% Query to find the mass of a planet
planet_mass(Planet, Mass) :-
    planet(Planet, _, Mass).

% Query to find information about a planet
planet_info(Planet, Distance, Mass) :-
    planet(Planet, Distance, Mass).
