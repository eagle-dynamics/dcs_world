:- [library(dcs_world/scripts/beta)].

gui_variant(Variant) :- once(variant_property(Variant, gui)).

gui_apply(Apply) :- gui_variant(Variant), variant_apply(Variant, Apply).

gui_property(Property) :-
    gui_variant(Variant),
    variant_property(Variant, Property).
