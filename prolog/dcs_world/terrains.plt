:- begin_tests(dcs_world_terrains).

:- use_module(terrains).

test(terrain_property, [set(A==[caucasus, nevada, normandy, persian_gulf])]) :-
    terrain_property(A, defined).

test(terrain_property, [true(A-B==caucasus-12)]) :-
    terrain_property(A, config:airdrome(caucasus(B, code("URKA")))).

:- end_tests(dcs_world_terrains).
