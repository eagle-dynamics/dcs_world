:- begin_tests(dcs_world_plugins).

:- use_module(plugins).

%!  test is semidet.
%
%   There are exactly  69  distinct  shell   types  within  the  plug-in
%   database. Find their names and count them.

test(plugin_property, [true(NumberOfNames==69)]) :-
    findall(Name,
            distinct(Name,
                     plugin_property(_,
                                     weapon(supply(shells(name(Name)))))), Names),
    length(Names, NumberOfNames).

:- end_tests(dcs_world_plugins).
