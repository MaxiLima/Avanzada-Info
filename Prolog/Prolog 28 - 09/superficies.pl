pais_sup(brasil, 200).
pais_sup(uruguay, 5).
pais_sup(tucuman, 1).
pais_sup(argentina,50).
pais_sup(chile,40).

cartesiano(X, Y):- pais_sup(_, X), pais_sup(_, Y).
seleccion(X, Y):- cartesiano(X, Y), X < Y.
proyeccion_menor(Y):- seleccion(_, Y).
proyeccion_mayor(Y):- seleccion(Y, _).
menor(X,Y):- pais_sup(X, Y), not(proyeccion_menor(Y)).
mayor(X,Y):- pais_sup(X, Y), not(proyeccion_mayor(Y)).
