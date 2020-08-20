:- begin_tests(dcs_world_airdromes).

:- use_module(airdromes).

test(airdrome_property, [true(A==anapa_vityazevo)]) :-
    airdrome_property(A, code("URKA")).
test(airdrome_property, [true(A=="URKA")]) :-
    airdrome_property(anapa_vityazevo, code(A)).

test(airdrome_property, []) :-
    airdrome_property(saint_pierre_du_mont, terrain(normandy, id(1))).
test(airdrome_property, [true(A==saint_pierre_du_mont)]) :-
    airdrome_property(saint_pierre_du_mont, en(A)).

test(airdrome_property, [true(A-B==normandy-6)]) :-
    airdrome_property(meautis, terrain(A, id(B))).

:- end_tests(dcs_world_airdromes).
