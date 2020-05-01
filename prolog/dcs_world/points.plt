:- begin_tests(dcs_world_points).

:- use_module(points).

test(point_property,
     [   set(v(I, J, K, L)=@=
             [   v(caucasus(A, B), caucasus, A, B),
                 v(nevada(C, D), nevada, C, D),
                 v(normandy(E, F), normandy, E, F),
                 v(persian_gulf(G, H), persian_gulf, G, H)])]) :-
    point_property(I, terrain(J, point(K, L))).
test(point_property,
     [   set(v(M, N, O, P, Q)=@=
             [   v(caucasus(A, B, C), caucasus, A, B, C),
                 v(nevada(D, E, F), nevada, D, E, F),
                 v(normandy(G, H, I), normandy, G, H, I),
                 v(persian_gulf(J, K, L), persian_gulf, J, K, L)])]) :-
    point_property(M, terrain(N, point(O, P, Q))).

:- end_tests(dcs_world_points).
