:- [library(dcs_world/ed)].

:- initialization with_output_to_pl(actions, all).

all :-
    forall(each(Property, RouteAction),
           print_term(me_route_action(Property, RouteAction))).

each(Property, RouteAction) :-
    gui(require("me_route"):actions, Dict),
    dict_pairs(Dict, _, Pairs),
    member(Key-Value, Pairs),
    restyle_identifier(Key, RouteAction),
    dict_compound(Value, Property).
