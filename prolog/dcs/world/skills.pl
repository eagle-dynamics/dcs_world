:- module(dcs_world_skills, [skill_property/2]).

:- ensure_loaded(dcs(world)).
:- ensure_loaded(dcs(db_units)).

:- multifile dcs:property_of_skill/2.

skill_property(Skill, Property) :-
    dcs:property_of_skill(defined, Skill),
    dcs:property_of_skill(Property, Skill).

dcs:property_of_skill(defined, Skill) :-
    dcs:property_of_skill(world_id(_), Skill).
dcs:property_of_skill(world_id(WorldID), Skill) :-
    dcs:property_of_skill(unit:world_id(WorldID), Skill).
dcs:property_of_skill(name(Name), Skill) :-
    dcs:property_of_skill(unit:name(Name), Skill).
