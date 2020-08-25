:- module(dcs_db_units, []).

:- multifile dcs:property_of_skill/2.

dcs:property_of_skill(db:Property, Skill) :-
    nonvar(Property),
    skills(Property, Skill).

:- include(db/units/skills).
