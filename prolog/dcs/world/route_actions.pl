:- module(dcs_world_route_actions, [route_action_property/2]).

:- ensure_loaded(library(dcs/world)).
:- ensure_loaded(dcs(world)).
:- ensure_loaded(dcs(me_route)).

%!  route_action_property(?RouteAction, ?Property) is nondet.

route_action_property(RouteAction, Property) :-
    dcs:property_of_route_action(defined, RouteAction),
    dcs:property_of_route_action(Property, RouteAction).

%!  dcs:property_of_route_action(?Property, ?RouteAction) is nondet.
%
%   The two-tier implementation of property allows for non-deterministic
%   versus semi-deterministic behaviour. The qualified non-deterministic
%   version searches for and unifies with all possible solutions.
%
%   Use of me:type(_) for analysis  of   defined  entities (in this case
%   route actions) allows for collapse   to semi-determinism _without_ a
%   trailing choice-point. Is this because type  is non-unique for route
%   action and therefore forces the  predicate   indexer  to find unique
%   matches? Using action or name leaves   an unnecessary choice when no
%   other solutions exist.

dcs:property_of_route_action(defined, RouteAction) :-
    dcs:property_of_route_action(me:type(_), RouteAction).
dcs:property_of_route_action(action(Action), RouteAction) :-
    once(dcs:property_of_route_action(me:action(Action), RouteAction)).
dcs:property_of_route_action(type(Type), RouteAction) :-
    once(dcs:property_of_route_action(me:type(Type), RouteAction)).
dcs:property_of_route_action(name(Name), RouteAction) :-
    once(dcs:property_of_route_action(me:name(Name), RouteAction)).

dcs:property_of_action(Property, route:RouteAction) :-
    route_action_property(RouteAction, Property).
