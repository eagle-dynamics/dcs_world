:- begin_tests(dcs_world_types).

:- use_module(types).

test(type_property,
     [   all(A-B==[   -0.77912974357605- -0.77912980318069,
                      -0.77912974357605-0.77912974357605,
                      0.77912974357605-0.77912974357605,
                      0.77912974357605- -0.77912980318069
                  ])
     ]) :-
    type_property(soldier_ak, polygon:vertex(A, B)).
test(type_property, [true(A==1.1018558923603679)]) :-
    type_property(soldier_ak, polygon:radius(A)).

:- end_tests(dcs_world_types).
