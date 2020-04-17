:- module(dcs_world_callnames, [callname_property/2]).

:- multifile dcs:property_of_callname/2.

%!  callname_property(?Callname:compound, ?Property) is nondet.
%
%   Call names (short for callsign  names)   are  the names of aircraft,
%   heavy aircraft, vehicles, reference points,   AWACS, helipads, grass
%   airfields and aircraft carriers. Enfield,  Springfield, Uzi and Colt
%   are  the  first  four  aircraft  call   names,  for  example.  Named
%   presumably for guns. Axeman, Darknight,   Warrior and Pointer belong
%   to ground vehicles, as  another  example.   London  and  Dallas  for
%   helipads, and so on.
%
%   Call names belong to a category and a   country.  Each has a name, a
%   world identifier plus an optional  sound   file.  They are important
%   because the mission payloads include   mandatory  callsign names and
%   numbers. In raw form, the call-name  payloads deconstruct by country
%   then category. Raw country uses  the   world  integer identifier for
%   country representation. The cooked version  of the call-name payload
%   maps the raw country identifier with its   atomic name, also the raw
%   category name as well as the cooked category atom.
%
%   Important to note that  call  names   are  not  unique outside their
%   category. There are no  less  than   three  Enfield  call  names for
%   example; one for A-10A, another for A-10C   and  a final one for Air
%   category. For this reason, Callname is a   compound term of the form
%   Category(Name)   and   hence   disambiguates     for    Enfield   as
%   a_10a(enfield), a_10c(enfield) and air(enfield). They carry the same
%   world identifier in the current versions of DCS; see below.
%
%       ?- callname_property(Callname, world_id(ID)), Callname =.. [_, enfield].
%       Callname = a_10a(enfield), ID = 1 ;
%       Callname = a_10c(enfield), ID = 1 ;
%       Callname = air(enfield), ID = 1 ;
%       false.

callname_property(Callname, Property) :-
    callname(Callname, Property).
callname_property(Callname, Property) :-
    dcs:property_of_callname(Property, Callname).

callname(aircraft_carriers(rus),name("Salamander")).
callname(aircraft_carriers(rus),world_id(1)).
callname(grass_airfield(rus),name("A01")).
callname(grass_airfield(rus),world_id(1)).
callname(grass_airfield(rus),sound_file("A01")).
callname(grass_airfield(rus),name("B01")).
callname(grass_airfield(rus),world_id(2)).
callname(grass_airfield(rus),sound_file("B01")).
callname(helipad(rus),name("Otkrytka")).
callname(helipad(rus),world_id(1)).
callname(helipad(rus),sound_file("Otkrytka")).
callname(helipad(rus),name("Vetka")).
callname(helipad(rus),world_id(2)).
callname(helipad(rus),sound_file("Vetka")).
callname(helipad(rus),name("Yunga")).
callname(helipad(rus),world_id(3)).
callname(helipad(rus),sound_file("Yunga")).
callname(helipad(rus),name("Shpora")).
callname(helipad(rus),world_id(4)).
callname(helipad(rus),sound_file("Shpora")).
callname(helipad(rus),name("Kalitka")).
callname(helipad(rus),world_id(5)).
callname(helipad(rus),sound_file("Kalitka")).
callname(helipad(rus),name("Torba")).
callname(helipad(rus),world_id(6)).
callname(helipad(rus),sound_file("Torba")).
callname(helipad(rus),name("Kaemka")).
callname(helipad(rus),world_id(7)).
callname(helipad(rus),sound_file("Kaemka")).
callname(helipad(rus),name("Podkova")).
callname(helipad(rus),world_id(8)).
callname(helipad(rus),sound_file("Podkova")).
callname(helipad(rus),name("Skala")).
callname(helipad(rus),world_id(9)).
callname(helipad(rus),sound_file("Skala")).
callname(helipad(rus),name("Kapel")).
callname(helipad(rus),world_id(10)).
callname(helipad(rus),sound_file("Kapel")).
callname(a_10a(usa),name("Enfield")).
callname(a_10a(usa),world_id(1)).
callname(a_10a(usa),sound_file("Enfield")).
callname(a_10a(usa),name("Springfield")).
callname(a_10a(usa),world_id(2)).
callname(a_10a(usa),sound_file("Springfield")).
callname(a_10a(usa),name("Uzi")).
callname(a_10a(usa),world_id(3)).
callname(a_10a(usa),sound_file("Uzi")).
callname(a_10a(usa),name("Colt")).
callname(a_10a(usa),world_id(4)).
callname(a_10a(usa),sound_file("Colt")).
callname(a_10a(usa),name("Dodge")).
callname(a_10a(usa),world_id(5)).
callname(a_10a(usa),sound_file("Dodge")).
callname(a_10a(usa),name("Ford")).
callname(a_10a(usa),world_id(6)).
callname(a_10a(usa),sound_file("Ford")).
callname(a_10a(usa),name("Chevy")).
callname(a_10a(usa),world_id(7)).
callname(a_10a(usa),sound_file("Chevy")).
callname(a_10a(usa),name("Pontiac")).
callname(a_10a(usa),world_id(8)).
callname(a_10a(usa),sound_file("Pontiac")).
callname(a_10a(usa),name("Hawg")).
callname(a_10a(usa),world_id(9)).
callname(a_10a(usa),sound_file("Hawg")).
callname(a_10a(usa),name("Boar")).
callname(a_10a(usa),world_id(10)).
callname(a_10a(usa),sound_file("Boar")).
callname(a_10a(usa),name("Pig")).
callname(a_10a(usa),world_id(11)).
callname(a_10a(usa),sound_file("Pig")).
callname(a_10a(usa),name("Tusk")).
callname(a_10a(usa),world_id(12)).
callname(a_10a(usa),sound_file("Tusk")).
callname(a_10c(usa),name("Enfield")).
callname(a_10c(usa),world_id(1)).
callname(a_10c(usa),sound_file("Enfield")).
callname(a_10c(usa),name("Springfield")).
callname(a_10c(usa),world_id(2)).
callname(a_10c(usa),sound_file("Springfield")).
callname(a_10c(usa),name("Uzi")).
callname(a_10c(usa),world_id(3)).
callname(a_10c(usa),sound_file("Uzi")).
callname(a_10c(usa),name("Colt")).
callname(a_10c(usa),world_id(4)).
callname(a_10c(usa),sound_file("Colt")).
callname(a_10c(usa),name("Dodge")).
callname(a_10c(usa),world_id(5)).
callname(a_10c(usa),sound_file("Dodge")).
callname(a_10c(usa),name("Ford")).
callname(a_10c(usa),world_id(6)).
callname(a_10c(usa),sound_file("Ford")).
callname(a_10c(usa),name("Chevy")).
callname(a_10c(usa),world_id(7)).
callname(a_10c(usa),sound_file("Chevy")).
callname(a_10c(usa),name("Pontiac")).
callname(a_10c(usa),world_id(8)).
callname(a_10c(usa),sound_file("Pontiac")).
callname(a_10c(usa),name("Hawg")).
callname(a_10c(usa),world_id(9)).
callname(a_10c(usa),sound_file("Hawg")).
callname(a_10c(usa),name("Boar")).
callname(a_10c(usa),world_id(10)).
callname(a_10c(usa),sound_file("Boar")).
callname(a_10c(usa),name("Pig")).
callname(a_10c(usa),world_id(11)).
callname(a_10c(usa),sound_file("Pig")).
callname(a_10c(usa),name("Tusk")).
callname(a_10c(usa),world_id(12)).
callname(a_10c(usa),sound_file("Tusk")).
callname(awacs(usa),name("Overlord")).
callname(awacs(usa),world_id(1)).
callname(awacs(usa),name("Magic")).
callname(awacs(usa),world_id(2)).
callname(awacs(usa),name("Wizard")).
callname(awacs(usa),world_id(3)).
callname(awacs(usa),name("Focus")).
callname(awacs(usa),world_id(4)).
callname(awacs(usa),name("Darkstar")).
callname(awacs(usa),world_id(5)).
callname(air(usa),name("Enfield")).
callname(air(usa),world_id(1)).
callname(air(usa),sound_file("Enfield")).
callname(air(usa),name("Springfield")).
callname(air(usa),world_id(2)).
callname(air(usa),sound_file("Springfield")).
callname(air(usa),name("Uzi")).
callname(air(usa),world_id(3)).
callname(air(usa),sound_file("Uzi")).
callname(air(usa),name("Colt")).
callname(air(usa),world_id(4)).
callname(air(usa),sound_file("Colt")).
callname(air(usa),name("Dodge")).
callname(air(usa),world_id(5)).
callname(air(usa),sound_file("Dodge")).
callname(air(usa),name("Ford")).
callname(air(usa),world_id(6)).
callname(air(usa),sound_file("Ford")).
callname(air(usa),name("Chevy")).
callname(air(usa),world_id(7)).
callname(air(usa),sound_file("Chevy")).
callname(air(usa),name("Pontiac")).
callname(air(usa),world_id(8)).
callname(air(usa),sound_file("Pontiac")).
callname(aircraft_carriers(usa),name("Stennis")).
callname(aircraft_carriers(usa),world_id(1)).
callname(aircraft_carriers(usa),name("Winson")).
callname(aircraft_carriers(usa),world_id(2)).
callname(aux(usa),name("Raider")).
callname(aux(usa),world_id(1)).
callname(aux(usa),sound_file("Raider")).
callname(grass_airfield(usa),name("New York")).
callname(grass_airfield(usa),world_id(1)).
callname(grass_airfield(usa),sound_file("New York")).
callname(ground_units(usa),name("Axeman")).
callname(ground_units(usa),world_id(1)).
callname(ground_units(usa),name("Darknight")).
callname(ground_units(usa),world_id(2)).
callname(ground_units(usa),name("Warrior")).
callname(ground_units(usa),world_id(3)).
callname(ground_units(usa),name("Pointer")).
callname(ground_units(usa),world_id(4)).
callname(ground_units(usa),name("Eyeball")).
callname(ground_units(usa),world_id(5)).
callname(ground_units(usa),name("Moonbeam")).
callname(ground_units(usa),world_id(6)).
callname(ground_units(usa),name("Whiplash")).
callname(ground_units(usa),world_id(7)).
callname(ground_units(usa),name("Finger")).
callname(ground_units(usa),world_id(8)).
callname(ground_units(usa),name("Pinpoint")).
callname(ground_units(usa),world_id(9)).
callname(ground_units(usa),name("Ferret")).
callname(ground_units(usa),world_id(10)).
callname(ground_units(usa),name("Shaba")).
callname(ground_units(usa),world_id(11)).
callname(ground_units(usa),name("Playboy")).
callname(ground_units(usa),world_id(12)).
callname(ground_units(usa),name("Hammer")).
callname(ground_units(usa),world_id(13)).
callname(ground_units(usa),name("Jaguar")).
callname(ground_units(usa),world_id(14)).
callname(ground_units(usa),name("Deathstar")).
callname(ground_units(usa),world_id(15)).
callname(ground_units(usa),name("Anvil")).
callname(ground_units(usa),world_id(16)).
callname(ground_units(usa),name("Firefly")).
callname(ground_units(usa),world_id(17)).
callname(ground_units(usa),name("Mantis")).
callname(ground_units(usa),world_id(18)).
callname(ground_units(usa),name("Badger")).
callname(ground_units(usa),world_id(19)).
callname(helipad(usa),name("London")).
callname(helipad(usa),world_id(1)).
callname(helipad(usa),sound_file("London")).
callname(helipad(usa),name("Dallas")).
callname(helipad(usa),world_id(2)).
callname(helipad(usa),sound_file("Dallas")).
callname(helipad(usa),name("Paris")).
callname(helipad(usa),world_id(3)).
callname(helipad(usa),sound_file("Paris")).
callname(helipad(usa),name("Moscow")).
callname(helipad(usa),world_id(4)).
callname(helipad(usa),sound_file("Moscow")).
callname(helipad(usa),name("Berlin")).
callname(helipad(usa),world_id(5)).
callname(helipad(usa),sound_file("Berlin")).
callname(helipad(usa),name("Rome")).
callname(helipad(usa),world_id(6)).
callname(helipad(usa),sound_file("Rome")).
callname(helipad(usa),name("Madrid")).
callname(helipad(usa),world_id(7)).
callname(helipad(usa),sound_file("Madrid")).
callname(helipad(usa),name("Warsaw")).
callname(helipad(usa),world_id(8)).
callname(helipad(usa),sound_file("Warsaw")).
callname(helipad(usa),name("Dublin")).
callname(helipad(usa),world_id(9)).
callname(helipad(usa),sound_file("Dublin")).
callname(helipad(usa),name("Perth")).
callname(helipad(usa),world_id(10)).
callname(helipad(usa),sound_file("Perth")).
callname(ref_points(usa),name("FORD")).
callname(ref_points(usa),world_id(1)).
callname(ref_points(usa),name("EDSEL")).
callname(ref_points(usa),world_id(2)).
callname(ref_points(usa),name("DODGE")).
callname(ref_points(usa),world_id(3)).
callname(ref_points(usa),name("MAZDA")).
callname(ref_points(usa),world_id(4)).
callname(ref_points(usa),name("BANKS")).
callname(ref_points(usa),world_id(5)).
callname(ref_points(usa),name("CHEVY")).
callname(ref_points(usa),world_id(6)).
callname(ref_points(usa),name("TOWEL")).
callname(ref_points(usa),world_id(7)).
callname(ref_points(usa),name("ADDER")).
callname(ref_points(usa),world_id(8)).
callname(strategic_bombers(usa),name("Raider")).
callname(strategic_bombers(usa),world_id(1)).
callname(strategic_bombers(usa),sound_file("Raider")).
callname(tankers(usa),name("Texaco")).
callname(tankers(usa),world_id(1)).
callname(tankers(usa),name("Arco")).
callname(tankers(usa),world_id(2)).
callname(tankers(usa),name("Shell")).
callname(tankers(usa),world_id(3)).
callname(transports(usa),name("Raider")).
callname(transports(usa),world_id(1)).
callname(transports(usa),sound_file("Raider")).
callname(awacs(uk),name("Solex")).
callname(awacs(uk),world_id(1)).
callname(awacs(uk),name("Image")).
callname(awacs(uk),world_id(2)).
callname(awacs(fra),name("Cyrano")).
callname(awacs(fra),world_id(1)).
callname(awacs(fra),name("Roxanne")).
callname(awacs(fra),world_id(2)).
