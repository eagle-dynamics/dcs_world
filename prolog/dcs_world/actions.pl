:- module(dcs_world_actions, [action_property/2]).

:- use_module(action_types).

:- multifile dcs:property_of_action/2.

:- include(me_action_db/actions_data).

action_property(Action, Property) :-
    (   actions_data(Property, Action)
    *-> true
    ;   dcs:property_of_action(Property, Action)
    ).

dcs:property_of_action(defined, Action) :-
    actions_data(id(_), Action).
dcs:property_of_action(action_type(ActionType), Action) :-
    actions_data(type(ID), Action),
    action_type_property(ActionType, id(ID)).
