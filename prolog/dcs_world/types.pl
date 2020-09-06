:- module(dcs_world_types, [type_property/2]).

:- use_module(library(linear/algebra)).

:- use_module(plugins).
:- use_module(categories).

/** <module> Unit types and descriptions
 *
 * ### Non-core types
 *
 * Non-core  types  unify  using   type_property(Type,  plugin(Plugin)),
 * plugin_property(plugin(Plugin), is_core(false)) as follows.   Use  of
 * such  types  trigger  additional  module    requirements  in  mission
 * payloads.
 *
 */

:- multifile dcs:property_of_type/2.

%!  type_property(?Type:atom, ?Property) is nondet.
%
%   Property of Type as follows.
%
%       * defined
%
%       * box(Min:list(number), Max:list(number))
%
%       Bounding  box,  minimum  and  maximum  three-dimensional  vector
%       lists.  Min  is  the  three-dimensional  vector  of  the  lowest
%       bounding-box corner, and Max is  the three-dimensional vector of
%       the highest bounding-box corner.
%
%       * dimensions(Dimensions:list(number))
%
%       Dimension vector of Type using the bounding box.
%
%       * plugin(Plugin)
%
%       Plug-in  of  Type.  Uses  the  type  description  properties  to
%       determine the origin of unit types. Built-in types have an empty
%       string as their origin. Type   description origins match plug-in
%       identifiers.
%
%       Hence, you can discover all core type plug-ins using the
%       following query, type_property(Type, plugin(Plugin)),
%       plugin_property(Plugin, is_core(true)).
%
%   ---+++ unit:Property
%
%   Property of Type unit as follows.
%
%       * defined
%
%       * type(Type0:string)
%
%       Unit "type" and unit:type property  match after translation from
%       string to an underscore-restyled and down-cased identifier. Some
%       unit Type atoms require quoting  (surrounded with single quotes)
%       because they begin with a number, rather than a letter.
%
%   ---+++ desc:Property
%
%   Property of Type description as follows.
%
%       * defined
%
%   ---+++ group:Property
%
%   Property of Type group as follows.
%
%       * category(Category:atom)
%
%   ---+++ polygon:Property
%
%   Property of Type polygon as follows.
%
%       * vertex(X:number, Y:number)
%
%       Unifies     with     all     four      bounding-box     vertices
%       non-deterministically in clockwise winding order: bottom-left to
%       top-left,  top-right  then  bottom-right.    The   description's
%       bounding  box  is  three  dimensional.    Removes  the  vertical
%       dimension, altitude. Important to note that   X  is the northing
%       and Y is the easting.
%
%       * vertices(Vertices:list(compound))
%
%       Vertices unify with the four two-dimensional vectors of the unit
%       type's bounding box. The  vertices   wind  clockwise  from above
%       starting from the port quarter to the starboard quarter.
%
%       * radius(Radius:number)
%
%       Radius of Type, a scalar horizontal distance. A unit type's
%       radius equates to the longest diagonal extent of the type's
%       bounding box relative to its centre such that the radius
%       describes a circle centred on its origin that encompasses the
%       entire model.

type_property(Type, unit:Property) :- unit(Property, Type).
type_property(Type, desc:Property) :- desc(Property, Type).
type_property(Type, Property) :-
    unit(defined, Type),
    dcs:property_of_type(Property, Type).

dcs:property_of_type(defined, Type) :- unit(defined, Type).

dcs:property_of_type(box([X0, Y0, Z0], [X, Y, Z]), Type) :-
    once(type_property(Type, desc:box(min(x(X0))))),
    once(type_property(Type, desc:box(min(y(Y0))))),
    once(type_property(Type, desc:box(min(z(Z0))))),
    once(type_property(Type, desc:box(max(x(X))))),
    once(type_property(Type, desc:box(max(y(Y))))),
    once(type_property(Type, desc:box(max(z(Z))))).

dcs:property_of_type(dimensions(Dimensions), Type) :-
    dcs:property_of_type(box(Min, Max), Type),
    once(vector_scale(-1, Min, Vector)),
    once(vector_translate(Vector, Max, Dimensions)).

dcs:property_of_type(plugin(Plugin), Type) :-
    type_property(Type, desc:origin(Origin)),
    plugin_property(plugin:Plugin, id(Origin)).

unit(defined, Type) :- unit(type(_), Type).

:- include(types/unit).

desc(defined, Type) :- desc(type_name(_), Type).

:- include(types/desc).

dcs:property_of_type(group:Property, Type) :-
    group(Property, Type).

group(category(Category), Type) :-
    desc(category(Category0), Type),
    category_property(Category, group:category(Category0)).

dcs:property_of_type(polygon:Property, Type) :-
    polygon(Property, Type).

polygon(vertex(X, Y), Type) :-
    dcs:property_of_type(box(Min, Max), Type),
    vertex(Min, Max, X, Y).
polygon(vertices(Vertices), Type) :-
    findall(vertex(X, Y), polygon(vertex(X, Y), Type), Vertices).
polygon(radius(Radius), Type) :-
    polygon(vertices(Vertices), Type),
    maplist(distance, Vertices, Distances),
    max_list(Distances, Radius).

vertex([X0, _, Y0], _, X0, Y0).
vertex([X0, _, _], [_, _, Y], X0, Y).
vertex(_, [X, _, Y], X, Y).
vertex([_, _, Y0], [X, _, _], X, Y0).

distance(vertex(X, Y), Distance) :- once(vector_distance([X, Y], Distance)).
