:- module(dcs_world_points, [point_property/2]).

/** <module> Somewhere within a theatre
 *
 */

:- multifile dcs:property_of_point/2.

point_property(Point, Property) :-
    dcs:property_of_point(Property, Point).

dcs:property_of_point(terrain(Terrain), Point) :-
    dcs:property_of_point(terrain(Terrain, _), Point).
dcs:property_of_point(point(X, Y), Point) :-
    dcs:property_of_point(terrain(_, point(X, Y)), Point).
dcs:property_of_point(point(X, Y, Z), Point) :-
    dcs:property_of_point(terrain(_, point(X, Y, Z)), Point).
