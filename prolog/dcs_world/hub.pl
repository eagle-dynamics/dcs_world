:- module(dcs_world_hub, [dcs/1]).

:- ensure_loaded(library(dcs_world/gateway)).

:- initialization broadcast_initialize, peer_add.

broadcast_initialize :-
    once(dcs:property_of_gateway(options(Options))),
    udp_broadcast_initialize(ip(127, 0, 0, 1), Options).

peer_add :-
    once(dcs:property_of_gateway(scope(Scope))),
    once(dcs:property_of_gateway(ip(A, B, C, D))),
    udp_peer_add(Scope, ip(A, B, C, D)).

dcs(Term) :-
    once(dcs:property_of_gateway(scope(Scope))),
    broadcast(udp(Scope, Term)).
