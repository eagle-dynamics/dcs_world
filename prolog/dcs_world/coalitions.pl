:- module(dcs_world_coalitions, [coalition_apply/2, coalition_property/2]).

/** <module> Neutral, red or blue
 *
 * @author R3DL1N3 <r0y@digitalcombatsimulator.world>
 */

:- multifile dcs:apply_to_coalition/2, dcs:property_of_coalition/2.

side(neutral,                           0).
side(red,                               1).
side(blue,                              2).

sides(neutrals,                         0).
sides(red,                              1).
sides(blue,                             2).

%!  coalition_apply(?Coalition:atom, ?Apply) is nondet.
%
%   Apply to Coalition.

coalition_apply(Coalition, Apply) :-
    nonvar(Apply),
    dcs:apply_to_coalition(Apply, Coalition).

%!  coalition_property(?Coalition:atom, ?Property) is nondet.
%
%   Property of Coalition.
%
%       * defined
%
%       Succeeds for defined coalitions. Fails otherwise.
%
%       * side(Side:nonneg)
%
%       Side index for Coalition.
%
%       * hostile(Hostile:atom)
%
%       Succeeds if Hostile is *not* neutral and not on the same side.
%
%       * friendly(Friendly:atom)
%
%       Succeeds  if  Coalition  is  friends    with   another  Friendly
%       coalition, meaning belonging to the same coalition. Red and blue
%       are not friendly with neutrals,  but   are  not  hostile either.
%       Units are coalition objects: they know their coalition.
%
%   @arg Coalition atomic name for coalition
%   @arg Side integer index assigned to Coalition

coalition_property(Coalition, side(Side)) :- side(Coalition, Side).
coalition_property(Coalition, Property) :-
    dcs:property_of_coalition(defined, Coalition),
    dcs:property_of_coalition(Property, Coalition).

dcs:property_of_coalition(defined, Coalition) :- side(Coalition, _).
dcs:property_of_coalition(hostile(red), blue).
dcs:property_of_coalition(hostile(blue), red).
dcs:property_of_coalition(friendly(red), red).
dcs:property_of_coalition(friendly(blue), blue).
dcs:property_of_coalition(coalitions(Coalitions), Coalition) :-
    side(Coalition, Side),
    sides(Coalitions, Side).
