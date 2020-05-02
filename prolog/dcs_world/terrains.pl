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
%
%       * defined
%       * id(ID:string)
%
%       Terrain is defined if it has an ID   string; it has an ID string
%       matching the plug-in ID.
%
%       * plugin(Property:any)
%
%       Property of terrain plug-in.
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
    dcs:property_of_terrain(plugin(id(ID)), Terrain).

dcs:property_of_terrain(plugin(Property), Terrain) :-
    plugin_property(plugin(Terrain), type("terrain")),
    plugin_property(plugin(Terrain), Property).

:- multifile dcs:property_of_point/2.

dcs:property_of_point(terrain(Terrain, Property), Point) :-
    terrain_property(Terrain, defined),
    property_of_point(Property, Arguments),
    Point =.. [Terrain|Arguments].

property_of_point(point(X, Y), [X, Y]).
property_of_point(point(X, Y, Z), [X, Y, Z]).

dcs:property_of_terrain(config:Config, Terrain) :-
    config_of_terrain(Config, Terrain).

config_of_terrain(id("Caucasus"),caucasus).
config_of_terrain(bound(sw,[-600,0,-560]),caucasus).
config_of_terrain(bound(ne,[380,0,1130]),caucasus).
config_of_terrain(camera(default,[-355,0.2,618]),caucasus).
config_of_terrain(bullseye(default,blue(x(-291014))),caucasus).
config_of_terrain(bullseye(default,blue(y(617414))),caucasus).
config_of_terrain(bullseye(default,red(x(11557))),caucasus).
config_of_terrain(bullseye(default,red(y(371700))),caucasus).
config_of_terrain(id("Nevada"),nevada).
config_of_terrain(bound(sw,[-600,0,-450]),nevada).
config_of_terrain(bound(ne,[0,0,225]),nevada).
config_of_terrain(camera(default,[-288.62,1.637,-88.323]),nevada).
config_of_terrain(bullseye(default,blue(x(-409931.344))),nevada).
config_of_terrain(bullseye(default,blue(y(-14024.097))),nevada).
config_of_terrain(bullseye(default,red(x(-288293.969))),nevada).
config_of_terrain(bullseye(default,red(y(-88022.641))),nevada).
config_of_terrain(id("Normandy"),normandy).
config_of_terrain(bound(sw,[-130,0,-280]),normandy).
config_of_terrain(bound(ne,[220,0,190]),normandy).
config_of_terrain(camera(default,[-12,0.8,-46]),normandy).
config_of_terrain(bullseye(default,blue(x(-11938.056641))),normandy).
config_of_terrain(bullseye(default,blue(y(-47277.990234))),normandy).
config_of_terrain(bullseye(default,red(x(-45898.337891))),normandy).
config_of_terrain(bullseye(default,red(y(112233.773438))),normandy).
config_of_terrain(id("PersianGulf"),persian_gulf).
config_of_terrain(bound(sw,[-460,0,-900]),persian_gulf).
config_of_terrain(bound(ne,[800,0,800]),persian_gulf).
config_of_terrain(camera(default,[67.35,0.3,-35.61]),persian_gulf).
config_of_terrain(bullseye(default,blue(x(0))),persian_gulf).
config_of_terrain(bullseye(default,blue(y(0))),persian_gulf).
config_of_terrain(bullseye(default,red(x(0))),persian_gulf).
config_of_terrain(bullseye(default,red(y(0))),persian_gulf).
