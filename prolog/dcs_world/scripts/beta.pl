:- use_module(library(with/output)).
:- use_module(library(swi/dicts)).

:- use_module(library(ed/variants)).
:- use_module(library(ed/atoms)).
:- use_module(library(ed/dicts)).

:- ensure_loaded(library(ed/windows)).
:- ensure_loaded(library(ed/hooks)).

:- public gui/2.

gui(Term0, Term) :- variant_apply(beta, gui(Term0, Term)).

:- public print_term/1.

print_term(Term) :- print_term(Term, [output(current_output)]), write(.), nl.
