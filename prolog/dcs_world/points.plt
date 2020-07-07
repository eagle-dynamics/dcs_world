:- begin_tests(dcs_world_points).

:- use_module(points).

test(point_property,
     [   set(v(K, L, M, N)=@=
             [   v(caucasus(A, B), caucasus, A, B),
                 v(nevada(C, D), nevada, C, D),
                 v(normandy(E, F), normandy, E, F),
                 v(persian_gulf(G, H), persian_gulf, G, H),
                 v(the_channel(I, J), the_channel, I, J)])]) :-
    point_property(K, terrain(L, point(M, N))).
test(point_property,
     [   set(v(P, Q, R, S, T)=@=
             [   v(caucasus(A, B, C), caucasus, A, B, C),
                 v(nevada(D, E, F), nevada, D, E, F),
                 v(normandy(G, H, I), normandy, G, H, I),
                 v(persian_gulf(J, K, L), persian_gulf, J, K, L),
                 v(the_channel(M, N, O), the_channel, M, N, O)])]) :-
    point_property(P, terrain(Q, point(R, S, T))).

:- end_tests(dcs_world_points).
