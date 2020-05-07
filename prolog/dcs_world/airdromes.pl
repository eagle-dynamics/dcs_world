:- module(dcs_world_airdromes, [airdrome_property/2]).

:- use_module(terrains).
:- use_module(points).

:- multifile dcs:property_of_airdrome/2.

%!  airdrome_property(?Airdrome:atom, ?Property) is nondet.
%
%   Property of Airdrome.
%
%       * defined
%
%       * terrain(Terrain:atom, id(ID:number))
%
%       Terrain and airdrome ID pair of  Airdrome. The airdrome property
%       interface does *not* project  the  terrain/1   or  id/1  of  the
%       underlying terrain-identifier identity by   design  because id/1
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
%       * name(en(Name:string))
%
%       Unique Name in English for aerodrome terrain-identifier. Unifies
%       non-deterministically by unique distinct   aerodrome-name pairs.
%       The name of an aerodrome is  the   first  English  name found at
%       most, even though almost all will only have one English name.
%
%   @arg Name string name of aerodrome.
%   @arg Terrain atom of aerodrome's terrain.
%   @arg ID number of aerodrome.

airdrome_property(Airdrome, Property) :-
    terrain_id(Airdrome, TerrainID),
    airdrome(Property, TerrainID).
airdrome_property(Airdrome, Property) :-
    dcs:property_of_airdrome(defined, Airdrome),
    dcs:property_of_airdrome(Property, Airdrome).

dcs:property_of_airdrome(defined, Airdrome) :-
    terrain_id(Airdrome, _).

dcs:property_of_airdrome(terrain(Terrain, id(ID)), Airdrome) :-
    terrain_id(Airdrome, TerrainID),
    terrain_id(TerrainID, Terrain, ID).
dcs:property_of_airdrome(terrain(Terrain), Airdrome) :-
    dcs:property_of_airdrome(terrain(Terrain, id(_)), Airdrome).

dcs:property_of_airdrome(name(en(Name)), Airdrome) :-
    terrain_id(Airdrome, TerrainID),
    name_en(TerrainID, Name).

name_en(TerrainID, Name) :-
    distinct(TerrainID, airdrome(_, TerrainID)),
    once(airdrome(names(en(Name)), TerrainID)).

:- table name_en/2.

terrain_id(Airdrome, TerrainID) :-
    name_en(TerrainID, Name),
    restyle_identifier(one_two, Name, Atom),
    downcase_atom(Atom, Airdrome).

:- table terrain_id/2.

terrain_id(TerrainID, Terrain, ID) :-
    terrain_property(Terrain, defined),
    TerrainID =.. [Terrain, ID].

dcs:property_of_airdrome(reference(Reference), Airdrome) :-
    reference_of_airdrome(Reference, Airdrome).

reference_of_airdrome(point(Point), Airdrome) :-
    airdrome_property(Airdrome, terrain(Terrain, id(_))),
    once(airdrome_property(Airdrome, reference_point(x(X)))),
    once(airdrome_property(Airdrome, reference_point(y(Y)))),
    point_property(Point, terrain(Terrain, point(X, Y))).

:- include(airdromes/airdrome).

:- use_module(terrains).
:- use_module(library(swi/dicts)).

:- multifile dcs:apply_to_variant/2, dcs:property_of_variant/2.

%!  dcs:apply_to_variant(Apply, Variant) is nondet.
%
%   Apply to Variant, as follows.
%
%       * format(airdrome)
%
%       Formats airdrome/2 terms  by  iterating   through  all  terrains
%       available on Variant. Uses the   terrain identifier to construct
%       the airdrome terrain(ID) term. The   second  airdrome/2 property
%       term decomposes dictionary payloads as nested compound terms.
%
%       Load core variants and terrains   before applying the formatter.
%       Formatting airdromes requires the core  terrains module. Without
%       loading core terrains, the formatter   cannot access the variant
%       nor its terrain payloads.

dcs:apply_to_variant(format(airdrome), Variant) :-
    forall(
        dcs:apply_to_variant(theatre_of_war(_), Variant),
        dcs:apply_to_variant(terrain:format(airdrome), Variant)).

dcs:apply_to_variant(terrain:format(airdrome), Variant) :-
    dcs:property_of_variant(terrain:id(TerrainID), Variant),
    terrain_property(Terrain, id(TerrainID)),
    Term =.. [Terrain, ID],
    forall(
        dcs:property_of_variant(terrain:airdrome(ID, Airdrome), Variant),
        forall(
                dict_compound(Airdrome, Property),
                format('~q.~n', [airdrome(Property, Term)]))).
