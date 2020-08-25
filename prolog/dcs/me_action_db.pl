:- module(dcs_me_action_db, []).

:- multifile dcs:property_of_action/2.
:- multifile dcs:property_of_action_type/2.

:- include(me_action_db/action_id).
:- include(me_action_db/actions_data).
:- include(me_action_db/action_type_data).

%!  dcs:property_of_action(?Property, ?Action) is nondet.
%
%   Property of Action where  Property   matches  me:Property0  for some
%   subordinate Property0 of a Lua-derived Mission Editor action.
%
%   Actions have two identifier atoms, one  for actions data but another
%   for action identifier. Use the  action   identifier  as  the primary
%   atom. Unify this with its actions-data   counterpart (call it action
%   prime) by matching the  id/1  term,   i.e.  the  underlying  integer
%   identification number.
%
%       ?- print_table((actions_data(id(ID), A), action_id(id(ID), B), A \= B)).
%       Correct to: "dcs_me_action_db:actions_data(id(ID),A)"? yes
%       Correct to: "dcs_me_action_db:action_id(id(ID),B)"? yes
%       +--+-----------------------------+-----------------------+
%       |10|      fac_assign_group       |   fac_attack_group    |
%       |22|     search_then_engage      |    engage_targets     |
%       |23| search_then_engage_in_zone  |engage_targets_in_zone |
%       |24|  search_then_engage_group   |     engage_group      |
%       |25|   search_then_engage_unit   |      engage_unit      |
%       |37|         run_script          |        script         |
%       |41|   set_frequency_for_unit    | set_frequencyforunit  |
%       |45|        switch_action        |      switch_item      |
%       |55|     reaction_to_threat      |  reaction_on_threat   |
%       |57|      chaff_flare_using      |      flare_using      |
%       |59|      rtb_on_bingo_fuel      |     rtb_on_bingo      |
%       |62|     disperse_under_fire     |  disperse_on_attack   |
%       |65| restrict_air_to_air_attack  |      prohibit_aa      |
%       |66|      restrict_jettison      |     prohibit_jett     |
%       |67|    restrict_afterburner     |      prohibit_ab      |
%       |68|restrict_air_to_ground_attack|      prohibit_ag      |
%       |69|  aa_missile_attack_ranges   |    missile_attack     |
%       |70|   no_report_waypoint_pass   |prohibit_wp_pass_report|
%       |73|     ww2_carpet_bombing      |    carpet_bombing     |
%       |75|  radio_usage_when_contact   |  radio_usage_contact  |
%       |76|   radio_usage_when_engage   |  radio_usage_engage   |
%       |77|radio_usage_when_kill_target |   radio_usage_kill    |
%       |80|    drop_of_paratroopers     |   paratroopers_drop   |
%       +--+-----------------------------+-----------------------+
%       true.

dcs:property_of_action(me:Property, Action) :-
    nonvar(Property),
    action_id(id(ID), Action),
    actions_data(id(ID), Action_),
    actions_data(Property, Action_).

dcs:property_of_action_type(me:Property, ActionType) :-
    nonvar(Property),
    action_type_data(Property, ActionType).
