:- module(dcs_world_points, [point_property/2]).

/** <module> Somewhere within a theatre of war
 *
 * Points are locations within a theatre of   war.  In other words, they
 * specify one defined theatre of war   plus  a coordinate. Points exist
 * within  worlds.  Vectors  exist  within  variants.  Worlds  translate
 * between  point  and  vector  when  communicating  between  world  and
 * variant. Points have two varieties:  two- or three-dimensional. Point
 * is a compound of the form Terrain/2 or Terrain/3 where Terrain is one
 * of terrain_property(Terrain, defined).
 *
 * @author R3DL1N3 <r0y@digitalcombatsimulator.world>
 */

:- multifile dcs:property_of_point/2.

%!  point_property(+Point, ?Property) is nondet.
%
%   Property of Point.
%
%       * terrain(Terrain, point(X, Y))
%       * terrain(Terrain, point(X, Y, Z))
%       * terrain(Terrain)
%       * point(X, Y)
%       * point(X, Y, Z)
%       * northing(Northing)
%       * easting(Easting)
%       * altitude(Altitude)
%       * dimensions(Dimensions)

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
