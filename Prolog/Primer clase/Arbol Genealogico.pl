hombre(pedro) .
hombre(manuel) .
hombre(arturo) .
mujer(mar�a).
padre(pedro, manuel).
padre(pedro, arturo).
padre(pedro, mar�a) .

ni�o(X,Y):- padre(Y,X).
hijo(X,Y):- padre(Y,X),not(mujer(X)).
hija(X,Y):- padre(Y,X),not(hombre(X)).

%hija(X,Y),write(X),nl,fail.%
hermano_o_hermana(X,Y):-padre(Z,X),padre(Z,Y),dif(X,Y).
hermano(X,Y):-padre(Z,X),padre(Z,Y),not(mujer(X)),dif(X,Y).
hermana(X,Y):-padre(Z,X),padre(Z,Y),not(hombre(X)),dif(X,Y).
