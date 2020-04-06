:- begin_tests(dcs_world_plugins).

:- use_module(plugins).

test(plugin_property, [true(ID=="CA"), nondet]) :-
    plugin_property(option(ca), id(ID)).
test(plugin_property, [true(NumberOfNames==59)]) :-
    findall(
        Name,
        distinct(
            Name,
            plugin_property(
                _,
                weapon(supply(shells(name(Name)))))), Names),
    length(Names, NumberOfNames).

:- end_tests(dcs_world_plugins).
