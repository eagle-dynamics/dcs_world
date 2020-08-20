:- [library(dcs/scripts/beta)].

:- initialization with_output_to_pl(actions_data, all).

all :- forall(each(Term), write_term(Term)).

each(actions_data(Property, TaskID)) :-
    gui(require("me_action_db"):actionsData, List),
    to_dict(List, _, Dict0),
    dict_pairs(Dict0, _, Pairs),
    member(ID-Dict, Pairs),
    restyle_identifier(Dict.displayName, TaskID),
    (   Property =.. [id, ID]
    ;   get_dict(task, Dict, Task), Property = task:payload(Task)
    ;   dict_compound(Dict, Property)
    ),
    (   Property =.. [_, function]
    ->  fail
    ;   true
    ).
