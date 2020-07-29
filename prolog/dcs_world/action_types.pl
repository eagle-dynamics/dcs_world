:- module(dcs_world_action_types, [action_type_property/2]).

:- multifile dcs:property_of_action_type/2.

:- include(action_types/action_type_data).

action_type_property(ActionType, Property) :-
    (   action_type_data(Property, ActionType)
    *-> true
    ;   dcs:property_of_action_type(Property, ActionType)
    ).

dcs:property_of_action_type(defined, ActionType) :-
    action_type_data(id(_), ActionType).
