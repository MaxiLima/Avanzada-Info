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

menu(X,Y,Z,W):- entrada(X),(carne(Y);pescado(Y)),postre(Z),bebida(W).
menu_consome(X,Y,Z):-entrada(consome),(carne(X);pescado(X)),postre(Y),bebida(Z).
menu_sin_flan(X,Y,Z,W):-entrada(X),(carne(Y);pescado(Y)),postre(Z), dif(Z,flan),bebida(W).
