:- [library(dcs_world/scripts/beta)].

:- ensure_loaded(library(ed/apps)).
:- ensure_loaded(library(ed/logs)).
:- ensure_loaded(library(ed/dispatchers)).

:- ensure_loaded(library(ed/terrains)).
:- ensure_loaded(library(ed/theatres_of_war)).

:- [library(os/apps_debugging)].
:- [library(canny/situations_debugging)].
:- [library(dcs/logs_debugging)].

:- initialization start_up_server(_).

start_up_server(Variant) :- server_is_ready(Variant), !.
start_up_server(Variant) :-
    variant_property(Variant, defined),
    \+ variant_property(Variant, server),
    variant_apply(Variant, up),
    !.

wait_for_server(Variant) :-
    repeat,
    sleep(1),
    server_is_ready(Variant),
    !.

server_is_ready(Variant) :-
    variant_property(Variant, server),
    variant_property(Variant, dispatcher:state(3)).
