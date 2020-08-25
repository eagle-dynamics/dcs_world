:- module(dcs_world_skills, [skill_property/2]).

:- ensure_loaded(library(dcs/world)).
:- ensure_loaded(dcs(world)).
:- ensure_loaded(dcs(db_units)).

%!  skill_property(?Skill, ?Property) is nondet.
%
%   Names and world  identifiers  for  skills.   Property  of  Skill  as
%   follows.
%
%       * defined
%
%       Succeeds if Skill has  a   world_id(WorldID)  property.  Unifies
%       uniquely for Skill.

:- multifile dcs:property_of_skill/2.

skill_property(Skill, Property) :-
    dcs:property_of_skill(defined, Skill),
    dcs:property_of_skill(Property, Skill).

dcs:property_of_skill(defined, Skill) :-
    dcs:property_of_skill(world_id(_), Skill).
dcs:property_of_skill(world_id(WorldID), Skill) :-
    once(dcs:property_of_skill(db:world_id(WorldID), Skill)).
dcs:property_of_skill(name(Name), Skill) :-
    once(dcs:property_of_skill(db:name(Name), Skill)).
