:- [beta].

:- initialization with_output_to_pl(airdrome, all).

all :-
    wait_for_server(Variant),
    forall(each(Variant, Term), print_term(Term)).

each(Variant, airdrome(Property, Airdrome)) :-
    variant_apply(Variant, theatre_of_war(_)),
    variant_property(Variant, terrain:airdrome(Airdrome, Property)).
