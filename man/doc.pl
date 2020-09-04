:- ensure_loaded(library(pldoc)).
:- use_module(pldoc(doc_html)).

:- initialization doc.

:- multifile user:file_search_path/2.

%   Add the root to the library search path. Otherwise, the
%   documentation builder reports the full path rather than the
%   library-relative path, e.g. library(SubPath). Prefer the latter.
%   Assumes that the current working directory is the *man* folder.

user:file_search_path(library, '../prolog').
user:file_search_path(dcs_world, library(dcs_world)).

%   There appears to be a problem with doc_latex/3. It back-tracks then
%   tries to load the list of input files. Work around the issue by
%   soft-cutting the redundant choice-point.

doc :-
    bagof(File, doc(File), Files),
    findall(Option, option(Option), Options),
    doc_latex(Files, 'doc.tex', Options),
    !.

doc('../README.md').
doc('../CHANGELOG.md').
doc(PL) :-
    directory_member('../prolog', PL, [file_type(prolog), recursive(true)]),
    findall(Option, option(Option), Options),
    doc_file_objects(PL, _File, Objects, FileOptions, Options),
    objects_file_options(Objects, FileOptions).

option(stand_alone(false)).
option(section_level(chapter)).
option(include_reexported(false)).

%   Filter   out   undocumented   Prolog   source     files.   Use   the
%   doc_file_objects/5 predicate. The Objects argument (third) should be
%   a non-empty list of objects, also  the FileOptions (fourth argument)
%   can contain file-level documentation represented   by a file/2 term.
%   Document   either   way:   documented     predicates   exist,   file
%   documentation, or both.

objects_file_options([_|_], _FileOptions) :- !.
objects_file_options(_, FileOptions) :- member(file(_, _), FileOptions).
