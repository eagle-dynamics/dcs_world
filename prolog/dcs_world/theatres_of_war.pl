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
    theatre_of_war(TheatreOfWar, Property).
theatre_of_war_property(TheatreOfWar, Property) :-
    dcs:property_of_theatre_of_war(Property, TheatreOfWar).

dcs:property_of_theatre_of_war(defined, TheatreOfWar) :-
    theatre_of_war(TheatreOfWar, name(_)).

theatre_of_war(caucasus,beacons_file("./Mods/terrains/Caucasus\\Beacons.lua")).
theatre_of_war(caucasus,config_filename("./Mods/terrains/Caucasus\\terrain.cfg.lua")).
theatre_of_war(caucasus,config_filename_dll("./Mods/terrains/Caucasus\\terrain.cfg.lua.dll")).
theatre_of_war(caucasus,description("This region along the eastern Black Sea consists of Russian, Georgian, and Turkish territory. This area includes many airbases, urban areas, lines of communications, and all four seasons.")).
theatre_of_war(caucasus,folder("./Mods/terrains/Caucasus\\")).
theatre_of_war(caucasus,image("./Mods/terrains/Caucasus\\map.png")).
theatre_of_war(caucasus,localized_name("Caucasus")).
theatre_of_war(caucasus,name("Caucasus")).
theatre_of_war(caucasus,nodes_file("./Mods/terrains/Caucasus\\MissionGenerator/nodes.lua")).
theatre_of_war(caucasus,nodes_map_borders(-418619.1875)).
theatre_of_war(caucasus,nodes_map_borders(113728.15625)).
theatre_of_war(caucasus,nodes_map_borders(26382.5)).
theatre_of_war(caucasus,nodes_map_borders(943187.0625)).
theatre_of_war(caucasus,nodes_map_file("./Mods/terrains/Caucasus\\MissionGenerator/nodesMap.png")).
theatre_of_war(nevada,beacons_file("./Mods/terrains/Nevada\\Beacons.lua")).
theatre_of_war(nevada,config_filename("./Mods/terrains/Nevada\\terrain.cfg.lua")).
theatre_of_war(nevada,config_filename_dll("./Mods/terrains/Nevada\\terrain.cfg.lua.dll")).
theatre_of_war(nevada,description("The Nevada Test and Training Range (NTTR) has the largest contiguous air and ground space available for peacetime military operations in the free world. The NTTR land area includes simulated air defense systems, mock airbases, and several target ranges. The NTTR was also used for nuclear testing. Today, it is home to RED FLAG and other military exercises that include countries from around the world. The NTTR map for DCS World 2 includes Nellis AFB, Creech AFB, and the infamous Groom Lake AFB (aka Area 51). This map also includes the city of Las Vegas, McCarran International Airport, and Hoover Dam.")).
theatre_of_war(nevada,folder("./Mods/terrains/Nevada\\")).
theatre_of_war(nevada,image("./Mods/terrains/Nevada\\map.png")).
theatre_of_war(nevada,localized_name("Nevada")).
theatre_of_war(nevada,name("Nevada")).
theatre_of_war(nevada,nodes_file("./Mods/terrains/Nevada\\MissionGenerator/nodes.lua")).
theatre_of_war(nevada,nodes_map_borders(-497851.625)).
theatre_of_war(nevada,nodes_map_borders(-328660.90625)).
theatre_of_war(nevada,nodes_map_borders(-167608.921875)).
theatre_of_war(nevada,nodes_map_borders(210510.859375)).
theatre_of_war(nevada,nodes_map_file("./Mods/terrains/Nevada\\MissionGenerator/nodesMap.png")).
theatre_of_war(normandy,beacons_file("./Mods/terrains/Normandy\\Beacons.lua")).
theatre_of_war(normandy,config_filename("./Mods/terrains/Normandy\\terrain.cfg.lua")).
theatre_of_war(normandy,config_filename_dll("./Mods/terrains/Normandy\\terrain.cfg.lua.dll")).
theatre_of_war(normandy,description("The DCS: Normandy 1944 Map is centered on the World War II battlefield of Normandy, France and is specifically created to depict the period after the D-Day landings and the establishment of several allied airfields in Normandy to support the beachhead breakout in late June 1944. The map measures 267 x 348 kilometers and includes airfields in both Normandy and southern England. The map includes the famous D-Day landing beaches and the \"Atlantic Wall\", rolling bocage fields of Normandy, large cities like Caen and Rouen, ports of Cherbourg and Le Havre, and 30 airfields. The map also includes multiple seasons and more detail and accuracy than any previous DCS World map by utilizing new map technologies.")).
theatre_of_war(normandy,folder("./Mods/terrains/Normandy\\")).
theatre_of_war(normandy,image("./Mods/terrains/Normandy\\map.png")).
theatre_of_war(normandy,localized_name("Normandy")).
theatre_of_war(normandy,name("Normandy")).
theatre_of_war(normandy,nodes_file("./Mods/terrains/Normandy\\MissionGenerator/nodes.lua")).
theatre_of_war(normandy,nodes_map_borders(-132707.84375)).
theatre_of_war(normandy,nodes_map_borders(-389942.90625)).
theatre_of_war(normandy,nodes_map_borders(185756.15625)).
theatre_of_war(normandy,nodes_map_borders(165065.078125)).
theatre_of_war(normandy,nodes_map_file("./Mods/terrains/Normandy\\MissionGenerator/nodesMap.png")).
theatre_of_war(persian_gulf,beacons_file("./Mods/terrains/PersianGulf\\Beacons.lua")).
theatre_of_war(persian_gulf,config_filename("./Mods/terrains/PersianGulf\\terrain.cfg.lua")).
theatre_of_war(persian_gulf,config_filename_dll("./Mods/terrains/PersianGulf\\terrain.cfg.lua.dll")).
theatre_of_war(persian_gulf,description("The Persian Gulf Map for DCS World focuses on the Strait of Hormuz, which is the strategic choke point between the oil-rich Persian Gulf and the rest of the world. Flanked by Iran to the North and western-supported UAE and Oman to the south, this has been one of the world's most dangerous flash points for decades. It was the location of Operation Praying Mantis in 1988 in which the US Navy sank several Iranian naval vessels.")).
theatre_of_war(persian_gulf,folder("./Mods/terrains/PersianGulf\\")).
theatre_of_war(persian_gulf,image("./Mods/terrains/PersianGulf\\map.png")).
theatre_of_war(persian_gulf,localized_name("Persian Gulf")).
theatre_of_war(persian_gulf,name("PersianGulf")).
theatre_of_war(persian_gulf,nodes_file("./Mods/terrains/PersianGulf\\MissionGenerator/nodes.lua")).
theatre_of_war(persian_gulf,nodes_map_borders(-218768.75)).
theatre_of_war(persian_gulf,nodes_map_borders(-392081.9375)).
theatre_of_war(persian_gulf,nodes_map_borders(197357.90625)).
theatre_of_war(persian_gulf,nodes_map_borders(333129.125)).
theatre_of_war(persian_gulf,nodes_map_file("./Mods/terrains/PersianGulf\\MissionGenerator/nodesMap.png")).
