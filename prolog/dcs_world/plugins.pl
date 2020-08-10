:- module(dcs_world_plugins, [plugin_property/2]).

of_plugin(defined, Plugin) :- of_plugin(id(_), Plugin).

:- include(plugins/of_plugin).

%!  plugin_property(?Plugin, ?Property) is nondet.
%
%   Property of Plugin.

plugin_property(Plugin, Property) :- of_plugin(Property, Plugin).
