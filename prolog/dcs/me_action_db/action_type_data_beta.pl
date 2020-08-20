:- [library(dcs/scripts/beta)].

:- initialization with_output_to_pl(action_type_data, all).

all :- forall(each(Term), write_term(Term)).

each(action_type_data(Property, DisplayName)) :-
    gui(require("me_action_db"):actionTypeData, List),
    to_dict(List, _, Dict0),
    dict_pairs(Dict0, _, Pairs),
    member(ID-Dict, Pairs),
    restyle_identifier(Dict.displayName, DisplayName),
    (   Property =.. [id, ID]
    ;   dict_compound(Dict, Property)
    ).
