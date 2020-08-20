:- [gui].

:- initialization with_output_to_pl(options_info, all).

all :- forall(each(Term), write_term(Term)).

each(options_info(Property, ID)) :-
    plugins_info(getOptionsInfo(), List),
    member(Dict, List),
    get_dict(id, Dict, ID0),
    restyle_identifier(ID0, ID),
    dict_compound(Dict, Property).
