:- module(dcs_world_actions, [action_property/2]).

:- ensure_loaded(library(dcs/world)).
:- ensure_loaded(dcs(world)).
:- ensure_loaded(dcs(me_action_db)).

:- use_module(action_types).

%!  action_property(?Action, ?Property) is nondet.
%
%   Property of Action.
%
%       * type(ActionType)
%
%       Every non-route action has a type. Route actions do not have the
%       same kind of type; route actions have  a waypoint type, a string
%       for loading into the waypoint payload with the action descriptor
%       string. In contrast, a task action  has a numerical type integer
%       indicating one of: perform task,   start  en-route task, perform
%       command or set option.
%
%       The interface hides  the   underlying  integer-type  association
%       between action and  action  type.  Asking   an  Action  for  its
%       type(ActionType)  answers  an   ActionType    atom   for   which
%       action_type_property(ActionType, defined) succeeds.

action_property(Action, Property) :-
    dcs:property_of_action(defined, Action),
    dcs:property_of_action(Property, Action).

dcs:property_of_action(defined, Action) :-
    dcs:property_of_action(me:id(_), Action).
dcs:property_of_action(id(ID), Action) :-
    once(dcs:property_of_action(me:id(ID), Action)).
dcs:property_of_action(type(ActionType), Action) :-
    once(dcs:property_of_action(me:type(Type), Action)),
    action_type_property(ActionType, id(Type)).
