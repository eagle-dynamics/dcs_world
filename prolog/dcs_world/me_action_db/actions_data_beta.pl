:- [library(dcs_world/scripts/beta)].

:- initialization with_output_to_pl(actions_data, all).

all :- forall(each(Term), print_term(Term)).

each(actions_data(Property, TaskID)) :-
    gui(require("me_action_db"):actionsData, List),
    to_dict(List, _, Dict0),
    dict_pairs(Dict0, _, Pairs),
    member(ID-Dict, Pairs),
    restyle_identifier(Dict.displayName, TaskID),
    (   Property =.. [id, ID]
    ;   dict_compound(Dict, Property)
    ),
    (   Property =.. [_, function]
    ->  fail
    ;   true
    ).
