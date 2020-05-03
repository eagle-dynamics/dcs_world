:- module(dcs_world_types, [type_property/2]).

:- use_module(plugins).
:- use_module(categories).

:- multifile dcs:property_of_type/2.

%!  type_property(?Type:atom, ?Property) is nondet.
%
%   Property of Type as follows.
%
%   ---+++ unit:Property
%
%   Property of unit Type as follows.
%
%       * plugin(Plugin)
%
%       Plug-in  of  Type.  Uses  the  type  description  properties  to
%       determine the origin of unit types. Built-in types have an empty
%       string as their origin. Type   description origins match plug-in
%       identifiers.
%
%       Hence, you can discover all core type plug-ins using the
%       following query, type_property(Type, plugin(Plugin)),
%       plugin_property(plugin(Plugin), is_core(true)).
%
%           |      electric_locomotive      |                      railway_objects_pack                      |
%           |          locomotive           |                      railway_objects_pack                      |
%           |          coach_cargo          |                      railway_objects_pack                      |
%           |       coach_cargo_open        |                      railway_objects_pack                      |
%           |       coach_a_tank_blue       |                      railway_objects_pack                      |
%           |      coach_a_tank_yellow      |                      railway_objects_pack                      |
%           |       coach_a_passenger       |                      railway_objects_pack                      |
%           |       coach_a_platform        |                      railway_objects_pack                      |
%           |            scud_b             |                        tech_weapon_pack                        |
%           |         s_75m_volhov          |                        tech_weapon_pack                        |
%           |            snr_75v            |                        tech_weapon_pack                        |
%           |      rapier_fsa_launcher      |                        tech_weapon_pack                        |
%           |rapier_fsa_optical_tracker_unit|                        tech_weapon_pack                        |
%           |  rapier_fsa_blindfire_radar   |                        tech_weapon_pack                        |
%           |       land_rover_101_fc       |                        tech_weapon_pack                        |
%           |       land_rover_109_s3       |                        tech_weapon_pack                        |
%           |          hy_launcher          |                        tech_weapon_pack                        |
%           |          silkworm_sr          |                        tech_weapon_pack                        |
%           |            es44ah             |                        tech_weapon_pack                        |
%           |         boxcartrinity         |                        tech_weapon_pack                        |
%           |        tankcartrinity         |                        tech_weapon_pack                        |
%           |          wellcarnsc           |                        tech_weapon_pack                        |
%           |            ztz96b             |china_asset_pack_by_deka_ironwork_simulations_and_eagle_dynamics|
%           |            zbd04a             |china_asset_pack_by_deka_ironwork_simulations_and_eagle_dynamics|
%           |          hq_7_ln_sp           |china_asset_pack_by_deka_ironwork_simulations_and_eagle_dynamics|
%           |          hq_7_str_sp          |china_asset_pack_by_deka_ironwork_simulations_and_eagle_dynamics|
%           |            sa342m             |                sa342_ai_by_polychop_simulations                |
%           |            sa342l             |                sa342_ai_by_polychop_simulations                |
%           |         sa342mistral          |                sa342_ai_by_polychop_simulations                |
%           |         sa342minigun          |                sa342_ai_by_polychop_simulations                |
%           |           fw_190d9            |            world_war_ii_ai_units_by_eagle_dynamics             |
%           |           fw_190a8            |            world_war_ii_ai_units_by_eagle_dynamics             |
%           |           bf_109k_4           |            world_war_ii_ai_units_by_eagle_dynamics             |
%           |       spitfire_lfmk_ix        |            world_war_ii_ai_units_by_eagle_dynamics             |
%           |      spitfire_lfmk_ixcw       |            world_war_ii_ai_units_by_eagle_dynamics             |
%           |             p_51d             |            world_war_ii_ai_units_by_eagle_dynamics             |
%           |          p_51d_30_na          |            world_war_ii_ai_units_by_eagle_dynamics             |
%           |             ajs37             |                ajs37_ai_by_heatblur_simulations                |
%           |            av8bna             |                  av_8b_n_a_ai_by_razbam_sims                   |
%           |             kc130             |                  av_8b_n_a_ai_by_razbam_sims                   |
%           |           kc135mprs           |                  av_8b_n_a_ai_by_razbam_sims                   |
%           |            c_101eb            |                   c_101_aviojet_by_avio_dev                    |
%           |            c_101cc            |                   c_101_aviojet_by_avio_dev                    |
%           |             j_11a             |china_asset_pack_by_deka_ironwork_simulations_and_eagle_dynamics|
%           |             jf_17             |china_asset_pack_by_deka_ironwork_simulations_and_eagle_dynamics|
%           |            kj_2000            |china_asset_pack_by_deka_ironwork_simulations_and_eagle_dynamics|
%           |       christen_eagle_ii       |            christen_eagle_ii_ai_by_magnitude_3_llc             |
%           |           f_16c_50            |                         f_16c_bl_50_ai                         |
%           |             f_5e              |                     f_5e_e_3_by_belsimtek                      |
%           |            f_5e_3             |                     f_5e_e_3_by_belsimtek                      |
%           |          f_86f_sabre          |                f_86f_sabre_ai_by_eagle_dynamics                |
%           |             f_14b             |                f_14b_ai_by_heatblur_simulations                |
%           |         fa_18c_hornet         |                           f_a_18c_ai                           |
%           |             hawk              |                hawk_t_1a_ai_by_veao_simulations                |
%           |             i_16              |                      i_16_ai_by_octopus_g                      |
%           |             l_39c             |                   l_39c_za_by_eagle_dynamics                   |
%           |            l_39za             |                   l_39c_za_by_eagle_dynamics                   |
%           |            m_2000c            |                   m_2000c_ai_by_razbam_sims                    |
%           |          mq_9_reaper          |                         mq_9_reaper_ai                         |
%           |          mi_g_15bis           |                mi_g_15bis_ai_by_eagle_dynamics                 |
%           |           mi_g_19p            |                     mi_g_19p_ai_by_razbam                      |
%           |          mi_g_21bis           |                mi_g_21bis_ai_by_magnitude_3_llc                |
%           |             su_34             |                            su_34_ai                            |
%           |            yak_52             |                  yak_52_ai_by_eagle_dynamics                   |
%           |            stennis            |                       uss_john_c_stennis                       |
%           |          lha_tarawa           |                  av_8b_n_a_ai_by_razbam_sims                   |
%           |            '052b'             |china_asset_pack_by_deka_ironwork_simulations_and_eagle_dynamics|
%           |            '054a'             |china_asset_pack_by_deka_ironwork_simulations_and_eagle_dynamics|
%           |            '052c'             |china_asset_pack_by_deka_ironwork_simulations_and_eagle_dynamics|
%           |           type_093            |china_asset_pack_by_deka_ironwork_simulations_and_eagle_dynamics|

type_property(Type, unit:Property) :- property_of_unit(Property, Type).
type_property(Type, desc:Property) :- property_of_desc(Property, Type).
type_property(Type, Property) :- dcs:property_of_type(Property, Type).

dcs:property_of_type(defined, Type) :-
    defined(Type).

defined(Type) :-
    property_of_unit(defined, Type).
defined(Type) :-
    property_of_desc(defined, Type),
    \+ property_of_unit(defined, Type).

dcs:property_of_type(plugin(Plugin), Type) :-
    type_property(Type, desc:origin(Origin)),
    plugin_property(plugin(Plugin), id(Origin)).

dcs:property_of_type(group:Property, Type) :-
    property_of_group(Property, Type).

property_of_group(category(Category), Type) :-
    property_of_desc(category(Category0), Type),
    category_property(Category, group:category(Category0)).

property_of_unit(defined, Type) :- property_of_unit(type(_), Type).

:- include(types/property_of_unit).

property_of_desc(defined, Type) :- property_of_desc(type_name(_), Type).

:- include(types/property_of_desc).
