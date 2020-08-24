:- module(dcs_db_units, []).

:- include(db/units/skills).

dcs:property_of_skill(unit:Property, Skill) :-
    nonvar(Property),
    skills(Property, Skill).
