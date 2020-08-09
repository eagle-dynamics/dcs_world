:- [library(dcs_world/beta)].

:- initialization with_output_to_pl(action_id, all).

all :- forall(each(Term), print_term(Term)).

each(action_id(id(ID), Key)) :-
    gui(require("me_action_db"):'ActionId', Dict),
    dict_pairs(Dict, _, Pairs),
    member(Key0-ID, Pairs),
    restyle_identifier(Key0, Key).
