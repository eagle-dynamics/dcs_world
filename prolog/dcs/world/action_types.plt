:- begin_tests(dcs_world_action_types).

:- use_module(action_types).

test(action_type_property, [true(A==perform_task), nondet]) :-
    action_type_property(A, id(1)).
test(action_type_property, [true(A==start_enroute_task), nondet]) :-
    action_type_property(A, id(2)).
test(action_type_property, [true(A==perform_command), nondet]) :-
    action_type_property(A, id(3)).
test(action_type_property, [true(A==set_option)]) :-
    action_type_property(A, id(4)).

:- end_tests(dcs_world_action_types).
