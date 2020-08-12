:- [library(dcs_world/scripts/gui)].

:- initialization with_output_to_pl(units, all).

all :- forall(each(Term), print_term(Term)).

each(units(Property, Type)) :-
    gui(db:'Units', Units),
    dict_pairs(Units, _, Pairs0),
    member(_-Dict0, Pairs0),
    is_dict(Dict0, _),
    dict_pairs(Dict0, _, Pairs),
    member(_-List, Pairs),
    member(Dict, List),
    is_dict(Dict, _),
    get_dict(type, Dict, Type0),
    restyle_identifier(Type0, Type),
    dict_compound(Dict, Property).
