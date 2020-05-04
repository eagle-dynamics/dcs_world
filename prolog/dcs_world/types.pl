:- module(dcs_world_types, [type_property/2]).

:- use_module(plugins).
:- use_module(categories).

/** <module> Unit types and descriptions
 *
 * ### Non-core types
 *
 * Non-core  types  unify  using   type_property(Type,  plugin(Plugin)),
 * plugin_property(plugin(Plugin), is_core(false)) as follows.   Use  of
 * such  types  trigger  additional  module    requirements  in  mission
 * payloads.
 *
 * |     kubelwagen_82      |wwii_armour_and_technics|
 * |     blitz_36_6700a     |wwii_armour_and_technics|
 * |        sd_kfz_2        |wwii_armour_and_technics|
 * |        sd_kfz_7        |wwii_armour_and_technics|
 * |horch_901_typ_40_kfz_21 |wwii_armour_and_technics|
 * |        tiger_i         |wwii_armour_and_technics|
 * |       tiger_ii_h       |wwii_armour_and_technics|
 * |     pz_v_panther_g     |wwii_armour_and_technics|
 * |        pz_iv_h         |wwii_armour_and_technics|
 * |     jagdpanther_g1     |wwii_armour_and_technics|
 * |       jagd_pz_iv       |wwii_armour_and_technics|
 * |        stug_iv         |wwii_armour_and_technics|
 * |      sturm_pz_iv       |wwii_armour_and_technics|
 * |   sd_kfz_234_2_puma    |wwii_armour_and_technics|
 * |       sd_kfz_251       |wwii_armour_and_technics|
 * |         flak18         |wwii_armour_and_technics|
 * |         flak30         |wwii_armour_and_technics|
 * |         flak36         |wwii_armour_and_technics|
 * |         flak37         |wwii_armour_and_technics|
 * |         flak38         |wwii_armour_and_technics|
 * |       kdo_mod40        |wwii_armour_and_technics|
 * |  flakscheinwerfer_37   |wwii_armour_and_technics|
 * |    maschinensatz_33    |wwii_armour_and_technics|
 * |    soldier_mauser98    |wwii_armour_and_technics|
 * |   sk_c_28_naval_gun    |wwii_armour_and_technics|
 * |      fire_control      |wwii_armour_and_technics|
 * |      bedford_mwd       |wwii_armour_and_technics|
 * |      cromwell_iv       |wwii_armour_and_technics|
 * |    m4a4_sherman_ff     |wwii_armour_and_technics|
 * |        bofors40        |wwii_armour_and_technics|
 * |   soldier_wwii_br_01   |wwii_armour_and_technics|
 * |        cckw_353        |wwii_armour_and_technics|
 * |       willys_mb        |wwii_armour_and_technics|
 * |       m4_sherman       |wwii_armour_and_technics|
 * |        m12_gmc         |wwii_armour_and_technics|
 * |         m30_cc         |wwii_armour_and_technics|
 * |     m2a1_halftrack     |wwii_armour_and_technics|
 * |    soldier_wwii_us     |wwii_armour_and_technics|
 * |  dr_50ton_flat_wagon   |wwii_armour_and_technics|
 * |      drg_class_86      |wwii_armour_and_technics|
 * |german_covered_wagon_g10|wwii_armour_and_technics|
 * |   german_tank_wagon    |wwii_armour_and_technics|
 * |      belgian_gate      |wwii_armour_and_technics|
 * |    concertina_wire     |wwii_armour_and_technics|
 * |       tetrahydra       |wwii_armour_and_technics|
 * |  hemmkurvenhindernis   |wwii_armour_and_technics|
 * |   czech_hedgehogs_1    |wwii_armour_and_technics|
 * |   czech_hedgehogs_2    |wwii_armour_and_technics|
 * |     dragonteeth_1      |wwii_armour_and_technics|
 * |     dragonteeth_2      |wwii_armour_and_technics|
 * |     dragonteeth_3      |wwii_armour_and_technics|
 * |     dragonteeth_4      |wwii_armour_and_technics|
 * |     dragonteeth_5      |wwii_armour_and_technics|
 * |  fire_control_bunker   |wwii_armour_and_technics|
 * |       haystack_1       |wwii_armour_and_technics|
 * |       haystack_2       |wwii_armour_and_technics|
 * |       haystack_3       |wwii_armour_and_technics|
 * |       haystack_4       |wwii_armour_and_technics|
 * |      log_posts_1       |wwii_armour_and_technics|
 * |      log_posts_2       |wwii_armour_and_technics|
 * |      log_posts_3       |wwii_armour_and_technics|
 * |      log_ramps_1       |wwii_armour_and_technics|
 * |      log_ramps_2       |wwii_armour_and_technics|
 * |      log_ramps_3       |wwii_armour_and_technics|
 * |     siegfried_line     |wwii_armour_and_technics|
 * |         b_17g          |wwii_armour_and_technics|
 * |        lst_mk2         |wwii_armour_and_technics|
 * |    uss_samuel_chase    |wwii_armour_and_technics|
 * |      higgins_boat      |wwii_armour_and_technics|
 *
 * @author R3DL1N3 <r0y@digitalcombatsimulator.world>
 */

:- multifile dcs:property_of_type/2.

%!  type_property(?Type:atom, ?Property) is nondet.
%
%   Property of Type as follows.
%
%       * defined
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
%
%   ---+++ unit:Property
%
%   Property of Type unit as follows.
%
%       * defined
%
%       * type(Type0:string)
%
%       Unit "type" and unit:type property  match after translation from
%       string to an underscore-restyled and down-cased identifier. Some
%       unit Type atoms require quoting  (surrounded with single quotes)
%       because they begin with a number, rather than a letter.
%
%   ---+++ desc:Property
%
%   Property of Type description as follows.
%
%       * defined
%
%   ---+++ group:Property
%
%   Property of Type group as follows.

type_property(Type, unit:Property) :- unit(Property, Type).
type_property(Type, desc:Property) :- desc(Property, Type).
type_property(Type, Property) :- dcs:property_of_type(Property, Type).

dcs:property_of_type(defined, Type) :- unit(defined, Type).

dcs:property_of_type(plugin(Plugin), Type) :-
    type_property(Type, desc:origin(Origin)),
    plugin_property(plugin(Plugin), id(Origin)).

unit(defined, Type) :- unit(type(_), Type).

:- include(types/unit).

desc(defined, Type) :- desc(type_name(_), Type).

:- include(types/desc).

dcs:property_of_type(group:Property, Type) :-
    property_of_group(Property, Type).

property_of_group(category(Category), Type) :-
    desc(category(Category0), Type),
    category_property(Category, group:category(Category0)).
