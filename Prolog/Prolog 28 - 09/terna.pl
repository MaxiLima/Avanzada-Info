numero(1).
numero(2).
numero(3).
numero(5).

terna(X, Y, Z) :- numero(X), numero(Y), numero(Z).
par(X, Y):- numero(X), numero(Y).
seleccion_max(X, Y):- par(X, Y), X < Y.
proyeccion_max(X):- seleccion_max(X, _).
max(X):- numero(X), not(proyeccion_max(X)).

seleccion_min(X, Y):- par(X, Y), X > Y.
proyeccion_min(X):- seleccion_min(X, _).
min(X):- numero(X), not(proyeccion_min(X)).

%modulo(X, Y):- X >= 0, Y is X; X < 0, Y is X*(-1).

modulo(X, Y):- X < 0, Y is -X, !.
modulo(X, X):- X >= 0.
