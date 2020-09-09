:- module(dcs_world_gateway, []).

:- ensure_loaded(library(dcs_world)).

host('gateway.digitalcombatsimulator.world').

option(Option) :-
    property(Property),
    Option =.. [Property, _],
    once(dcs:property_of_gateway(Option)).

property(method).
property(port).
property(scope).

dcs:property_of_gateway(host(Host)) :- host(Host).
dcs:property_of_gateway(ip(A, B, C, D)) :-
    dcs:property_of_gateway(host(Host)),
    tcp_host_to_address(Host, ip(A, B, C, D)).
dcs:property_of_gateway(method(unicast)).
dcs:property_of_gateway(port(20002)).
dcs:property_of_gateway(scope(dcs_world)).
dcs:property_of_gateway(options(Options)) :-
    findall(Option, option(Option), Options).
