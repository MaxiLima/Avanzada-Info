hombre(pedro) .
hombre(manuel) .
hombre(arturo) .
mujer(mar�a).
padre(pedro, manuel).
padre(pedro, arturo).
padre(pedro, mar�a) .

ni�o(X,Y):- padre(Y,X).
hijo(X,Y):- padre(Y,X), hombre(X).
hija(X,Y):- padre(Y,X), mujer(X).
hermano-o-hermana(X,Y):- ni�o(X,Z), ni�o(Y,Z).
hermano(X,Y):- hijo(X,Z), ni�o(Y,Z).
hermana(X,Y):- hija(X,Z), ni�o(Y,Z).

