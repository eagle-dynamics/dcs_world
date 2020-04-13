:- module(dcs_world_categories, [category_property/2]).

:- multifile dcs:property_of_category/2.

category_property(Category, group:Property) :-
    group(Property, Category).
category_property(Category, Property) :-
    dcs:property_of_category(Property, Category).

group(category(0), airplane).
group(category(1), helicopter).
group(category(2), ground).
group(category(3), ship).
group(category(4), train).
