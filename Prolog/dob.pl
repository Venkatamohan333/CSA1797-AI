% Facts representing the database
dob(john, '1990-05-15').
dob(jane, '1985-12-10').
dob(bob, '1995-08-22').
dob(alice, '1980-03-03').

% Query to find the age of a person
age(Person, Age) :-
    dob(Person, Dob),
    get_year(Dob, YearOfBirth),
    get_current_year(CurrentYear),
    Age is CurrentYear - YearOfBirth.

% Helper predicate to extract the year from the date
get_year(Date, Year) :-
    split_string(Date, "-", "", [Year|_]).

% Helper predicate to get the current year
get_current_year(CurrentYear) :-
    get_time(TimeStamp),
    stamp_date_time(TimeStamp, DateTime, 'UTC'),
    date_time_value(year, DateTime, CurrentYear).
