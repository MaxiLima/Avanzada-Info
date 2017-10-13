parcial1(ana,7.5).
parcial1(juan,4).
parcial1(agustin,8).
parcial1(ezequiel,8).
parcial1(alexis,0).

parcial2(alexis,10).
parcial2(ana,9).
parcial2(juan,8).
parcial2(agustin,3).
parcial2(ezequiel,8.5).

suma(S,X,Y):-S is X+Y.
division(D,X,Y):-D is X/Y.
promedio(P,X,Y):-P is ((X+Y)/2.00).
promedio2(P,X,Y):-suma(S,X,Y),division(P,S,2.00).

promocionan(NOM,NOTA):-parcial1(NOM,N1),N1>=7,parcial2(NOM,N2),N2>=7,
                       promedio(NOTA,N1,N2).
cursan(NOM):-parcial1(NOM,N1),parcial2(NOM,N2),N1>=4,N2>=4,(N1<7 ; N2 <7).

recursan(NOM):-parcial1(NOM,N1),parcial2(NOM,N2),(N1<4;N2<4).

%el o los promocionados con mayor nota

prod_promo(X,Y,Z,W):-promocionan(X,Y),promocionan(Z,W).
seleccionPromo(X,Y,Z,W):-prod_promo(X,Y,Z,W),Y<W.
proyeccionPromo(X):-seleccionPromo(X,_,_,_).
medalOfHonor(X,Y):-promocionan(X,Y),not(proyeccionPromo(X)).

%VERSION 2

ausente(NOM):-parcial1(NOM,N1),parcial2(NOM,N2),(N1==0;N2==0).
