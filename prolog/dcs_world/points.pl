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

dcs:property_of_point(dimensions(2), Point) :-
    dcs:property_of_point(point(_, _), Point).
dcs:property_of_point(dimensions(3), Point) :-
    dcs:property_of_point(point(_, _, _), Point).

dcs:property_of_point(northing(Northing), Point) :-
    dcs:property_of_point(point(Northing, _), Point).
dcs:property_of_point(northing(Northing), Point) :-
    dcs:property_of_point(point(Northing, _, _), Point).

dcs:property_of_point(easting(Easting), Point) :-
    dcs:property_of_point(point(_, Easting), Point).
dcs:property_of_point(easting(Easting), Point) :-
    dcs:property_of_point(point(_, _, Easting), Point).

dcs:property_of_point(altitude(Altitude), Point) :-
    dcs:property_of_point(point(_, Altitude, _), Point).
