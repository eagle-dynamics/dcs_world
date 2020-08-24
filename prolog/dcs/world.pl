:- module(dcs_world, []).

:- multifile user:file_search_path/2.

user:file_search_path(dcs, library(dcs)).
user:file_search_path(dcs_world, dcs(world)).

:- multifile dcs:property_of_action_type/2.
:- multifile dcs:property_of_action/2.
:- multifile dcs:property_of_airdrome/2.
:- multifile dcs:property_of_callname/2.
:- multifile dcs:property_of_category/2.
:- multifile dcs:property_of_coalition/2.
:- multifile dcs:property_of_country/2.
:- multifile dcs:property_of_plugin/2.
:- multifile dcs:property_of_point/2.
:- multifile dcs:property_of_route_action/2.
:- multifile dcs:property_of_skill/2.
:- multifile dcs:property_of_stand/2.
:- multifile dcs:property_of_terrain/2.
:- multifile dcs:property_of_theatre_of_war/2.
:- multifile dcs:property_of_type/2.

:- public dcs:property_of_action_type/2.
:- public dcs:property_of_action/2.
:- public dcs:property_of_airdrome/2.
:- public dcs:property_of_callname/2.
:- public dcs:property_of_category/2.
:- public dcs:property_of_coalition/2.
:- public dcs:property_of_country/2.
:- public dcs:property_of_plugin/2.
:- public dcs:property_of_point/2.
:- public dcs:property_of_route_action/2.
:- public dcs:property_of_skill/2.
:- public dcs:property_of_stand/2.
:- public dcs:property_of_terrain/2.
:- public dcs:property_of_theatre_of_war/2.
:- public dcs:property_of_type/2.
