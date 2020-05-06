:- module(dcs_world_plugins, [plugin_property/2]).

%!  plugin_property(?Plugin, ?Property) is nondet.
%
%   Property of Plugin.

plugin_property(option(Option), Property) :- of_option(Property, Option).
plugin_property(skin(Skin), Property) :- of_skin(Property, Skin).
plugin_property(plugin(Plugin), Property) :- of_plugin(Property, Plugin).

:- include(plugins/of_option).
:- include(plugins/of_skin).
:- include(plugins/of_plugin).

:- table of_option/2, of_skin/2, of_plugin/2.

:- use_module(library(swi/dicts)).
:- use_module(library(swi/atoms)).

:- multifile dcs:apply_to_variant/2, dcs:property_of_variant/2.
:- public dcs:apply_to_variant/2, dcs:property_of_variant/2.

dcs:apply_to_variant(plugin:Apply, Variant) :-
    apply_to_plugin(Apply, Variant).

apply_to_plugin(format(Name), Variant) :-
    property_of(Name, Name_),
    Term0 =.. [Name, Dict],
    forall(
        dcs:property_of_variant(plugin:Term0, Variant),
        (   get_dict(id, Dict, ID0),
            restyle_identifier_ex(one_two, ID0, ID_),
            downcase_atom(ID_, ID),
            forall(
                dict_compound(Dict, Property),
                (   Term =.. [Name_, Property, ID],
                    format('~q.~n', [Term])
                ))
        )).
apply_to_plugin(format(plugin), Variant) :-
    forall(
        dcs:property_of_variant(plugin:id(ID0, Plugin), Variant),
        (   restyle_identifier_ex(one_two, ID0, ID_),
            downcase_atom(ID_, ID),
            forall(
                dict_compound(Plugin, Property),
                format('~q.~n', [of_plugin(Property, ID)]))
        )).

property_of(option, of_option).
property_of(skin, of_skin).
