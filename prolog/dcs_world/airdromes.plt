:- begin_tests(dcs_world_airdromes).

:- use_module(airdromes).

test(airdrome_property, [true(Terrain-AirdromeID==caucasus-12)]) :-
    dcs_world_airdromes:of_config(code("URKA"), Terrain, AirdromeID).
test(airdrome_property, [true(Code=="URKA")]) :-
    dcs_world_airdromes:of_config(code(Code), caucasus, 12).

test(airdrome_property, [true(Terrain-AirdromeID==normandy-1)]) :-
    dcs_world_airdromes:of_config(en(saint_pierre_du_mont), Terrain, AirdromeID).
test(airdrome_property, [true(En==saint_pierre_du_mont)]) :-
    dcs_world_airdromes:of_config(en(En), normandy, 1).

test(airdrome_property, [true(A==anapa_vityazevo), nondet]) :-
    airdrome_property(A, code("URKA")).
test(airdrome_property, [true(A=="URKA")]) :-
    airdrome_property(anapa_vityazevo, code(A)).

test(airdrome_property, []) :-
    airdrome_property(saint_pierre_du_mont, terrain(normandy, id(1))).
test(airdrome_property, [true(A==saint_pierre_du_mont)]) :-
    airdrome_property(saint_pierre_du_mont, config:en(A)).

test(airdrome_property, [true(A-B==normandy-6)]) :-
    airdrome_property(meautis, terrain(A, id(B))).

:- end_tests(dcs_world_airdromes).
