:- begin_tests(dcs_world_coalitions).

:- use_module(coalitions).

test(coalition_property, [all(A-B==[blue-red, red-blue])]) :-
    coalition_property(A, hostile(B)).
test(coalition_property, [all(A-B==[red-red, blue-blue])]) :-
    coalition_property(A, friendly(B)).

:- end_tests(dcs_world_coalitions).
