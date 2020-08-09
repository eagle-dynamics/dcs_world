actions_data(id(1),no_task).
actions_data(desc("Empty task"),no_task).
actions_data(display_name("No Task"),no_task).
actions_data(task(id("NoTask")),no_task).
actions_data(type(1),no_task).
actions_data(id(2),attack_group).
actions_data(desc("Attack the enemy group"),attack_group).
actions_data(display_name("Attack Group"),attack_group).
actions_data(task(id("AttackGroup")),attack_group).
actions_data(task(params(attack_qty(1))),attack_group).
actions_data(task(params(attack_qty_limit(false))),attack_group).
actions_data(task(params(group_attack(false))),attack_group).
actions_data(type(1),attack_group).
actions_data(id(3),attack_unit).
actions_data(desc("Attack the enemy unit or the enemy static object"),
	     attack_unit).
actions_data(display_name("Attack Unit"),attack_unit).
actions_data(task(id("AttackUnit")),attack_unit).
actions_data(task(params(attack_qty(1))),attack_unit).
actions_data(task(params(attack_qty_limit(false))),attack_unit).
actions_data(task(params(group_attack(false))),attack_unit).
actions_data(type(1),attack_unit).
actions_data(id(4),attack_map_object).
actions_data(desc("Attack the map object"),attack_map_object).
actions_data(display_name("Attack Map Object"),attack_map_object).
actions_data(task(id("AttackMapObject")),attack_map_object).
actions_data(task(params(attack_qty(1))),attack_map_object).
actions_data(task(params(attack_qty_limit(true))),attack_map_object).
actions_data(task(params(group_attack(false))),attack_map_object).
actions_data(type(1),attack_map_object).
actions_data(id(5),bombing).
actions_data(desc("Deliver weapon at the point on the ground"),bombing).
actions_data(display_name("Bombing"),bombing).
actions_data(task(id("Bombing")),bombing).
actions_data(task(params(attack_qty(1))),bombing).
actions_data(task(params(attack_qty_limit(false))),bombing).
actions_data(task(params(group_attack(false))),bombing).
actions_data(type(1),bombing).
actions_data(id(6),bombing_runway).
actions_data(desc("Deliver weapon at the runway"),bombing_runway).
actions_data(display_name("Bombing Runway"),bombing_runway).
actions_data(task(id("BombingRunway")),bombing_runway).
actions_data(task(params(attack_qty(1))),bombing_runway).
actions_data(task(params(attack_qty_limit(false))),bombing_runway).
actions_data(task(params(group_attack(true))),bombing_runway).
actions_data(type(1),bombing_runway).
actions_data(id(7),orbit).
actions_data(desc("Fly orbit"),orbit).
actions_data(display_name("Orbit"),orbit).
actions_data(task(id("Orbit")),orbit).
actions_data(type(1),orbit).
actions_data(id(8),land).
actions_data(desc("Land on the ground temporary"),land).
actions_data(display_name("Land"),land).
actions_data(task(id("Land")),land).
actions_data(task(params(duration(300))),land).
actions_data(task(params(duration_flag(false))),land).
actions_data(type(1),land).
actions_data(id(9),refueling).
actions_data(desc("Refuel from a tanker"),refueling).
actions_data(display_name("Refueling"),refueling).
actions_data(task(id("Refueling")),refueling).
actions_data(type(1),refueling).
actions_data(id(10),fac_assign_group).
actions_data(desc("Make the lead unit of the group FAC and assign it the target to designate"),
	     fac_assign_group).
actions_data(display_name("FAC - Assign Group"),fac_assign_group).
actions_data(task(id("FAC_AttackGroup")),fac_assign_group).
actions_data(type(1),fac_assign_group).
actions_data(id(11),fire_at_point).
actions_data(desc("Fire at point"),fire_at_point).
actions_data(display_name("Fire at Point"),fire_at_point).
actions_data(task(id("FireAtPoint")),fire_at_point).
actions_data(task(params(expend_qty(1))),fire_at_point).
actions_data(task(params(expend_qty_enabled(false))),fire_at_point).
actions_data(task(params(template_id(""))),fire_at_point).
actions_data(task(params(zone_radius(0))),fire_at_point).
actions_data(type(1),fire_at_point).
actions_data(id(12),hold).
actions_data(desc("Stop moving"),hold).
actions_data(display_name("Hold"),hold).
actions_data(task(id("Hold")),hold).
actions_data(task(params(template_id(""))),hold).
actions_data(type(1),hold).
actions_data(id(13),follow).
actions_data(desc("Follow the another group"),follow).
actions_data(display_name("Follow"),follow).
actions_data(task(id("Follow")),follow).
actions_data(task(params(last_wpt_index_flag(true))),follow).
actions_data(task(params(last_wpt_index_flag_changed_manually(true))),
	     follow).
actions_data(task(params(pos(x(-500)))),follow).
actions_data(task(params(pos(y(0)))),follow).
actions_data(task(params(pos(z(200)))),follow).
actions_data(type(1),follow).
actions_data(id(14),escort).
actions_data(desc("Escort the another group: follow it and protect it from specific types of threats"),
	     escort).
actions_data(display_name("Escort"),escort).
actions_data(task(id("Escort")),escort).
actions_data(task(params(engagement_dist_max(60000))),escort).
actions_data(task(params(last_wpt_index_flag(true))),escort).
actions_data(task(params(last_wpt_index_flag_changed_manually(true))),
	     escort).
actions_data(task(params(pos(x(-500)))),escort).
actions_data(task(params(pos(y(0)))),escort).
actions_data(task(params(pos(z(200)))),escort).
actions_data(task(params(target_types("Planes"))),escort).
actions_data(type(1),escort).
actions_data(id(15),embark_to_transport).
actions_data(desc("Embark to transport"),embark_to_transport).
actions_data(display_name("Embark to transport"),embark_to_transport).
actions_data(task(id("EmbarkToTransport")),embark_to_transport).
actions_data(task(params(zone_radius(200))),embark_to_transport).
actions_data(type(1),embark_to_transport).
actions_data(id(16),go_to_waypoint).
actions_data(desc("Go to waypoint"),go_to_waypoint).
actions_data(display_name("Go to waypoint"),go_to_waypoint).
actions_data(task(id("GoToWaypoint")),go_to_waypoint).
actions_data(type(1),go_to_waypoint).
actions_data(id(17),embarking).
actions_data(desc("Embarking"),embarking).
actions_data(display_name("Embarking"),embarking).
actions_data(task(id("Embarking")),embarking).
actions_data(task(params(distribution_flag(false))),embarking).
actions_data(task(params(duration(300))),embarking).
actions_data(task(params(duration_flag(false))),embarking).
actions_data(type(1),embarking).
actions_data(id(18),disembarking).
actions_data(desc("Disembarking"),disembarking).
actions_data(display_name("Disembarking"),disembarking).
actions_data(task(id("Disembarking")),disembarking).
actions_data(type(1),disembarking).
actions_data(id(19),cargo_transportation).
actions_data(desc("Cargo transportation in zone"),cargo_transportation).
actions_data(display_name("Cargo Transportation"),cargo_transportation).
actions_data(task(id("CargoTransportation")),cargo_transportation).
actions_data(type(1),cargo_transportation).
actions_data(id(20),ground_escort).
actions_data(desc("Escort the ground vehicle group: follow it and protect it from specific types of threats"),
	     ground_escort).
actions_data(display_name("Ground Escort"),ground_escort).
actions_data(task(id("GroundEscort")),ground_escort).
actions_data(task(params(engagement_dist_max(500))),ground_escort).
actions_data(task(params(last_wpt_index_flag(true))),ground_escort).
actions_data(task(params(last_wpt_index_flag_changed_manually(true))),
	     ground_escort).
actions_data(task(params(target_types("Helicopters"))),ground_escort).
actions_data(task(params(target_types("Ground Units"))),ground_escort).
actions_data(type(1),ground_escort).
actions_data(id(21),no_enroute_task).
actions_data(desc("Empty task"),no_enroute_task).
actions_data(display_name("No Enroute Task"),no_enroute_task).
actions_data(task(id("NoTask")),no_enroute_task).
actions_data(type(2),no_enroute_task).
actions_data(id(22),search_then_engage).
actions_data(desc("Engage targets of specific types along the route"),
	     search_then_engage).
actions_data(display_name("Search Then Engage"),search_then_engage).
actions_data(task(id("EngageTargets")),search_then_engage).
actions_data(task(params(max_dist(15000))),search_then_engage).
actions_data(task(params(max_dist_enabled(false))),search_then_engage).
actions_data(type(2),search_then_engage).
actions_data(id(23),search_then_engage_in_zone).
actions_data(desc("Engage targets of specific types in the given zone"),
	     search_then_engage_in_zone).
actions_data(display_name("Search Then Engage In Zone"),
	     search_then_engage_in_zone).
actions_data(task(id("EngageTargetsInZone")),search_then_engage_in_zone).
actions_data(task(params(zone_radius(5000))),
	     search_then_engage_in_zone).
actions_data(type(2),search_then_engage_in_zone).
actions_data(id(24),search_then_engage_group).
actions_data(desc("Allow the group to engage the enemy group during the mission"),
	     search_then_engage_group).
actions_data(display_name("Search Then Engage Group"),
	     search_then_engage_group).
actions_data(task(id("EngageGroup")),search_then_engage_group).
actions_data(task(params(priority(1))),search_then_engage_group).
actions_data(type(2),search_then_engage_group).
actions_data(id(25),search_then_engage_unit).
actions_data(desc("Allow the group to engage the enemy unit or the enemy static object during the mission"),
	     search_then_engage_unit).
actions_data(display_name("Search Then Engage Unit"),
	     search_then_engage_unit).
actions_data(task(id("EngageUnit")),search_then_engage_unit).
actions_data(task(params(attack_qty(1))),search_then_engage_unit).
actions_data(task(params(attack_qty_limit(false))),
	     search_then_engage_unit).
actions_data(task(params(group_attack(false))),search_then_engage_unit).
actions_data(task(params(priority(1))),search_then_engage_unit).
actions_data(type(2),search_then_engage_unit).
actions_data(id(26),awacs).
actions_data(desc("Make the lead aircraft of the group AWACS"),awacs).
actions_data(display_name("AWACS"),awacs).
actions_data(task(id("AWACS")),awacs).
actions_data(type(2),awacs).
actions_data(id(27),ewr).
actions_data(desc("Make the lead aircraft of the group EWR"),ewr).
actions_data(display_name("EWR"),ewr).
actions_data(task(id("EWR")),ewr).
actions_data(type(2),ewr).
actions_data(id(28),fac).
actions_data(desc("Make the lead aircraft of the a FAC and let it to choose targets to assign by its own"),
	     fac).
actions_data(display_name("FAC"),fac).
actions_data(task(id("FAC")),fac).
actions_data(type(2),fac).
actions_data(id(29),fac_engage_group).
actions_data(desc("Make the lead aircraft of the group FAC and allow it to assign the enemy group"),
	     fac_engage_group).
actions_data(display_name("FAC - Engage Group"),fac_engage_group).
actions_data(task(id("FAC_EngageGroup")),fac_engage_group).
actions_data(type(2),fac_engage_group).
actions_data(id(30),tanker).
actions_data(desc("Make the lead aircraft of the group a tanker"),tanker).
actions_data(display_name("Tanker"),tanker).
actions_data(task(id("Tanker")),tanker).
actions_data(type(2),tanker).
actions_data(id(31),fighter_sweep).
actions_data(desc("Engage enemy aircraft. Enemy fighters are prioritiest targets"),
	     fighter_sweep).
actions_data(display_name("Fighter Sweep"),fighter_sweep).
actions_data(task(id("EngageTargets")),fighter_sweep).
actions_data(task(key("FighterSweep")),fighter_sweep).
actions_data(task(params(priority(0))),fighter_sweep).
actions_data(task(params(target_types("Planes"))),fighter_sweep).
actions_data(type(2),fighter_sweep).
actions_data(id(32),cas).
actions_data(desc("Engage enemy ground forces"),cas).
actions_data(display_name("CAS"),cas).
actions_data(task(id("EngageTargets")),cas).
actions_data(task(key("CAS")),cas).
actions_data(task(params(priority(0))),cas).
actions_data(task(params(target_types("Helicopters"))),cas).
actions_data(task(params(target_types("Ground Units"))),cas).
actions_data(task(params(target_types("Light armed ships"))),cas).
actions_data(type(2),cas).
actions_data(id(33),cap).
actions_data(desc("Engage enemy aircraft"),cap).
actions_data(display_name("CAP"),cap).
actions_data(task(id("EngageTargets")),cap).
actions_data(task(key("CAP")),cap).
actions_data(task(params(priority(0))),cap).
actions_data(task(params(target_types("Air"))),cap).
actions_data(type(2),cap).
actions_data(id(34),sead).
actions_data(desc("Engage enemy air defense"),sead).
actions_data(display_name("SEAD"),sead).
actions_data(task(id("EngageTargets")),sead).
actions_data(task(key("SEAD")),sead).
actions_data(task(params(priority(0))),sead).
actions_data(task(params(target_types("Air Defence"))),sead).
actions_data(type(2),sead).
actions_data(id(35),anti_ship).
actions_data(desc("Engage enemy ships"),anti_ship).
actions_data(display_name("Anti-Ship"),anti_ship).
actions_data(task(id("EngageTargets")),anti_ship).
actions_data(task(key("AntiShip")),anti_ship).
actions_data(task(params(priority(0))),anti_ship).
actions_data(task(params(target_types("Ships"))),anti_ship).
actions_data(type(2),anti_ship).
actions_data(id(36),no_action).
actions_data(desc("Empty command"),no_action).
actions_data(display_name("No Action"),no_action).
actions_data(task(id("WrappedAction")),no_action).
actions_data(task(params(action(id("NoAction")))),no_action).
actions_data(type(3),no_action).
actions_data(id(37),run_script).
actions_data(desc("Run lua script. The group will be passed as a single parameter to the function."),
	     run_script).
actions_data(display_name("Run Script"),run_script).
actions_data(task(id("WrappedAction")),run_script).
actions_data(task(params(action(id("Script")))),run_script).
actions_data(task(params(action(params(command(""))))),run_script).
actions_data(type(3),run_script).
actions_data(id(38),script_file).
actions_data(desc("Run lua script file. The group will be passed as a single parameter to the function."),
	     script_file).
actions_data(display_name("Script File"),script_file).
actions_data(task(id("WrappedAction")),script_file).
actions_data(task(params(action(id("ScriptFile")))),script_file).
actions_data(task(params(action(params(file(""))))),script_file).
actions_data(type(3),script_file).
actions_data(id(39),set_callsign).
actions_data(desc("Set callname and group number to the group."),
	     set_callsign).
actions_data(display_name("Set Callsign"),set_callsign).
actions_data(task(id("WrappedAction")),set_callsign).
actions_data(task(params(action(id("SetCallsign")))),set_callsign).
actions_data(type(3),set_callsign).
actions_data(id(40),set_frequency).
actions_data(desc("Set frequency to radios of all the units in the group."),
	     set_frequency).
actions_data(display_name("Set Frequency"),set_frequency).
actions_data(task(id("WrappedAction")),set_frequency).
actions_data(task(params(action(id("SetFrequency")))),set_frequency).
actions_data(task(params(action(params(frequency(131000000))))),
	     set_frequency).
actions_data(task(params(action(params(modulation(0))))),set_frequency).
actions_data(task(params(action(params(power(10))))),set_frequency).
actions_data(type(3),set_frequency).
actions_data(id(41),set_frequency_for_unit).
actions_data(desc("Set frequency to radios to the unit"),
	     set_frequency_for_unit).
actions_data(display_name("Set Frequency for unit"),
	     set_frequency_for_unit).
actions_data(task(id("WrappedAction")),set_frequency_for_unit).
actions_data(task(params(action(id("SetFrequencyForUnit")))),
	     set_frequency_for_unit).
actions_data(task(params(action(params(frequency(131000000))))),
	     set_frequency_for_unit).
actions_data(task(params(action(params(modulation(0))))),
	     set_frequency_for_unit).
actions_data(task(params(action(params(power(10))))),
	     set_frequency_for_unit).
actions_data(type(3),set_frequency_for_unit).
actions_data(id(42),transmit_message).
actions_data(desc("Start radio transmission from the lead unit of the group"),
	     transmit_message).
actions_data(display_name("Transmit Message"),transmit_message).
actions_data(task(id("WrappedAction")),transmit_message).
actions_data(task(params(action(id("TransmitMessage")))),
	     transmit_message).
actions_data(task(params(action(params(duration(5))))),
	     transmit_message).
actions_data(task(params(action(params(file(""))))),transmit_message).
actions_data(task(params(action(params(loop(false))))),
	     transmit_message).
actions_data(task(params(action(params(subtitle(""))))),transmit_message).
actions_data(type(3),transmit_message).
actions_data(id(43),stop_transmission).
actions_data(desc("Stop the radio transmission from the lead unit of the group"),
	     stop_transmission).
actions_data(display_name("Stop Transmission"),stop_transmission).
actions_data(task(id("WrappedAction")),stop_transmission).
actions_data(task(params(action(id("StopTransmission")))),
	     stop_transmission).
actions_data(type(3),stop_transmission).
actions_data(id(44),switch_waypoint).
actions_data(desc("Switch current waypoint of the route."),
	     switch_waypoint).
actions_data(display_name("Switch Waypoint"),switch_waypoint).
actions_data(task(id("WrappedAction")),switch_waypoint).
actions_data(task(params(action(id("SwitchWaypoint")))),switch_waypoint).
actions_data(type(3),switch_waypoint).
actions_data(id(45),switch_action).
actions_data(desc("Jump to another action in the action list of the waypoint."),
	     switch_action).
actions_data(display_name("Switch Action"),switch_action).
actions_data(task(id("WrappedAction")),switch_action).
actions_data(task(params(action(id("SwitchAction")))),switch_action).
actions_data(task(params(action(params(action_index(1))))),
	     switch_action).
actions_data(type(3),switch_action).
actions_data(id(46),invisible).
actions_data(desc("Make all units of the group invisible."),invisible).
actions_data(display_name("Invisible"),invisible).
actions_data(task(id("WrappedAction")),invisible).
actions_data(task(params(action(id("SetInvisible")))),invisible).
actions_data(task(params(action(params(value(true))))),invisible).
actions_data(type(3),invisible).
actions_data(id(47),immortal).
actions_data(desc("Make all units of the group immortal."),immortal).
actions_data(display_name("Immortal"),immortal).
actions_data(task(id("WrappedAction")),immortal).
actions_data(task(params(action(id("SetImmortal")))),immortal).
actions_data(task(params(action(params(value(true))))),immortal).
actions_data(type(3),immortal).
actions_data(id(48),start).
actions_data(desc("Start the assigned task."),start).
actions_data(display_name("Start"),start).
actions_data(task(id("WrappedAction")),start).
actions_data(task(params(action(id("Start")))),start).
actions_data(type(3),start).
actions_data(id(49),activate_tacan).
actions_data(desc("Activate TACAN beacon onboard of the group lead unit. Only one beacon is available."),
	     activate_tacan).
actions_data(display_name("Activate TACAN"),activate_tacan).
actions_data(task(id("WrappedAction")),activate_tacan).
actions_data(task(params(action(id("ActivateBeacon")))),activate_tacan).
actions_data(task(params(action(params(bearing(true))))),
	     activate_tacan).
actions_data(task(params(action(params(callsign("TKR"))))),
	     activate_tacan).
actions_data(task(params(action(params(channel(1))))),activate_tacan).
actions_data(task(params(action(params(frequency(1088000000))))),
	     activate_tacan).
actions_data(task(params(action(params(mode_channel("X"))))),
	     activate_tacan).
actions_data(task(params(action(params(system(4))))),activate_tacan).
actions_data(task(params(action(params(type(4))))),activate_tacan).
actions_data(type(3),activate_tacan).
actions_data(id(50),deactivate_beacon).
actions_data(desc("Dectivate active beacon (TACAN, etc) onboard of the group lead unit."),
	     deactivate_beacon).
actions_data(display_name("Deactivate beacon"),deactivate_beacon).
actions_data(task(id("WrappedAction")),deactivate_beacon).
actions_data(task(params(action(id("DeactivateBeacon")))),
	     deactivate_beacon).
actions_data(type(3),deactivate_beacon).
actions_data(id(51),eplrs).
actions_data(desc("Swich Enhanced Position Location Reporting System on and off."),
	     eplrs).
actions_data(display_name("EPLRS"),eplrs).
actions_data(task(id("WrappedAction")),eplrs).
actions_data(task(params(action(id("EPLRS")))),eplrs).
actions_data(task(params(action(params(group_id(0))))),eplrs).
actions_data(task(params(action(params(value(true))))),eplrs).
actions_data(type(3),eplrs).
actions_data(id(52),smoke_on_off).
actions_data(desc("SmokeOn_Off"),smoke_on_off).
actions_data(display_name("SmokeOn_Off"),smoke_on_off).
actions_data(task(id("WrappedAction")),smoke_on_off).
actions_data(task(params(action(id("SMOKE_ON_OFF")))),smoke_on_off).
actions_data(task(params(action(params(value(true))))),smoke_on_off).
actions_data(type(3),smoke_on_off).
actions_data(id(53),no_option).
actions_data(desc("Empty option"),no_option).
actions_data(display_name("No Option"),no_option).
actions_data(task(id("WrappedAction")),no_option).
actions_data(task(params(action(id("Option")))),no_option).
actions_data(task(params(action(params(name(-1))))),no_option).
actions_data(type(4),no_option).
actions_data(id(54),roe).
actions_data(desc("Set Rule of Engagement."),roe).
actions_data(display_name("ROE"),roe).
actions_data(task(id("WrappedAction")),roe).
actions_data(task(params(action(id("Option")))),roe).
actions_data(task(params(action(params(name(0))))),roe).
actions_data(type(4),roe).
actions_data(id(55),reaction_to_threat).
actions_data(desc("Set what behavior is allowed as a reaction on a threat."),
	     reaction_to_threat).
actions_data(display_name("Reaction to Threat"),reaction_to_threat).
actions_data(task(id("WrappedAction")),reaction_to_threat).
actions_data(task(params(action(id("Option")))),reaction_to_threat).
actions_data(task(params(action(params(name(1))))),reaction_to_threat).
actions_data(type(4),reaction_to_threat).
actions_data(id(56),radar_using).
actions_data(desc("Set the conditions when radar using is allowed to the group."),
	     radar_using).
actions_data(display_name("Radar Using"),radar_using).
actions_data(task(id("WrappedAction")),radar_using).
actions_data(task(params(action(id("Option")))),radar_using).
actions_data(task(params(action(params(name(3))))),radar_using).
actions_data(type(4),radar_using).
actions_data(id(57),chaff_flare_using).
actions_data(desc("Set the conditions when flare using is allowed to the group."),
	     chaff_flare_using).
actions_data(display_name("Chaff - Flare Using"),chaff_flare_using).
actions_data(task(id("WrappedAction")),chaff_flare_using).
actions_data(task(params(action(id("Option")))),chaff_flare_using).
actions_data(task(params(action(params(name(4))))),chaff_flare_using).
actions_data(type(4),chaff_flare_using).
actions_data(id(58),formation).
actions_data(desc("Set the group formation."),formation).
actions_data(display_name("Formation"),formation).
actions_data(task(id("WrappedAction")),formation).
actions_data(task(params(action(id("Option")))),formation).
actions_data(task(params(action(params(name(5))))),formation).
actions_data(type(4),formation).
actions_data(id(59),rtb_on_bingo_fuel).
actions_data(desc("Allows the group to return to base when it is bingo fuel."),
	     rtb_on_bingo_fuel).
actions_data(display_name("RTB on Bingo Fuel"),rtb_on_bingo_fuel).
actions_data(task(id("WrappedAction")),rtb_on_bingo_fuel).
actions_data(task(params(action(id("Option")))),rtb_on_bingo_fuel).
actions_data(task(params(action(params(name(6))))),rtb_on_bingo_fuel).
actions_data(task(params(action(params(value(true))))),
	     rtb_on_bingo_fuel).
actions_data(type(4),rtb_on_bingo_fuel).
actions_data(id(60),rtb_on_out_of_ammo).
actions_data(desc("Set specific type of ammo that is required by the group to continue its mission."),
	     rtb_on_out_of_ammo).
actions_data(display_name("RTB on out of ammo"),rtb_on_out_of_ammo).
actions_data(task(id("WrappedAction")),rtb_on_out_of_ammo).
actions_data(task(params(action(id("Option")))),rtb_on_out_of_ammo).
actions_data(task(params(action(params(name(10))))),rtb_on_out_of_ammo).
actions_data(type(4),rtb_on_out_of_ammo).
actions_data(id(61),silence).
actions_data(desc("Deny AI flights report events."),silence).
actions_data(display_name("Silence"),silence).
actions_data(task(id("WrappedAction")),silence).
actions_data(task(params(action(id("Option")))),silence).
actions_data(task(params(action(params(name(7))))),silence).
actions_data(task(params(action(params(value(false))))),silence).
actions_data(type(4),silence).
actions_data(id(62),disperse_under_fire).
actions_data(desc("Allow the group to disperse under attack from the air and set the delay."),
	     disperse_under_fire).
actions_data(display_name("Disperse under fire"),disperse_under_fire).
actions_data(task(id("WrappedAction")),disperse_under_fire).
actions_data(task(params(action(id("Option")))),disperse_under_fire).
actions_data(task(params(action(params(name(8))))),disperse_under_fire).
actions_data(task(params(action(params(value(600))))),
	     disperse_under_fire).
actions_data(type(4),disperse_under_fire).
actions_data(id(63),alarm_state).
actions_data(desc("Set SAM readiness state."),alarm_state).
actions_data(display_name("ALARM STATE"),alarm_state).
actions_data(task(id("WrappedAction")),alarm_state).
actions_data(task(params(action(id("Option")))),alarm_state).
actions_data(task(params(action(params(name(9))))),alarm_state).
actions_data(type(4),alarm_state).
actions_data(id(64),ecm_using).
actions_data(desc("Set the conditions when ECM using is allowed to the group."),
	     ecm_using).
actions_data(display_name("ECM Using"),ecm_using).
actions_data(task(id("WrappedAction")),ecm_using).
actions_data(task(params(action(id("Option")))),ecm_using).
actions_data(task(params(action(params(name(13))))),ecm_using).
actions_data(type(4),ecm_using).
actions_data(id(65),restrict_air_to_air_attack).
actions_data(desc("Restrict Air-to-Air Attack"),
	     restrict_air_to_air_attack).
actions_data(display_name("Restrict Air-to-Air Attack"),
	     restrict_air_to_air_attack).
actions_data(task(id("WrappedAction")),restrict_air_to_air_attack).
actions_data(task(params(action(id("Option")))),
	     restrict_air_to_air_attack).
actions_data(task(params(action(params(name(14))))),
	     restrict_air_to_air_attack).
actions_data(task(params(action(params(value(false))))),
	     restrict_air_to_air_attack).
actions_data(type(4),restrict_air_to_air_attack).
actions_data(id(66),restrict_jettison).
actions_data(desc("Restrict Jettisoning external stores."),
	     restrict_jettison).
actions_data(display_name("Restrict Jettison"),restrict_jettison).
actions_data(task(id("WrappedAction")),restrict_jettison).
actions_data(task(params(action(id("Option")))),restrict_jettison).
actions_data(task(params(action(params(name(15))))),restrict_jettison).
actions_data(task(params(action(params(value(false))))),
	     restrict_jettison).
actions_data(type(4),restrict_jettison).
actions_data(id(67),restrict_afterburner).
actions_data(desc("Restrict Afterburner usage en route."),
	     restrict_afterburner).
actions_data(display_name("Restrict Afterburner"),restrict_afterburner).
actions_data(task(id("WrappedAction")),restrict_afterburner).
actions_data(task(params(action(id("Option")))),restrict_afterburner).
actions_data(task(params(action(params(name(16))))),
	     restrict_afterburner).
actions_data(task(params(action(params(value(false))))),
	     restrict_afterburner).
actions_data(type(4),restrict_afterburner).
actions_data(id(68),restrict_air_to_ground_attack).
actions_data(desc("Restrict Air-to-Ground Attack."),
	     restrict_air_to_ground_attack).
actions_data(display_name("Restrict Air-to-Ground Attack"),
	     restrict_air_to_ground_attack).
actions_data(task(id("WrappedAction")),restrict_air_to_ground_attack).
actions_data(task(params(action(id("Option")))),
	     restrict_air_to_ground_attack).
actions_data(task(params(action(params(name(17))))),
	     restrict_air_to_ground_attack).
actions_data(task(params(action(params(value(false))))),
	     restrict_air_to_ground_attack).
actions_data(type(4),restrict_air_to_ground_attack).
actions_data(id(69),aa_missile_attack_ranges).
actions_data(desc("Choose the rule of first missile launch in BVR"),
	     aa_missile_attack_ranges).
actions_data(display_name("AA Missile attack ranges"),
	     aa_missile_attack_ranges).
actions_data(task(id("WrappedAction")),aa_missile_attack_ranges).
actions_data(task(params(action(id("Option")))),aa_missile_attack_ranges).
actions_data(task(params(action(params(name(18))))),
	     aa_missile_attack_ranges).
actions_data(type(4),aa_missile_attack_ranges).
actions_data(id(70),no_report_waypoint_pass).
actions_data(desc("Deny AI flights report when passing waypoint."),
	     no_report_waypoint_pass).
actions_data(display_name("No Report Waypoint Pass"),
	     no_report_waypoint_pass).
actions_data(task(id("WrappedAction")),no_report_waypoint_pass).
actions_data(task(params(action(id("Option")))),no_report_waypoint_pass).
actions_data(task(params(action(params(name(19))))),
	     no_report_waypoint_pass).
actions_data(task(params(action(params(value(false))))),
	     no_report_waypoint_pass).
actions_data(type(4),no_report_waypoint_pass).
actions_data(id(71),aerobatics).
actions_data(desc("Perform aerobatics maneuvers"),aerobatics).
actions_data(display_name("Aerobatics"),aerobatics).
actions_data(task(id("Aerobatics")),aerobatics).
actions_data(type(1),aerobatics).
actions_data(id(72),engage_air_weapons).
actions_data(desc("Engage air weapons"),engage_air_weapons).
actions_data(display_name("Engage air weapons"),engage_air_weapons).
actions_data(task(id("WrappedAction")),engage_air_weapons).
actions_data(task(params(action(id("Option")))),engage_air_weapons).
actions_data(task(params(action(params(name(20))))),engage_air_weapons).
actions_data(task(params(action(params(value(true))))),
	     engage_air_weapons).
actions_data(type(4),engage_air_weapons).
actions_data(id(73),ww2_carpet_bombing).
actions_data(desc("Perform large formation bombing"),ww2_carpet_bombing).
actions_data(display_name("WW2: Carpet bombing"),ww2_carpet_bombing).
actions_data(task(id("CarpetBombing")),ww2_carpet_bombing).
actions_data(task(params(attack_qty(1))),ww2_carpet_bombing).
actions_data(task(params(attack_qty_limit(false))),ww2_carpet_bombing).
actions_data(task(params(attack_type("Carpet"))),ww2_carpet_bombing).
actions_data(task(params(carpet_length(500))),ww2_carpet_bombing).
actions_data(task(params(group_attack(false))),ww2_carpet_bombing).
actions_data(task(params(weapon_type(name("--Iron bombs")))),
	     ww2_carpet_bombing).
actions_data(task(params(weapon_type(value(240)))),ww2_carpet_bombing).
actions_data(type(1),ww2_carpet_bombing).
actions_data(id(74),ww2_big_formation).
actions_data(desc("Follow as big formation"),ww2_big_formation).
actions_data(display_name("WW2: Big Formation"),ww2_big_formation).
actions_data(task(id("FollowBigFormation")),ww2_big_formation).
actions_data(task(params(formation_type(0))),ww2_big_formation).
actions_data(task(params(last_wpt_index_flag(true))),ww2_big_formation).
actions_data(task(params(last_wpt_index_flag_changed_manually(true))),
	     ww2_big_formation).
actions_data(task(params(pos(x(-150)))),ww2_big_formation).
actions_data(task(params(pos(y(0)))),ww2_big_formation).
actions_data(task(params(pos(z(150)))),ww2_big_formation).
actions_data(task(params(pos_in_box(1))),ww2_big_formation).
actions_data(task(params(pos_in_group(1))),ww2_big_formation).
actions_data(task(params(pos_in_wing(1))),ww2_big_formation).
actions_data(type(1),ww2_big_formation).
actions_data(id(75),radio_usage_when_contact).
actions_data(desc("Set specific type of events and target types for radio messages when contact enemy"),
	     radio_usage_when_contact).
actions_data(display_name("Radio usage when contact"),
	     radio_usage_when_contact).
actions_data(task(id("WrappedAction")),radio_usage_when_contact).
actions_data(task(params(action(id("Option")))),radio_usage_when_contact).
actions_data(task(params(action(params(name(21))))),
	     radio_usage_when_contact).
actions_data(type(4),radio_usage_when_contact).
actions_data(id(76),radio_usage_when_engage).
actions_data(desc("Set specific type of events and target types for radio messages when engage enemy"),
	     radio_usage_when_engage).
actions_data(display_name("Radio usage when engage"),
	     radio_usage_when_engage).
actions_data(task(id("WrappedAction")),radio_usage_when_engage).
actions_data(task(params(action(id("Option")))),radio_usage_when_engage).
actions_data(task(params(action(params(name(22))))),
	     radio_usage_when_engage).
actions_data(type(4),radio_usage_when_engage).
actions_data(id(77),radio_usage_when_kill_target).
actions_data(desc("Set specific type of events and target types for radio messages when kill enemy"),
	     radio_usage_when_kill_target).
actions_data(display_name("Radio usage when kill target"),
	     radio_usage_when_kill_target).
actions_data(task(id("WrappedAction")),radio_usage_when_kill_target).
actions_data(task(params(action(id("Option")))),
	     radio_usage_when_kill_target).
actions_data(task(params(action(params(name(23))))),
	     radio_usage_when_kill_target).
actions_data(type(4),radio_usage_when_kill_target).
actions_data(id(78),activate_icls).
actions_data(desc("Activate ICLS onboard of the group lead unit. Only one ICLS is available."),
	     activate_icls).
actions_data(display_name("Activate ICLS"),activate_icls).
actions_data(task(id("WrappedAction")),activate_icls).
actions_data(task(params(action(id("ActivateICLS")))),activate_icls).
actions_data(task(params(action(params(channel(1))))),activate_icls).
actions_data(task(params(action(params(type(131584))))),activate_icls).
actions_data(type(3),activate_icls).
actions_data(id(79),deactivate_icls).
actions_data(desc("Dectivate active beacon (ICLS, etc) onboard of the group lead unit."),
	     deactivate_icls).
actions_data(display_name("Deactivate ICLS"),deactivate_icls).
actions_data(task(id("WrappedAction")),deactivate_icls).
actions_data(task(params(action(id("DeactivateICLS")))),deactivate_icls).
actions_data(type(3),deactivate_icls).
actions_data(id(80),drop_of_paratroopers).
actions_data(desc("Perform paratroopers drop at target"),
	     drop_of_paratroopers).
actions_data(display_name("Drop of paratroopers"),drop_of_paratroopers).
actions_data(task(id("ParatroopersDrop")),drop_of_paratroopers).
actions_data(task(params(attack_qty(1))),drop_of_paratroopers).
actions_data(task(params(attack_qty_limit(false))),
	     drop_of_paratroopers).
actions_data(task(params(attack_type("Carpet"))),drop_of_paratroopers).
actions_data(task(params(carpet_length(500))),drop_of_paratroopers).
actions_data(task(params(group_attack(false))),drop_of_paratroopers).
actions_data(task(params(script_file_name(""))),drop_of_paratroopers).
actions_data(task(params(selected_group(-1))),drop_of_paratroopers).
actions_data(type(1),drop_of_paratroopers).
actions_data(id(81),airbone_drop_operation).
actions_data(desc("Airbone drop operation"),airbone_drop_operation).
actions_data(display_name("Airbone drop operation"),
	     airbone_drop_operation).
actions_data(task(id("AirboneDropOperation")),airbone_drop_operation).
actions_data(task(params(drop_type("Troops"))),airbone_drop_operation).
actions_data(task(params(group_drop(false))),airbone_drop_operation).
actions_data(task(params(runs_qty(1))),airbone_drop_operation).
actions_data(type(1),airbone_drop_operation).
