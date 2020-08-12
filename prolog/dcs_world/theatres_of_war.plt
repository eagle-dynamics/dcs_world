:- begin_tests(dcs_world_theatres_of_war).

:- use_module(theatres_of_war).

test(theatre_of_war_property,
     [ all(A==[ caucasus,
                nevada,
                normandy,
                persian_gulf,
                the_channel
              ])
     ]) :- theatre_of_war_property(A, defined).
test(theatre_of_war_property,
     [ all(A-B==[ caucasus-14400,
                  nevada- -28800,
                  normandy-0,
                  persian_gulf-14400,
                  the_channel-0
                ])
     ]) :- theatre_of_war_property(A, utc:offset(B)).

:- end_tests(dcs_world_theatres_of_war).
