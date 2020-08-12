:- module(dcs_world_plugins, [plugin_property/2]).

:- multifile dcs:property_of_plugin/2.

:- include(plugins_by_id).

%!  plugin_property(?Plugin, ?Property) is nondet.
%
%   Property of Plugin.
%
%       * defined
%
%       This implementation of defined of Plugin highlights an important
%       issue when dealing with  the   soft-cut  approach  for multifile
%       extensions  to  properties.  It  performs   a  recursive  query.
%       Fundamental facts require  a   plugin_property/2  predicate call
%       rather than dcs:property_of_plugin/2 because the latter does not
%       query the fundamental  facts;  instead,  it   only  asks  for  a
%       derivative. This requires that the   invoker know which Property
%       has a fundamental nature, and which has a derived one.
%
%       The upshot? You find all  the   fundamentals  using the ordinary
%       predicate  and  all  the  derived  facts  using  the  multi-file
%       predicate. Same principle applies throughout the DCS World pack.

plugin_property(Plugin, Property) :-
    (   plugins_by_id(Property, Plugin)
    *-> true
    ;   dcs:property_of_plugin(Property, Plugin)
    ).

dcs:property_of_plugin(defined, Plugin) :- plugin_property(Plugin, id(_)).
