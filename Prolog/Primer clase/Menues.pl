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

plato_principal(X):- carne(X);pescado(X).

%Punto 1
menu(X,Y,Z):-entrada(X),plato_principal(Y),postre(Z).
menu_sin_flan(X,Y,Z):-entrada(X),plato_principal(Y),postre(Z),dif(Z,flan).
menu_con_consomé(X,Y,Z):-menu(X,Y,Z),X==consomé.

%Punto 2
menu_con_bebida(X,Y,Z,W):-entrada(X),plato_principal(Y),postre(Z),bebida(W).
