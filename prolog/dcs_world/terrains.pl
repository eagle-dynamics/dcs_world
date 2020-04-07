:- module(dcs_world_terrains, [terrain_property/2]).

:- use_module(plugins).

:- multifile dcs:property_of_terrain/2.

%!  terrain_property(?Terrain, ?Property) is nondet.
%
%   Terrains exist as DCS World  plug-ins.   Find  terrain properties by
%   searching the plug-ins. Terrains have plug-in  type of "terrain" and
%   an id/1 property matching the terrain  identifier. Properties of the
%   terrain plug-in map to properties of the   terrain.  The name of the
%   plug-in becomes the name of the terrain.

terrain_property(Terrain, Property) :-
    dcs:property_of_terrain(Property, Terrain).

dcs:property_of_terrain(Property, Terrain) :-
    plugin_property(Terrain, type("terrain")),
    plugin_property(Terrain, Property).
