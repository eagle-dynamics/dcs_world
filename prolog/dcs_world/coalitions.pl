:- module(dcs_world_coalitions, [coalition_apply/2, coalition_property/2]).

:- multifile dcs:apply_to_coalition/2.

%!  coalition_apply(?Coalition:atom, ?Apply) is nondet.
%
%   Apply to Coalition.

coalition_apply(Coalition, Apply) :-
    dcs:apply_to_coalition(Apply, Coalition).

:- multifile dcs:property_of_coalition/2.

%!  coalition_property(?Coalition:atom, ?Property) is nondet.
%
%   Property of Coalition.
%
%       * defined
%       * side(Side:nonneg)
%
%       Side index for Coalition.
%
%       * hostile(Hostile:atom)
%       * friendly(Friendly:atom)
%
%   @arg Coalition atomic name for coalition
%   @arg Side integer index assigned to Coalition

coalition_property(Coalition, side(Side)) :-
    side(Coalition, Side).
coalition_property(Coalition, Property) :-
    dcs:property_of_coalition(Property, Coalition).

dcs:property_of_coalition(defined, Coalition) :-
    side(Coalition, _).

side(neutral,                           0).
side(red,                               1).
side(blue,                              2).

dcs:property_of_coalition(hostile(red), blue).
dcs:property_of_coalition(hostile(blue), red).
dcs:property_of_coalition(friendly(red), red).
dcs:property_of_coalition(friendly(blue), blue).
