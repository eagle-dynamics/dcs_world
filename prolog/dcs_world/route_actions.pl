:- module(dcs_world_route_actions, [route_action_property/2]).

:- multifile dcs:property_of_route_action/2.

:- include(me_route/actions).

route_action_property(RouteAction, Property) :-
    (   actions(Property, RouteAction)
    *-> true
    ;   dcs:property_of_route_action(Property, RouteAction)
    ).

dcs:property_of_route_action(defined, RouteAction) :-
    actions(name(_), RouteAction).
