:- begin_tests(dcs_world_plugins).

test(plugin_property, [true(ID=="CA")]) :-
    plugin_property(option(ca), id(ID)).

:- end_tests(dcs_world_plugins).
