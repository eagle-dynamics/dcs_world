:- module(dcs_world_theatres_of_war, [theatre_of_war_property/2]).

/** <module> Theatres of war
 *
 * What is a theatre of war? Theatres  of war align with terrains. They
 * are  not  terrains,   however.   Theatres    comprise:   a   terrain
 * configuration, beacons and nodes. As an   example, the following are
 * the parameters for the Caucasus "theatre  of war." Excludes the long
 * theatre description.
 *
 * |   beacons_file    |         "./Mods/terrains/Caucasus\\Beacons.lua"         |
 * |  config_filename  |       "./Mods/terrains/Caucasus\\terrain.cfg.lua"       |
 * |config_filename_dll|     "./Mods/terrains/Caucasus\\terrain.cfg.lua.dll"     |
 * |      folder       |              "./Mods/terrains/Caucasus\\"               |
 * |       image       |           "./Mods/terrains/Caucasus\\map.png"           |
 * |  localized_name   |                       "Caucasus"                        |
 * |       name        |                       "Caucasus"                        |
 * |    nodes_file     | "./Mods/terrains/Caucasus\\MissionGenerator/nodes.lua"  |
 * | nodes_map_borders |     [-418619.1875,113728.15625,26382.5,943187.0625]     |
 * |  nodes_map_file   |"./Mods/terrains/Caucasus\\MissionGenerator/nodesMap.png"|
 *
 * @author R3DL1N3 <r0y@digitalcombatsimulator.world>
 */

:- multifile dcs:property_of_theatre_of_war/2.

:- include(library(dcs/theatre_of_war/data)).

utc_offset(caucasus,                    4).
utc_offset(nevada,                     -8).
utc_offset(normandy,                    0).
utc_offset(persian_gulf,                4).
utc_offset(the_channel,                 0).
utc_offset(syria,                       3).

utc_of_theatre_of_war(offset(Offset), TheatreOfWar) :-
    utc_offset(TheatreOfWar, Offset0),
    Offset is 3600 * Offset0.

%!  theatre_of_war_property(?TheatreOfWar:atom, ?Property) is nondet.
%
%   Property of TheatreOfWar.
%
%   ---+++ utc:Property
%
%   Property of UTC, coordinated universal time.
%
%       * offset(Offset)
%
%       Offset  of  coordinated  universal  time   for  TheatreOfWar  in
%       seconds. Theatre of war determines time   zone. For example, the
%       Caucasus theatre operates at UTC+4 hours, Georgia Standard Time,
%       as does the Persian Gulf.  Gulf   Standard  Time runs four hours
%       ahead of universal time. The Channel   and Normandy theatres run
%       at UTC+0, Nevada at UTC-8.

theatre_of_war_property(TheatreOfWar, Property) :-
    (   data(Property, TheatreOfWar)
    *-> true
    ;   dcs:property_of_theatre_of_war(Property, TheatreOfWar)
    ).

dcs:property_of_theatre_of_war(defined, TheatreOfWar) :-
    theatre_of_war_property(TheatreOfWar, name(_)).
dcs:property_of_theatre_of_war(utc:Property, TheatreOfWar) :-
    nonvar(Property),
    utc_of_theatre_of_war(Property, TheatreOfWar).
