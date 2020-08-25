:- module(dcs_me_route, []).

:- multifile dcs:property_of_route_action/2.

dcs:property_of_route_action(me:Property, RouteAction) :-
    nonvar(Property),
    actions(Property, RouteAction).

:- include(me_route/actions).
