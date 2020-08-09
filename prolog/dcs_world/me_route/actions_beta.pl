:- [library(dcs_world/beta)].

:- initialization with_output_to_pl(actions, all).

all :- forall(each(Term), print_term(Term)).

each(me_route_action(Property, RouteAction)) :-
    gui(require("me_route"):actions, Dict),
    dict_pairs(Dict, _, Pairs),
    member(Key-Value, Pairs),
    restyle_identifier(Key, RouteAction),
    dict_compound(Value, Property).
