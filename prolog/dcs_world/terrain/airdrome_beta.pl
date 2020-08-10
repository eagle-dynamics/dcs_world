:- [library(dcs_world/beta)].

:- ensure_loaded(library(ed/apps)).
:- ensure_loaded(library(ed/logs)).
:- ensure_loaded(library(ed/windows)).
:- ensure_loaded(library(ed/dispatchers)).

:- ensure_loaded(library(ed/terrains)).
:- ensure_loaded(library(ed/theatres_of_war)).

:- [library(os/apps_debugging)].
:- [library(canny/situations_debugging)].
:- [library(dcs/logs_debugging)].

:- initialization with_output_to_pl(airdrome, all).

all :-
    once(up(Variant)),
    repeat,
    sleep(1),
    variant_property(Variant, server),
    variant_property(Variant, dispatcher:state(3)),
    !,
    forall(each(Variant, Term), print_term(Term)).

each(Variant, airdrome(Property, Airdrome)) :-
    variant_apply(Variant, theatre_of_war(_)),
    variant_property(Variant, terrain:airdrome(Airdrome, Property)).

up(Variant) :-
    variant_property(Variant, defined),
    \+ variant_property(Variant, server),
    variant_apply(Variant, up).
