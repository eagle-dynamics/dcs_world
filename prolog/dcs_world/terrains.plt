:- begin_tests(dcs_world_terrains).

:- use_module(terrains).

test(terrain_property,
     [ set(A==[ caucasus,
                nevada,
                normandy,
                persian_gulf,
                the_channel
              ])
     ]) :- terrain_property(A, defined).
test(terrain_property,
     [ set(A-B==[ caucasus-"Caucasus",
                  nevada-"Nevada",
                  normandy-"Normandy",
                  persian_gulf-"PersianGulf",
                  the_channel-"TheChannel"
                ])
     ]) :- terrain_property(A, id(B)).

test(terrain_config_property,
     [ set(v(A, B, C)==[ v(caucasus, sw, [-600, 0, -560]),
                         v(caucasus, ne, [380, 0, 1130]),
                         v(nevada, sw, [-600, 0, -450]),
                         v(nevada, ne, [0, 0, 225]),
                         v(normandy, sw, [-130, 0, -280]),
                         v(normandy, ne, [220, 0, 190]),
                         v(persian_gulf, sw, [-460, 0, -900]),
                         v(persian_gulf, ne, [800, 0, 800]),
                         v(the_channel, sw, [-130, 0, -115]),
                         v(the_channel, ne, [75, 0, 130])
                       ])
     ]) :- terrain_property(A, config:bound(B, C)).

:- end_tests(dcs_world_terrains).
