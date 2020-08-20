:- [library(dcs/scripts/beta)].

:- initialization with_output_to_pl(actions, all).

all :- forall(each(Term), write_term(Term)).

each(actions(Property, RouteAction)) :-
    gui(require("me_route"):actions, Dict),
    dict_pairs(Dict, _, Pairs),
    member(Key-Value, Pairs),
    restyle_identifier(Key, RouteAction),
    dict_compound(Value, Property).
