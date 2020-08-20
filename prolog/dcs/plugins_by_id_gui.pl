:- [library(dcs/scripts/gui)].

:- initialization with_output_to_pl(plugins_by_id, all).

all :- forall(each(Term), write_term(Term)).

each(plugins_by_id(Property, ID)) :-
    gui_apply(gui(pluginsById, Plugins)),
    is_dict(Plugins),
    dict_pairs(Plugins, _, Pairs),
    member(ID0-Plugin, Pairs),
    restyle_identifier(ID0, ID),
    dict_compound(Plugin, Property).
