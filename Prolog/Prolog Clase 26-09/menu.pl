%clauses

entrada(paella).
entrada(gazpacho).
entrada(consomé).

carne(filete_de_cerdo).
carne(pollo_asado).

pescado(trucha).
pescado(bacalao).

postre(flan).
postre(helado).
postre(pastel).

bebida(vino).
bebida(cerveza).
bebida(agua_mineral).

%fin clauses
%Punto 1.
% a) el_menu_es(X,Y,Z),write(X + Y + Z),nl,fail.
% b) el_menu_es(consomé,Y,Z),write(consomé + Y + Z),nl,fail.
% b.1) el_menu_con_consome(X,Y,Z),write(X + Y + Z),nl,fail.
% c) el_menu_sin_flan(X,Y,Z),write(X + Y + Z),nl,fail.
% c.1) el_menu_es(X,Y,Z),dif(Z,flan),write(X+Y+Z),nl,fail.

%Punto 2.
%Agregar al menu bebidas a eleccion.

el_menu_es(X,Y,Z):-entrada(X),
                   (carne(Y);
                   pescado(Y)),
                   postre(Z).

el_menu_con_bebida(X,Y,Z,W):-el_menu_es(X,Y,Z),
                             bebida(W).

el_menu_sin_flan(X,Y,Z):-el_menu_es(X,Y,Z),dif(Z,flan).
el_menu_con_consome(X,Y,Z):-el_menu_es(X,Y,Z),not(dif(X,consomé)).

