:- [library(dcs/scripts/gui)].

:- public plugins_info/2.

plugins_info(Term0, Term) :- gui(require("Options.PluginsInfo"):Term0, Term).
