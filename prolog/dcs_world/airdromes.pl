:- module(dcs_world_airdromes, [airdrome_property/2]).

:- use_module(terrains).
:- use_module(points).

/** <module> Aerodromes throughout terrains
 *
 */

:- multifile dcs:property_of_airdrome/2.

%!  airdrome_property(?Airdrome:atom, ?Property) is nondet.
%
%   Property of Airdrome.
%
%       * defined
%
%       * terrain(Terrain:atom, id(AirdromeID:number))
%
%       Terrain and AirdromeID pair of   Airdrome. The airdrome property
%       interface does *not* project the =terrain/1=   or  =id/1= of the
%       underlying terrain-identifier identity by  design because =id/1=
%       clashes with the _id_  of  the   airdrome  corresponding  to the
%       string identifier, not the numeric one.
%
%       * terrain(Terrain:atom)
%
%       Shortcut for terrain(Terrain, id(_)) property of Airdrome. Finds
%       the terrain and identifier of the  airdrome and then throws away
%       the identifier. Used  by  stand_property/2   to  find  a stand's
%       terrain.
%
%   ---+++ config:Property
%
%   Property of Airdrome for terrain configuration.
%
%       * names(en(Name:string))
%
%       Unique Name in English for aerodrome terrain-identifier. Unifies
%       non-deterministically by unique distinct   aerodrome-name pairs.
%       The name of an aerodrome is  the   first  English  name found at
%       most, even though almost all will only have one English name.
%
%   @arg Name string name of aerodrome.
%   @arg Terrain atom of aerodrome's terrain.
%   @arg AirdromeID number of aerodrome.

airdrome_property(Airdrome, Property) :-
    dcs:property_of_airdrome(defined, Airdrome),
    dcs:property_of_airdrome(Property, Airdrome).

dcs:property_of_airdrome(defined, Airdrome) :-
    dcs:property_of_airdrome(config:defined, Airdrome).

dcs:property_of_airdrome(terrain(Terrain, id(AirdromeID)), Airdrome) :-
    dcs:property_of_airdrome(config:terrain(Terrain, id(AirdromeID)), Airdrome).

dcs:property_of_airdrome(terrain(Terrain), Airdrome) :-
    dcs:property_of_airdrome(terrain(Terrain, id(_)), Airdrome).

dcs:property_of_airdrome(code(Code), Airdrome) :-
    dcs:property_of_airdrome(config:code(Code), Airdrome).

dcs:property_of_airdrome(config:Property, Airdrome) :-
    nonvar(Property),
    of_config(Property, Airdrome).

of_config(terrain(Terrain, id(AirdromeID)), Airdrome) :-
    !,
    of_config(en(Airdrome), Terrain, AirdromeID).
of_config(Property, Airdrome) :-
    of_config(en(Airdrome), Terrain, AirdromeID),
    of_config(Property, Terrain, AirdromeID).

:- table of_config/3 as shared.

of_config(Property, Terrain, AirdromeID) :-
    terrain_property(Terrain, config:airdrome(Config)),
    Config =.. [Terrain, AirdromeID, Property].

dcs:property_of_airdrome(reference(Reference), Airdrome) :-
    reference_of_airdrome(Reference, Airdrome).

reference_of_airdrome(point(Point), Airdrome) :-
    airdrome_property(Airdrome, terrain(Terrain, id(_))),
    once(airdrome_property(Airdrome, reference_point(x(X)))),
    once(airdrome_property(Airdrome, reference_point(y(Y)))),
    point_property(Point, terrain(Terrain, point(X, Y))).
