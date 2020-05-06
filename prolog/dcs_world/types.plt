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

types_sorted_by_radius(Length, Pairs) :-
    findall(Type-Radius, type_property(Type, polygon:radius(Radius)), Pairs0),
    sort(2, @>=, Pairs0, Sorted),
    length(Pairs, Length),
    append(Pairs, _, Sorted).

:- public types_sorted_by_radius/0.

types_sorted_by_radius :-
    types_sorted_by_radius(10, Pairs),
    print_table(member(_-_, Pairs)).

:- end_tests(dcs_world_types).
