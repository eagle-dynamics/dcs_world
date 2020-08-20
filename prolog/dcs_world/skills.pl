:- module(dcs_world_skills, [skill_property/2]).

:- multifile dcs:property_of_skill/2.

:- include(library(dcs/db/units/skills)).

skill_property(Skill, Property) :- dcs:property_of_skill(Property, Skill).

dcs:property_of_skill(unit:Property, Skill) :-
    nonvar(Property),
    skills(Property, Skill).
dcs:property_of_skill(defined, Skill) :-
    dcs:property_of_skill(unit:world_id(_), Skill).
dcs:property_of_skill(world_id(WorldID), Skill) :-
    dcs:property_of_skill(unit:world_id(WorldID), Skill).
dcs:property_of_skill(name(Name), Skill) :-
    dcs:property_of_skill(unit:name(Name), Skill).
