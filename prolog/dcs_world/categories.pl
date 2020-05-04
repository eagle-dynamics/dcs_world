:- module(dcs_world_categories, [category_property/2]).

/** <module> Type and group categories
 *
 * Two  kinds  of  category  exist  within  DCS  simulators:  unit  type
 * categories and group categories. They have   a connection, though not
 * the same thing. The  former  is  a   superset  of  the  latter;  type
 * categories subsume those for groups.
 *
 * In effect, at  spawn-time  the  group   category  selects  the  group
 * controller kind. Plane selects a  plane   controller,  vehicle  for a
 * vehicle controller; same for helicopter, ship   and train. Take an M1
 * barrage  balloon  (m1_vla)  for   example.    It   classifies   as  a
 * lighter-than-air vehicle type  category,  but   a  group-category  of
 * ground object.
 *
 * @author R3DL1N3 <r0y@digitalcombatsimulator.world>
 */

:- multifile dcs:property_of_category/2.

%!  category_property(?Category, ?Property) is nondet.
%
%   Property of Category.
%
%   ---+++ group:Property
%
%   Property of group Category.
%
%       * category(Category0:nonneg)

category_property(Category, group:Property) :-
    group(Property, Category).
category_property(Category, Property) :-
    dcs:property_of_category(Property, Category).

group(category(0), airplane).
group(category(1), helicopter).
group(category(2), ground).
group(category(3), ship).
group(category(4), train).
