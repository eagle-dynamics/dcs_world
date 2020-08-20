:- [library(dcs/scripts/server)].

:- initialization with_output_to_pl(stand, all).

all :-
    wait_for_server(Variant),
    forall(each(Variant, Term), write_term(Term)).

each(Variant, stand(Property, Stand)) :-
    variant_apply(Variant, theatre_of_war(_)),
    variant_property(Variant, terrain:stand(Stand, Property)).
