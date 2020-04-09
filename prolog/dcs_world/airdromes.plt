:- begin_tests(dcs_world_airdromes).

:- use_module(airdromes).

test(airdrome_property, [true(A==anapa_vityazevo), nondet]) :-
    airdrome_property(A, code("URKA")).
test(airdrome_property, []) :-
    airdrome_property(saint_pierre_du_mont, terrain(normandy, id(1))).

:- end_tests(dcs_world_airdromes).
