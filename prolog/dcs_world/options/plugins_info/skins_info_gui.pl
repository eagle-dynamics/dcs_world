:- [gui].

:- initialization with_output_to_pl(skins_info, all).

all :- forall(each(Term), print_term(Term)).

each(skins_info(Property, ID)) :-
    plugins_info(getSkinsInfo(), List),
    member(Dict, List),
    get_dict(id, Dict, ID0),
    restyle_identifier(ID0, ID),
    dict_compound(Dict, Property).
