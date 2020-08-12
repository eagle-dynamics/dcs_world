:- [library(dcs_world/scripts/beta)].

gui_variant(Variant) :- variant_property(Variant, gui), !.
gui_variant(Variant) :- sleep(1), gui_variant(Variant).

gui_apply(Apply) :- gui_variant(Variant), variant_apply(Variant, Apply).

gui_property(Property) :-
    gui_variant(Variant),
    variant_property(Variant, Property).
