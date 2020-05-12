:- module(dcs_world_plugins, [plugin_property/2]).

%!  plugin_property(?Plugin, ?Property) is nondet.
%
%   Property of Plugin.

plugin_property(option(Option), Property) :- of_option(Property, Option).
plugin_property(skin(Skin), Property) :- of_skin(Property, Skin).
plugin_property(plugin(Plugin), Property) :- of_plugin(Property, Plugin).

:- table of_option/2 as shared, of_skin/2 as shared, of_plugin/2 as shared.

:- include(plugins/of_option).
:- include(plugins/of_skin).
:- include(plugins/of_plugin).
