man(ivan).
man(pavel).
man(petr).

woman(mariya).
woman(anna).
woman(julia).
woman(elena).

parent(ivan,mariya).
parent(anna,mariya).
parent(anna,elena).
parent(mariya, pavel).
parent(mariya, petr).

sister(elena, mariya).


mate(ivan, anna).
mate(pavel, julia).

father(F,C) :- 
    parent(F,C),
    man(F).

mother(M,C) :-
    parent(M,C),
    woman(M).

grandson(G, C) :-
    parent(G, P),
    parent(P, C).

twoChild(P) :-
    parent(P,C), 
    parent(P,B),
    parent(Q, D),
    parent(Q, V).

aunt(A) :-
    sister(A, mariya),
    parent(mariya, X).


