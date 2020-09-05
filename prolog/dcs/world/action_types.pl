:- module(dcs_world_action_types, [action_type_property/2]).

:- ensure_loaded(library(dcs/world)).
:- ensure_loaded(dcs(world)).
:- ensure_loaded(dcs(me_action_db)).

%!  action_type_property(?ActionType, ?Property) is nondet.
%
%   Property of ActionType.
%
%   There are four types of action:
%
%       1. Perform task
%       2. Start en-route task
%       3. Perform command
%       4. Set option
%
%   You can see them using the following queries.
%
%       ?- [library(dcs/world), dcs_world(action_types)].
%       true.
%
%       ?- action_type_property(A, defined).
%       A = perform_task ;
%       A = start_enroute_task ;
%       A = perform_command ;
%       A = set_option.

action_type_property(ActionType, Property) :-
    dcs:property_of_action_type(defined, ActionType),
    dcs:property_of_action_type(Property, ActionType).

dcs:property_of_action_type(defined, ActionType) :-
    dcs:property_of_action_type(me:id(_), ActionType).
dcs:property_of_action_type(id(ID), ActionType) :-
    once(dcs:property_of_action_type(me:id(ID), ActionType)).
