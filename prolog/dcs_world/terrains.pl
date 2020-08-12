:- module(dcs_world_terrains, [terrain_property/2]).

:- use_module(plugins).

:- multifile dcs:property_of_terrain/2.

:- multifile dcs:property_of_point/2.

:- include(terrain/config).

plugin_of_terrain(Property, Terrain) :-
    plugin_property(Terrain, type("terrain")),
    plugin_property(Terrain, Property).

property_of_point(point(X, Y), [X, Y]).
property_of_point(point(X, Y, Z), [X, Y, Z]).

%!  terrain_property(?Terrain, ?Property) is nondet.
%
%   Terrains exist as DCS World  plug-ins.   Find  terrain properties by
%   searching the plug-ins. Terrains have plug-in  type of "terrain" and
%   an id/1 property matching the terrain  identifier. Properties of the
%   terrain plug-in map to properties of the   terrain.  The name of the
%   plug-in becomes the name of the terrain.
%
%       * defined
%       * id(ID:string)
%
%       Terrain is defined if it has an ID   string; it has an ID string
%       matching the plug-in ID.
%
%   ---+++ plugin:Property
%
%   Property of terrain plug-in.
%
%   ---+++ config:Property
%
%   Property of Terrain configuration.
%
%       * id(ID)
%       * bound(sw, XYZ)
%       * bound(ne, XYZ)
%       * camera(default, XYZ)
%       * bullseye(default, red(x(X)))
%       * bullseye(default, red(y(Y)))
%       * bullseye(default, blue(x(X)))
%       * bullseye(default, blue(y(Y)))
%
%   @arg ID of terrain, a string.
%   @arg XYZ list(number) X, Y and Z.

terrain_property(Terrain, Property) :-
    dcs:property_of_terrain(Property, Terrain).

dcs:property_of_terrain(defined, Terrain) :-
    dcs:property_of_terrain(id(_), Terrain).
dcs:property_of_terrain(id(ID), Terrain) :-
    dcs:property_of_terrain(plugin:id(ID), Terrain).
dcs:property_of_terrain(plugin:Property, Terrain) :-
    nonvar(Property),
    plugin_of_terrain(Property, Terrain).
dcs:property_of_terrain(config:Property, Terrain) :-
    nonvar(Property),
    config(Property, Terrain).

dcs:property_of_point(terrain(Terrain, Property), Point) :-
    terrain_property(Terrain, defined),
    property_of_point(Property, Arguments),
    Point =.. [Terrain|Arguments].
