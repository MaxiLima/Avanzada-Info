parcial1(nico,2).
parcial1(maxi,7).
parcial1(lauti,6).
parcial1(fede,9).
parcial1(john,8).
parcial2(nico,4).
parcial2(maxi,5).
parcial2(lauti,7).
parcial2(fede,7).
parcial2(john,10).
parcial2(pepe,6).
dividir(D,X,Y):-D is X/Y.
sumar(S,X,Y):- S is X+Y.
menor(X,Y):-  X<Y.
mayorigual(X,Y):- X>=Y.
promociono(X,Z):-parcial1(X,N1),parcial2(X,N2),
    mayorigual(N1,7),mayorigual(N2,7),sumar(S,N1,N2),
    dividir(Z,S,2).
cursada(X):-parcial1(X,N1),parcial2(X,N2),mayorigual(N1,4),
    mayorigual(N2,4),not(promociono(X,_)).
    %,(menor(N1,7);menor(N2,7)),sumar(S,N1,N2),
    %dividir(Z,S,2).
reprobo(X):-parcial1(X,_),parcial2(X,_),not(cursada(X)),
    not(promociono(X,_)).
ausente(X):-parcial1(X,_),not(parcial2(X,_)).
ausente(X):-parcial2(X,_),not(parcial1(X,_)).


