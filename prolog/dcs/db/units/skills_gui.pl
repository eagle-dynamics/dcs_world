:- [library(dcs/scripts/gui)].

:- initialization with_output_to_pl(skills, all).

all :- forall(each(Term), write_term(Term)).

%!  each(-Property:compound) is nondet.
%
%   Skills is a list of  dictionaries   carrying  =name=  and =world_id=
%   properties. This variant property query   only  works for non-server
%   variants, those having loaded  =db=   within  the =gui= environment.
%   Fails otherwise.

each(skills(Property, Skill)) :-
    gui(db:'Units':'Skills', Skills),
    is_list(Skills),
    member(Dict, Skills),
    get_dict('Name', Dict, Name),
    restyle_identifier(Name, Skill),
    dict_compound(Dict, Property).
