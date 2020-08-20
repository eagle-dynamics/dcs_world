:- [library(dcs/scripts/server)].

:- ensure_loaded(library(ed/theatres_of_war)).

:- initialization with_output_to_pl(data, all).

all :-
    wait_for_server(Variant),
    forall(each(Variant, Term), write_term(Term)).

each(Variant, data(Property, Name)) :-
    variant_property(Variant, theatre_of_war:data(Name, Data)),
    dict_compound(Data, Property).
