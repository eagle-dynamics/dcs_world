:- module(dcs_world_plugins, [plugin_property/2]).

plugin_property(option(Option), Property) :-
    option(Option, Property).
plugin_property(skin(Skin), Property) :-
    skin(Skin, Property).

option(capto_glove,allow_in_simulation(true)).
option(capto_glove,icon("./CoreMods/services/CaptoGlove/Options/icon.png")).
option(capto_glove,id("CaptoGlove")).
option(capto_glove,module_location("./CoreMods/services/CaptoGlove")).
option(capto_glove,name("Capto Glove")).
option(capto_glove,options_folder("./CoreMods/services/CaptoGlove/Options")).
option(ca,id("CA")).
option(ca,module_location("./Mods/tech/CombinedArms")).
option(ca,name("CA")).
option(ca,options_folder("./Mods/tech/CombinedArms/Options")).
option(ca,skin_folder("./Mods/tech/CombinedArms/Skins/1")).
option(a_10c,id("A-10C")).
option(a_10c,module_location("./Mods/aircraft/A-10C")).
option(a_10c,name("A-10C")).
option(a_10c,options_folder("./Mods/aircraft/A-10C/Options")).
option(a_10c,skin_folder("./Mods/aircraft/A-10C/Skins/1")).
option(av8bna,id("AV8BNA")).
option(av8bna,module_location("./Mods/aircraft/AV8BNA")).
option(av8bna,name("AV-8B N/A")).
option(av8bna,options_folder("./Mods/aircraft/AV8BNA/Options")).
option(av8bna,skin_folder("./Mods/aircraft/AV8BNA/Skins/1")).
option(bf_109k_4,id("Bf-109K-4")).
option(bf_109k_4,module_location("./Mods/aircraft/Bf-109K-4")).
option(bf_109k_4,name("Bf 109 K-4")).
option(bf_109k_4,options_folder("./Mods/aircraft/Bf-109K-4/Options")).
option(bf_109k_4,skin_folder("./Mods/aircraft/Bf-109K-4/Skins/1")).
option(f_86f,id("F-86F")).
option(f_86f,module_location("./Mods/aircraft/F-86")).
option(f_86f,name("F-86F")).
option(f_86f,options_folder("./Mods/aircraft/F-86/Options")).
option(f_86f,skin_folder("./Mods/aircraft/F-86/Skins/1")).
option(f_14b,id("F-14B")).
option(f_14b,module_location("./Mods/aircraft/F14")).
option(f_14b,name("F-14B")).
option(f_14b,options_folder("./Mods/aircraft/F14/Options")).
option(f_14b,skin_folder("./Mods/aircraft/F14/Skins")).
option(f_a_18c,aircraft_settings_file("AircraftSettings.lua")).
option(f_a_18c,id("F/A-18C")).
option(f_a_18c,module_location("./Mods/aircraft/FA-18C")).
option(f_a_18c,name("F/A-18C")).
option(f_a_18c,options_folder("./Mods/aircraft/FA-18C/Options")).
option(f_a_18c,skin_folder("./Mods/aircraft/FA-18C/Skins/1")).
option(fw_190a8,id("FW-190A8")).
option(fw_190a8,module_location("./Mods/aircraft/FW-190A8")).
option(fw_190a8,name("Fw 190 A-8")).
option(fw_190a8,options_folder("./Mods/aircraft/FW-190A8/Options")).
option(fw_190a8,skin_folder("./Mods/aircraft/FW-190A8/Skins/1")).
option(fw_190d9,id("FW-190D9")).
option(fw_190d9,module_location("./Mods/aircraft/FW-190D9")).
option(fw_190d9,name("Fw 190 D-9")).
option(fw_190d9,options_folder("./Mods/aircraft/FW-190D9/Options")).
option(fw_190d9,skin_folder("./Mods/aircraft/FW-190D9/Skins/1")).
option(ka_50,id("Ka-50")).
option(ka_50,module_location("./Mods/aircraft/Ka-50")).
option(ka_50,name("Ka-50")).
option(ka_50,options_folder("./Mods/aircraft/Ka-50/Options")).
option(ka_50,skin_folder("./Mods/aircraft/Ka-50/Skins/1")).
option(m_2000c,id("M-2000C")).
option(m_2000c,module_location("./Mods/aircraft/M-2000C")).
option(m_2000c,name("M-2000C")).
option(m_2000c,options_folder("./Mods/aircraft/M-2000C/Options")).
option(m_2000c,skin_folder("./Mods/aircraft/M-2000C/Skins/1")).
option(mi_8mtv2,id("Mi-8MTV2")).
option(mi_8mtv2,module_location("./Mods/aircraft/Mi-8MTV2")).
option(mi_8mtv2,name("Mi-8MTV2")).
option(mi_8mtv2,options_folder("./Mods/aircraft/Mi-8MTV2/Options")).
option(mi_8mtv2,skin_folder("./Mods/aircraft/Mi-8MTV2/Skins/1")).
option(p_51d,id("P-51D")).
option(p_51d,module_location("./Mods/aircraft/P-51D")).
option(p_51d,name("P-51D")).
option(p_51d,options_folder("./Mods/aircraft/P-51D/Options")).
option(p_51d,skin_folder("./Mods/aircraft/P-51D/Skins/1")).
option(sa342,id("SA342")).
option(sa342,module_location("./Mods/aircraft/SA342")).
option(sa342,name("SA342")).
option(sa342,options_folder("./Mods/aircraft/SA342/Options")).
option(sa342,skin_folder("./Mods/aircraft/SA342/Skins/1")).
option(spitfire_lfmk_ix,id("SpitfireLFMkIX")).
option(spitfire_lfmk_ix,module_location("./Mods/aircraft/SpitfireLFMkIX")).
option(spitfire_lfmk_ix,name("Spitfire LF Mk. IX")).
option(spitfire_lfmk_ix,options_folder("./Mods/aircraft/SpitfireLFMkIX/Options")).
option(spitfire_lfmk_ix,skin_folder("./Mods/aircraft/SpitfireLFMkIX/Skins/1")).
option(su_25t,id("Su-25T")).
option(su_25t,module_location("./Mods/aircraft/Su-25T")).
option(su_25t,name("Su-25T")).
option(su_25t,options_folder("./Mods/aircraft/Su-25T/Options")).
option(su_25t,skin_folder("./Mods/aircraft/Su-25T/Theme")).
option(su_33,id("Su-33")).
option(su_33,module_location("./Mods/aircraft/Su-33")).
option(su_33,name("Su-33")).
option(su_33,options_folder("./Mods/aircraft/Su-33/Options")).
option(su_33,skin_folder("./Mods/aircraft/Su-33/Skins/1")).
option(tf_51d,id("TF-51D")).
option(tf_51d,module_location("./Mods/aircraft/TF-51D")).
option(tf_51d,name("TF-51D")).
option(tf_51d,options_folder("./Mods/aircraft/TF-51D/Options")).
option(tf_51d,skin_folder("./Mods/aircraft/TF-51D/Skins/1")).
option(uh_1h,id("UH-1H")).
option(uh_1h,module_location("./Mods/aircraft/Uh-1H")).
option(uh_1h,name("UH-1H")).
option(uh_1h,options_folder("./Mods/aircraft/Uh-1H/Options")).
option(uh_1h,skin_folder("./Mods/aircraft/Uh-1H/Skins/1")).

skin(combined_arms_by_eagle_dynamics,dir_root("./Mods/tech/CombinedArms")).
skin(combined_arms_by_eagle_dynamics,id("Combined Arms by Eagle Dynamics")).
skin(combined_arms_by_eagle_dynamics,skins([skins{dir:"./Mods/tech/CombinedArms/Skins/1",index:1,name:"CA"}])).
skin(a_10c_warthog_by_eagle_dynamics,dir_root("./Mods/aircraft/A-10C")).
skin(a_10c_warthog_by_eagle_dynamics,id("A-10C Warthog by Eagle Dynamics")).
skin(a_10c_warthog_by_eagle_dynamics,skins([skins{dir:"./Mods/aircraft/A-10C/Skins/1",index:1,name:"A-10C"}])).
skin(av_8b_n_a_by_razbam_sims,dir_root("./Mods/aircraft/AV8BNA")).
skin(av_8b_n_a_by_razbam_sims,id("AV-8B N/A by RAZBAM Sims")).
skin(av_8b_n_a_by_razbam_sims,skins([skins{dir:"./Mods/aircraft/AV8BNA/Skins/1",index:1,name:"AV8BNA"}])).
skin(bf_109_k_4_by_eagle_dynamics,dir_root("./Mods/aircraft/Bf-109K-4")).
skin(bf_109_k_4_by_eagle_dynamics,id("Bf 109 K-4 by Eagle Dynamics")).
skin(bf_109_k_4_by_eagle_dynamics,skins([skins{dir:"./Mods/aircraft/Bf-109K-4/Skins/1",index:1,name:"Bf 109 K-4"}])).
skin(f_86f_sabre_by_belsimtek,dir_root("./Mods/aircraft/F-86")).
skin(f_86f_sabre_by_belsimtek,id("F-86F Sabre by Belsimtek")).
skin(f_86f_sabre_by_belsimtek,skins([skins{dir:"./Mods/aircraft/F-86/Skins/1",index:1,name:"F-86F"}])).
skin(f_14b_by_heatblur_simulations,dir_root("./Mods/aircraft/F14")).
skin(f_14b_by_heatblur_simulations,id("F-14B by Heatblur Simulations")).
skin(f_14b_by_heatblur_simulations,skins([skins{dir:"./Mods/aircraft/F14/Skins",index:1,name:"F-14B"}])).
skin(f_a_18c,dir_root("./Mods/aircraft/FA-18C")).
skin(f_a_18c,id("F/A-18C")).
skin(f_a_18c,skins([skins{dir:"./Mods/aircraft/FA-18C/Skins/1",index:1,name:"F/A-18C"}])).
skin(fw_190_a_8_by_eagle_dynamics,dir_root("./Mods/aircraft/FW-190A8")).
skin(fw_190_a_8_by_eagle_dynamics,id("Fw 190 A-8 by Eagle Dynamics")).
skin(fw_190_a_8_by_eagle_dynamics,skins([skins{dir:"./Mods/aircraft/FW-190A8/Skins/1",index:1,name:"Fw 190 A-8"}])).
skin(fw_190d9_dora_by_eagle_dynamics,dir_root("./Mods/aircraft/FW-190D9")).
skin(fw_190d9_dora_by_eagle_dynamics,id("FW-190D9 Dora by Eagle Dynamics")).
skin(fw_190d9_dora_by_eagle_dynamics,skins([skins{dir:"./Mods/aircraft/FW-190D9/Skins/1",index:1,name:"Fw 190 D-9"}])).
skin(ka_50_black_shark_by_eagle_dynamics,dir_root("./Mods/aircraft/Ka-50")).
skin(ka_50_black_shark_by_eagle_dynamics,id("Ka-50 Black Shark by Eagle Dynamics")).
skin(ka_50_black_shark_by_eagle_dynamics,skins([skins{dir:"./Mods/aircraft/Ka-50/Skins/1",index:1,name:"Ka-50"}])).
skin(m_2000c_by_razbam_sims,dir_root("./Mods/aircraft/M-2000C")).
skin(m_2000c_by_razbam_sims,id("M-2000C by RAZBAM Sims")).
skin(m_2000c_by_razbam_sims,skins([skins{dir:"./Mods/aircraft/M-2000C/Skins/1",index:1,name:"M-2000C"}])).
skin(mi_8mtv2_hip_by_belsimtek,dir_root("./Mods/aircraft/Mi-8MTV2")).
skin(mi_8mtv2_hip_by_belsimtek,id("Mi-8MTV2 Hip by Belsimtek")).
skin(mi_8mtv2_hip_by_belsimtek,skins([skins{dir:"./Mods/aircraft/Mi-8MTV2/Skins/1",index:1,name:"Mi-8MTV2"}])).
skin(p_51d_mustang_by_eagle_dynamics,dir_root("./Mods/aircraft/P-51D")).
skin(p_51d_mustang_by_eagle_dynamics,id("P-51D Mustang by Eagle Dynamics")).
skin(p_51d_mustang_by_eagle_dynamics,skins([skins{dir:"./Mods/aircraft/P-51D/Skins/1",index:1,name:"P-51D"}])).
skin(sa342_gazelle_by_polychop_simulations,dir_root("./Mods/aircraft/SA342")).
skin(sa342_gazelle_by_polychop_simulations,id("SA342 Gazelle by Polychop-Simulations")).
skin(sa342_gazelle_by_polychop_simulations,skins([skins{dir:"./Mods/aircraft/SA342/Skins/1",index:1,name:"SA342"}])).
skin(spitfire_lf_mk_ix_by_eagle_dynamics,dir_root("./Mods/aircraft/SpitfireLFMkIX")).
skin(spitfire_lf_mk_ix_by_eagle_dynamics,id("Spitfire LF Mk. IX by Eagle Dynamics")).
skin(spitfire_lf_mk_ix_by_eagle_dynamics,skins([skins{dir:"./Mods/aircraft/SpitfireLFMkIX/Skins/1",index:1,name:"Spitfire IX"}])).
skin(su_25t_by_eagle_dynamics,dir_root("./Mods/aircraft/Su-25T")).
skin(su_25t_by_eagle_dynamics,id("Su-25T by Eagle Dynamics")).
skin(su_25t_by_eagle_dynamics,skins([skins{dir:"./Mods/aircraft/Su-25T/Theme",index:1,name:"Su-25T"}])).
skin(su_33_flanker_by_eagle_dynamics,dir_root("./Mods/aircraft/Su-33")).
skin(su_33_flanker_by_eagle_dynamics,id("Su-33 Flanker by Eagle Dynamics")).
skin(su_33_flanker_by_eagle_dynamics,skins([skins{dir:"./Mods/aircraft/Su-33/Skins/1",index:1,name:"Su-33"}])).
skin(tf_51d_mustang_by_eagle_dynamics,dir_root("./Mods/aircraft/TF-51D")).
skin(tf_51d_mustang_by_eagle_dynamics,id("TF-51D Mustang by Eagle Dynamics")).
skin(tf_51d_mustang_by_eagle_dynamics,skins([skins{dir:"./Mods/aircraft/TF-51D/Skins/1",index:1,name:"TF-51D"}])).
skin(uh_1h_huey_by_belsimtek,dir_root("./Mods/aircraft/Uh-1H")).
skin(uh_1h_huey_by_belsimtek,id("UH-1H Huey by Belsimtek")).
skin(uh_1h_huey_by_belsimtek,info_wait_screen("Bell, UH-1H Huey, emblems, logos, and body designs are trademarks of Textron Innovations Inc.\nand are used under license by Sky Jet International LLC. ")).
skin(uh_1h_huey_by_belsimtek,skins([skins{dir:"./Mods/aircraft/Uh-1H/Skins/1",index:1,name:"UH-1H"}])).
skin(caucasus,dir_root("./Mods/terrains/Caucasus")).
skin(caucasus,id("Caucasus")).
skin(caucasus,skins([skins{dir:"./Mods/terrains/Caucasus/Theme",index:1,name:"Caucasus"}])).
skin(nevada,dir_root("./Mods/terrains/Nevada")).
skin(nevada,id("Nevada")).
skin(nevada,skins([skins{dir:"./Mods/terrains/Nevada/Theme",index:1,name:"Nevada"}])).
skin(normandy,dir_root("./Mods/terrains/Normandy")).
skin(normandy,id("Normandy")).
skin(normandy,skins([skins{dir:"./Mods/terrains/Normandy/Theme",index:1,name:"Normandy"}])).
skin(persian_gulf,dir_root("./Mods/terrains/PersianGulf")).
skin(persian_gulf,id("PersianGulf")).
skin(persian_gulf,skins([skins{dir:"./Mods/terrains/PersianGulf/Theme",index:1,name:"Persian Gulf"}])).
skin(a_10a_by_eagle_dynamics,dir_root("./DemoMods/aircraft/A-10A")).
skin(a_10a_by_eagle_dynamics,id("A-10A by Eagle Dynamics")).
skin(a_10a_by_eagle_dynamics,skins([])).
skin(ajs37_viggen_by_heatblur_simulations,dir_root("./DemoMods/aircraft/AJS37")).
skin(ajs37_viggen_by_heatblur_simulations,id("AJS37 Viggen by Heatblur Simulations")).
skin(ajs37_viggen_by_heatblur_simulations,skins([])).
skin(c_101_aviojet,dir_root("./DemoMods/aircraft/C-101")).
skin(c_101_aviojet,id("C-101 Aviojet")).
skin(c_101_aviojet,skins([])).
skin(christen_eagle_ii_by_magnitude_3_llc,dir_root("./DemoMods/aircraft/Christen Eagle II")).
skin(christen_eagle_ii_by_magnitude_3_llc,id("Christen Eagle II by Magnitude 3 LLC")).
skin(christen_eagle_ii_by_magnitude_3_llc,skins([])).
skin(f_5e_by_belsimtek,dir_root("./DemoMods/aircraft/F-5E")).
skin(f_5e_by_belsimtek,id("F-5E by Belsimtek")).
skin(f_5e_by_belsimtek,skins([])).
skin(flaming_cliffs_by_eagle_dynamics,dir_root("./DemoMods/aircraft/Flaming Cliffs")).
skin(flaming_cliffs_by_eagle_dynamics,id("Flaming Cliffs by Eagle Dynamics")).
skin(flaming_cliffs_by_eagle_dynamics,skins([])).
skin(i_16_by_octopus_g,dir_root("./DemoMods/aircraft/I-16")).
skin(i_16_by_octopus_g,id("I-16 by OctopusG")).
skin(i_16_by_octopus_g,skins([])).
skin(jf_17_by_deka_ironwork_simulations,dir_root("./DemoMods/aircraft/JF-17")).
skin(jf_17_by_deka_ironwork_simulations,id("JF-17 by Deka Ironwork Simulations")).
skin(jf_17_by_deka_ironwork_simulations,skins([])).
skin(l_39c,dir_root("./DemoMods/aircraft/L-39C")).
skin(l_39c,id("L-39C")).
skin(l_39c,skins([])).
skin(mi_g_15bis_by_belsimtek,dir_root("./DemoMods/aircraft/MiG-15bis")).
skin(mi_g_15bis_by_belsimtek,id("MiG-15bis by Belsimtek")).
skin(mi_g_15bis_by_belsimtek,skins([])).
skin(mi_g_19p_by_razbam,dir_root("./DemoMods/aircraft/MiG-19P")).
skin(mi_g_19p_by_razbam,id("MiG-19P by RAZBAM")).
skin(mi_g_19p_by_razbam,skins([])).
skin(mi_g_21bis_by_magnitude_3_llc,dir_root("./DemoMods/aircraft/MiG-21bis")).
skin(mi_g_21bis_by_magnitude_3_llc,id("MiG-21Bis by Magnitude 3 LLC")).
skin(mi_g_21bis_by_magnitude_3_llc,skins([])).
skin(mi_g_29_fulcrum_by_eagle_dynamics,dir_root("./DemoMods/aircraft/MiG-29")).
skin(mi_g_29_fulcrum_by_eagle_dynamics,id("MiG-29 Fulcrum by Eagle Dynamics")).
skin(mi_g_29_fulcrum_by_eagle_dynamics,skins([])).
skin(su_25a_by_eagle_dynamics,dir_root("./DemoMods/aircraft/Su-25A")).
skin(su_25a_by_eagle_dynamics,id("Su-25A by Eagle Dynamics")).
skin(su_25a_by_eagle_dynamics,skins([])).
skin(yak_52_by_eagle_dynamics,dir_root("./DemoMods/aircraft/Yak-52")).
skin(yak_52_by_eagle_dynamics,id("Yak-52 by Eagle Dynamics")).
skin(yak_52_by_eagle_dynamics,skins([])).

:- multifile dcs:property_of_variant/2.

dcs:property_of_variant(plugin:option(Option, Property), _) :-
    plugin_property(option(Option), Property).
dcs:property_of_variant(plugin:skin(Skin, Property), _) :-
    plugin_property(skin(Skin), Property).
