:- begin_tests(dcs_world_terrains).

:- use_module(terrains).

test(terrain_property, [set(A==[caucasus, nevada, normandy, persian_gulf])]) :-
    terrain_property(A, defined).

:- end_tests(dcs_world_terrains).
