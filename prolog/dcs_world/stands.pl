:- module(dcs_world_stands, [stand_property/2]).

:- use_module(airdromes).

/** <module> Parking spot at aerodrome
 *
 * @author R3DL1N3 <r0y@digitalcombatsimulator.world>
 */

:- include(library(dcs/terrain/stand)).

:- multifile dcs:property_of_stand/2.

alpha_of_stand_name(Name, Alpha) :-
    string_code(1, Name, Code),
    code_type(Code, alpha),
    string_codes(Alpha, [Code]).

%!  stand_property(?Stand, ?Property) is nondet.
%
%   Property of Stand.
%
%   Stands have two types of property: preloaded and derived. The latter
%   exist as dcs:property_of_stand/2  predicate   clauses.  These  rules
%   apply after searching the pre-configured stand database.
%
%       * airdrome(Airdrome:atom, crossroad(Crossroad:positive_integer))
%
%       * airdrome(Airdrome:atom)
%
%       * terrain(Terrain:atom)
%
%       Terrain of stand by finding the   stand's  airdrome then finding
%       the airdrome's terrain. Follows the  container relationship from
%       stand to airdrome, airdrome to terrain.
%
%       * alpha(Alpha:atom)
%
%       The first letter of the stand restyled  as a lowercase atom, =h=
%       for    helicopter    stands,    etc.    For    example,    query
%       stand_property(Stand, alpha(h)) finds all  the stands throughout
%       the known world in all  available   terrain  maps  where a Stand
%       begins with H for  helicopter.  Solutions   as  follows  for the
%       current versions.
%
%           +-----------------------------------+
%           |        tbilisi_lochini(63)        |
%           |        tbilisi_lochini(64)        |
%           |        tbilisi_lochini(65)        |
%           |        tbilisi_lochini(66)        |
%           |           creech_afb(6)           |
%           |           creech_afb(7)           |
%           |           creech_afb(8)           |
%           |           creech_afb(9)           |
%           |          creech_afb(10)           |
%           |          creech_afb(11)           |
%           |          creech_afb(12)           |
%           |          creech_afb(13)           |
%           |          creech_afb(14)           |
%           |          creech_afb(15)           |
%           |          creech_afb(16)           |
%           |          creech_afb(17)           |
%           |          creech_afb(18)           |
%           |         groom_lake_afb(2)         |
%           |         groom_lake_afb(3)         |
%           |         groom_lake_afb(4)         |
%           |         groom_lake_afb(5)         |
%           |mc_carran_international_airport(7) |
%           |mc_carran_international_airport(8) |
%           |mc_carran_international_airport(9) |
%           |mc_carran_international_airport(10)|
%           |mc_carran_international_airport(11)|
%           |mc_carran_international_airport(12)|
%           |mc_carran_international_airport(13)|
%           |mc_carran_international_airport(14)|
%           |          nellis_afb(154)          |
%           |          nellis_afb(155)          |
%           |          nellis_afb(156)          |
%           |          nellis_afb(157)          |
%           |          nellis_afb(158)          |
%           |          nellis_afb(159)          |
%           |          nellis_afb(160)          |
%           |          nellis_afb(161)          |
%           |     boulder_city_airport(19)      |
%           |     boulder_city_airport(21)      |
%           |     boulder_city_airport(22)      |
%           |     boulder_city_airport(25)      |
%           |     boulder_city_airport(26)      |
%           |     boulder_city_airport(27)      |
%           |     boulder_city_airport(29)      |
%           |     boulder_city_airport(30)      |
%           |     boulder_city_airport(31)      |
%           |     boulder_city_airport(39)      |
%           |            echo_bay(0)            |
%           |            echo_bay(1)            |
%           |  henderson_executive_airport(0)   |
%           |  henderson_executive_airport(1)   |
%           |       laughlin_airport(11)        |
%           |       laughlin_airport(12)        |
%           |       laughlin_airport(13)        |
%           |       laughlin_airport(17)        |
%           |            mesquite(2)            |
%           |        north_las_vegas(24)        |
%           |        north_las_vegas(25)        |
%           |        north_las_vegas(26)        |
%           |        north_las_vegas(48)        |
%           |        north_las_vegas(49)        |
%           |        north_las_vegas(50)        |
%           |       bandar_abbas_intl(2)        |
%           |       bandar_abbas_intl(3)        |
%           |       bandar_abbas_intl(5)        |
%           |       bandar_abbas_intl(9)        |
%           |       bandar_abbas_intl(10)       |
%           |       bandar_abbas_intl(11)       |
%           |       bandar_abbas_intl(21)       |
%           |       bandar_abbas_intl(27)       |
%           +-----------------------------------+
%
%       * plane
%
%       Stand with no letter prefix.
%
%       * point(Point:compound)
%
%   @arg Airdrome atom of aerodrome,  somewhere   within  the world. Use
%   airdrome_property(Airdrome, terrain(Terrain, id(_))) to  find out in
%   which terrain the aerodrome exists.
%
%   @arg Crossroad integer index of stand within Airdrome.

stand_property(Stand, Property) :-
    stand(Property, Stand).
stand_property(Stand, Property) :-
    dcs:property_of_stand(defined, Stand),
    dcs:property_of_stand(Property, Stand).

dcs:property_of_stand(defined, Stand) :-
    dcs:property_of_stand(airdrome(_, crossroad(_)), Stand).
dcs:property_of_stand(airdrome(Airdrome, crossroad(Crossroad)), Stand) :-
    stand(crossroad_index(Crossroad), Stand),
    Stand =.. [Airdrome, _Name].
dcs:property_of_stand(airdrome(Airdrome), Stand) :-
    dcs:property_of_stand(airdrome(Airdrome, crossroad(_)), Stand).
dcs:property_of_stand(terrain(Terrain), Stand) :-
    dcs:property_of_stand(airdrome(Airdrome), Stand),
    airdrome_property(Airdrome, terrain(Terrain)).
dcs:property_of_stand(alpha(Alpha), Stand) :-
    stand_property(Stand, name(Name)),
    alpha_of_stand_name(Name, Alpha0),
    downcase_atom(Alpha0, Alpha).
dcs:property_of_stand(plane, Stand) :-
    stand_property(Stand, name(Name)),
    \+ alpha_of_stand_name(Name, _).
dcs:property_of_stand(point(Point), Stand) :-
    dcs:property_of_stand(airdrome(Airdrome, crossroad(_)), Stand),
    airdrome_property(Airdrome, terrain(Terrain, id(_))),
    once(stand_property(Stand, x(X))),
    once(stand_property(Stand, y(Y))),
    dcs:property_of_point(terrain(Terrain, point(X, Y)), Point).

:- multifile dcs:property_of_point/2.

dcs:property_of_point(stand(Stand), Point) :-
    dcs:property_of_stand(point(Point), Stand).
