:- [library(dcs/scripts/server)].

:- initialization with_output_to_pl(config, all).

all :-
    wait_for_server(Variant),
    forall(each(Variant, Term), write_term(Term)).

each(Variant, config(Property, TheatreOfWar)) :-
    variant_apply(Variant, theatre_of_war(TheatreOfWar)),
    variant_property(Variant, terrain:config(Property)).
