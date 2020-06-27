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

%!  theatre_of_war_property(?TheatreOfWar:atom, ?Property) is nondet.
%
%   Property of TheatreOfWar.

theatre_of_war_property(TheatreOfWar, Property) :-
    dcs:property_of_theatre_of_war(defined, TheatreOfWar),
    dcs:property_of_theatre_of_war(Property, TheatreOfWar).

dcs:property_of_theatre_of_war(Property, TheatreOfWar) :-
    of_theatre_of_war(Property, TheatreOfWar).

of_theatre_of_war(defined, TheatreOfWar) :- of_theatre_of_war(name(_), TheatreOfWar).

:- include(theatres_of_war/of_theatre_of_war).
