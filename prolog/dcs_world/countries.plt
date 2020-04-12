:- begin_tests(dcs_world_countries).

:- use_module(countries).

test(country_property, [true(A=="UK"), nondet]) :-
    country_property(uk, short_name(A)).
test(country_property, [true(A==uk), nondet]) :-
    country_property(A, world_id(4)).

:- end_tests(dcs_world_countries).
